package com.zcl.demo.service.notice.impl;

import com.zcl.demo.common.exception.ZfException;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.dao.email.EmailDao;
import com.zcl.demo.model.mq.MqNoticeBack;
import com.zcl.demo.dao.notice.NoticeDao;
import com.zcl.demo.model.email.Email;
import com.zcl.demo.model.notice.Notice;
import com.zcl.demo.service.notice.NoticeService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.SessionUtil;
import com.zcl.demo.vo.email.EmailCpVo;
import com.zcl.demo.vo.email.EmailCpVoCopy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.UUID;

@Service
@Slf4j
public class NoticeServiceImpl implements NoticeService {
    private NoticeDao noticeDao;
    private EmailDao emailDao;

    public NoticeServiceImpl(NoticeDao noticeDao, EmailDao emailDao) {
        this.noticeDao = noticeDao;
        this.emailDao = emailDao;
    }

    @Override
    public void save(Notice notice) {

    }
    @Override
    @Transactional     //开启事务回滚，信件和消息需要一一对应
    public void saveNoticeAndEmail(EmailCpVo emailVo) {
        try {

            if (StringUtils.isEmpty(emailVo.getETopic())) {
                throw new ZfException("标题不能为空");
            }
            if (StringUtils.isEmpty(emailVo.getReciveMan())) {
                throw new ZfException("收件人不能为空");
            }
            String eTopic = emailVo.getETopic();
            String reciveMan = emailVo.getReciveMan();
            String eContent = emailVo.getEContent();
            String userId = emailVo.getUserId();
            String nId = emailVo.getNId();
            //生成信件uuid
            String eId = UUID.randomUUID().toString().replace("-", "");
            String nowTime = DateInFo.dateFomart();
            //存放消息表
            Notice notice = new Notice();
            notice.setNId(nId);
            notice.setSendMan(userId);
            notice.setReciveMan(reciveMan);
            notice.setIsReaded("0");
            notice.setEId(eId);
            notice.setCreateTime(nowTime);
            noticeDao.save(notice);
            //存放信件内容表
            Email email = new Email();
            email.seteId(eId);
            email.setCreateTime(nowTime);
            email.seteContent(eContent);
            email.seteTopic(eTopic);
            email.setCreateUser(userId);
            emailDao.save(email);
        } catch (Exception e) {
            log.error("监听异常，{}", e);
        }
    }

    @Override
    public Integer queryNoticeNumByUid(String getuId) {
        return noticeDao.queryNoticeNumByUid(getuId);
    }

    @Override
    public void updateNoticeReaded(String eId) {
        noticeDao.updateNoticeReaded(eId);
    }

    @Override
    public void allEmailReaded() {
        String userId = (String) SessionUtil.getSessionAttribute("userId");
        noticeDao.allEmailReaded(userId);
    }

    @Override
    public void saveMqNoteBack(MqNoticeBack mqNoticeBack) {
        noticeDao.saveMqNoteBack(mqNoticeBack);
    }

    @Override
    public void saveEmailCopy(EmailCpVoCopy emailCpVo) {
        noticeDao.saveEmailCopy(emailCpVo);
    }

    @Override
    public boolean checkNidExist(String nId) {
        String nid = noticeDao.checkNidExist(nId);
        if (StringUtils.isEmpty(nid)|| StatusCode.FAIL.getName().equals(nid)) {
            return false;
        }
        return true;
    }


}
