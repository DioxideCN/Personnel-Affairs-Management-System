package com.zcl.demo.service.email;

import com.zcl.demo.model.email.Email;
import com.zcl.demo.vo.email.EmailSerchVo;
import com.zcl.demo.vo.email.ShowEmailVo;
import com.zcl.demo.vo.emil.EmailVo;

import java.util.List;

/**

 * @author  zcl

 * @create  2021/7/3 21:53

 * @desc 信件service层

 **/
public interface EmailService {
    //保存
    void save(Email email);
    //根据uid查找邮件
    List<Email> queryAllEmailByUid();
    //动态查询邮件
    List<ShowEmailVo> list(int page, int limit, String isReaded, String sendMan, String reviceTime);
    //根据eid查询邮件
    Email queryEmailByEid(String eId);
    //批量删除邮件、消息
    void suchDelete(String[] eId);
}
