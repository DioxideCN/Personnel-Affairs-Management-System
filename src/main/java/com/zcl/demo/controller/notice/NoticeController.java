package com.zcl.demo.controller.notice;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageInfo;
import com.rabbitmq.client.Channel;
import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.exception.ZfException;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.mq.MqNoticeBack;
import com.zcl.demo.enums.notice.NoteTypeEnum;
import com.zcl.demo.model.email.Email;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.email.EmailService;
import com.zcl.demo.service.notice.NoticeService;
import com.zcl.demo.service.user.UserService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.SessionUtil;
import com.zcl.demo.vo.email.EmailCpVo;
import com.zcl.demo.vo.email.EmailCpVoCopy;
import com.zcl.demo.vo.email.ShowEmailVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author zcl
 * @create 2021/7/3 20:52
 * @desc 内部信控制类
 **/
@Controller
@RequestMapping(value = "/NoticeController")
@Slf4j
public class NoticeController {

    private UserService userService;
    private EmailService emailService;
    private NoticeService noticeService;
    private RabbitTemplate rabbitTemplate;
    private static final String URL = "/notice";


    public NoticeController(UserService userService, EmailService emailService, NoticeService noticeService, RabbitTemplate rabbitTemplate) {
        this.userService = userService;
        this.emailService = emailService;
        this.noticeService = noticeService;
        this.rabbitTemplate = rabbitTemplate;
    }

    /**
     * 跳转消息首页
     *
     * @param
     * @return
     */
    @PointLog(id = "4",value = "站内信")
    @RequestMapping(value = "/showIndex.html", method = RequestMethod.GET)
    public String showIndex() {
        return URL + "/list";
    }

    /**
     * 跳转至发送邮件页面
     *
     * @return
     */
    @RequestMapping(value = "/showSendEmail.html", method = RequestMethod.GET)
    public String showSendEmail(Model model) {
        String userId = (String) SessionUtil.getSessionAttribute("userId");
        List<User> users = userService.queryAllUser();
        model.addAttribute("users", users);
        model.addAttribute("userId", userId);
        return URL + "/sendemail";
    }

    /**
     * 发送信件（生产者）
     *
     * @param emailCpVo
     */
    @RequestMapping(value = "/saveEmailProducer.json", method = RequestMethod.POST)
    @ResponseBody
    public Map sendEmail(EmailCpVo emailCpVo) {
        if(StringUtils.isEmpty(emailCpVo)){
            throw new ZfException("输入内容不能为空");
        }
        //在生产者端生成nid
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        //发送至rabbitmq的交换机“emailExchange”,队列“email.k1"
        emailCpVo.setNId(uuid);
        byte[] bytes = JSON.toJSONString(emailCpVo).getBytes();
        rabbitTemplate.convertAndSend("emailExchange", "email.k1", bytes);
        return CommonResponse.setResponseMsg("发送成功");
    }

