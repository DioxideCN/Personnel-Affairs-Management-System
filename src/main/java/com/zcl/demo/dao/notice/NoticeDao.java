package com.zcl.demo.dao.notice;

import com.zcl.demo.model.mq.MqNoticeBack;
import com.zcl.demo.model.notice.Notice;
import com.zcl.demo.vo.email.EmailCpVoCopy;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

/**
 * @author zcl
 * @create 2021/7/3 21:37
 * @desc 消息通知
 **/
@Component
public interface NoticeDao {

    void save(Notice notice);

    Integer queryNoticeNumByUid(String getuId);

    //更改消息为已读
    void updateNoticeReaded(String eId);

    //全部已读
    void allEmailReaded(String userId);

    //批量删除消息
    void suchDelete(@Param("eId") String[] eId);

    //保存至消息备份表
    void saveMqNoteBack(MqNoticeBack mqNoticeBack);
    //备份emailvo，可追溯
    void saveEmailCopy(EmailCpVoCopy emailCpVo);
    //检查Nid是否在消息备份表中存在
    String checkNidExist(String nId);
}
