package com.zcl.demo.service.notice;

import com.zcl.demo.model.mq.MqNoticeBack;
import com.zcl.demo.model.notice.Notice;
import com.zcl.demo.vo.email.EmailCpVo;
import com.zcl.demo.vo.email.EmailCpVoCopy;

/**

 * @author  zcl

 * @create  2021/7/3 21:53

 * @desc 消息通知层

 **/
public interface NoticeService {
    void save(Notice notice);

    /**
     * 保存至notice和email
     * @param
     */
    void saveNoticeAndEmail(EmailCpVo emailCpVo);

    Integer queryNoticeNumByUid(String getuId);

    /**
     * 更改消息为已读
     * @param eId
     */
    void updateNoticeReaded(String eId);

    /**
     * 所有消息为已读
     */
    void allEmailReaded();

    /**
     * 保存信息到消息备份表中
     * @param mqNoticeBack
     */
    void saveMqNoteBack(MqNoticeBack mqNoticeBack);

    /**
     * 备份邮件VO
     * @param emailCpVo
     */
    void saveEmailCopy(EmailCpVoCopy emailCpVo);

    /**
     * 检查该消息在消息备份表中是否存在
     * @param nId
     * @return
     */
    boolean checkNidExist(String nId);
}