    /**
     * 保存信件（消费者）手动确认
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/EmailConsumer.json", method = RequestMethod.POST)
    @RabbitListener(queues = "email.k1")
    @ResponseBody
    public void saveEmail(@Payload String message, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) throws IOException {
        MqNoticeBack mqNoticeBack = new MqNoticeBack();
        EmailCpVo emailCpVo = JSONArray.parseObject(message, EmailCpVo.class);
        EmailCpVoCopy emailCpVoCopy = new EmailCpVoCopy();
        try{
            noticeService.saveNoticeAndEmail(emailCpVo);
            log.info("-----------------------------------手动确认完毕-----------------------");
            mqNoticeBack.setStatus(StatusCode.SUCCESS.getName());
            channel.basicAck(deliveryTag, true); //第二个参数，手动确认可以被批处理，当该参数为 true 时，则可以一次性确认 delivery_tag 小于等于传入值的所有消息
        }catch (Exception e){
            //做失败处理，true为重回队列，false为丢弃,返回头部
            //消息如果拒绝，大概率是异常，多以最好丢弃，做个消息补偿。
            mqNoticeBack.setStatus(StatusCode.FAIL.getName());
            channel.basicNack(deliveryTag,false,false);
        }finally {
            //将处理结果备份
            String mqNid = UUID.randomUUID().toString().replace("-", "");
            String s = DateInFo.dateFomart();
            //mq通知结果表
            mqNoticeBack.setMqNid(mqNid);//主键
            mqNoticeBack.setMqNoteId(emailCpVo.getNId());//
            mqNoticeBack.setHandleTime(s);
            mqNoticeBack.setNoteType(NoteTypeEnum.EMIAL_NOTE.getCode());

            //信件备份表
            emailCpVoCopy.setMqNid(mqNid);//关联mq通知结果表
            emailCpVoCopy.setReciveMan(emailCpVo.getReciveMan());
            emailCpVoCopy.setUserId(emailCpVo.getUserId());
            emailCpVoCopy.setEContent(emailCpVo.getEContent());
            emailCpVoCopy.setETopic(emailCpVo.getETopic());
            emailCpVoCopy.setNId(emailCpVo.getNId());
            noticeService.saveMqNoteBack(mqNoticeBack);
            noticeService.saveEmailCopy(emailCpVoCopy);
        }
    }
    //监听死信队列（TTL+死信队列=消息延迟）
    @RequestMapping(value = "checkDelQueue", method = RequestMethod.POST)
    @RabbitListener(queues = "delqueque")
    public void checkDelQueue(@Payload String message, @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag, Channel channel) throws IOException {
        try{
            EmailCpVo emailCpVo = JSONArray.parseObject(message, EmailCpVo.class);
            //检查nid是否存在于mq通知备份表中
            boolean exist = noticeService.checkNidExist(emailCpVo.getNId());
            if(false==exist){
                //不存在或第一次为消费失败则重新调用生产者
                sendEmail(emailCpVo);
            }
            log.info("-----------------------------------延迟信件消息手动确认完毕-----------------------");
            channel.basicAck(deliveryTag, true); //第二个参数，手动确认可以被批处理，当该参数为 true 时，则可以一次性确认 delivery_tag 小于等于传入值的所有消息
        }catch (Exception e){//做失败处理，true为重回队列，false为丢弃
            //死信队列的消息都没有处理掉就丢失吧，备份表里有记录可以追溯
            e.printStackTrace();
            channel.basicNack(deliveryTag,false,false);
        }
    }


    /**
     * 根据uid查询信件
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/emailList.json", method = RequestMethod.POST)
    @ResponseBody
    public Map queryAllEmailByUid(@RequestParam(required = false, defaultValue = "1") int page,
                                  @RequestParam(required = false) int limit, String isReaded, String sendMan, String reviceTime) {
        List<ShowEmailVo> list = emailService.list(page, limit, isReaded, sendMan, reviceTime);
        // 使用pageInfo包装查询
        PageInfo<ShowEmailVo> emails = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(emails.getList(), emails.getTotal(), StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }

    /**
     * 查询邮件数量
     */
    @RequestMapping(value = "/getNoticeNum.json", method = RequestMethod.GET)
    @ResponseBody
    public Map getNoticeNum() {
        String userId = (String) SessionUtil.getSessionAttribute("userId");
        Integer noticeNum = noticeService.queryNoticeNumByUid(userId);
        return CommonResponse.setResponseData(noticeNum);
    }

    /**
     * 跳转消息详情界面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/emailDetailPage.html", method = RequestMethod.GET)
    public String emailDetailPage(Model model, String eId) {
        if (StringUtils.isEmpty(eId)) {
            throw new ZfException("信件id传输不能为空！");
        }
        //查出信件内容
        Email email = emailService.queryEmailByEid(eId);
        model.addAttribute("email", email);
        //标志位已读
        noticeService.updateNoticeReaded(eId);
        return URL + "/emaildetail";
    }

    /**
     * 全部已读
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/allEmailReaded.json", method = RequestMethod.GET)
    @ResponseBody
    public Map allEmailReaded() {
        noticeService.allEmailReaded();
        return CommonResponse.setResponseMsg("操作成功");
    }

    /**
     * 批量删除邮件
     * @param eId
     * @return
     */
    @RequestMapping(value = "/suchDelete.json",method = RequestMethod.POST)
    @ResponseBody
    public Map suchDelete(@RequestBody String[] eId){
        emailService.suchDelete(eId);
        return CommonResponse.setResponseMsg("操作成功");
    }
}
