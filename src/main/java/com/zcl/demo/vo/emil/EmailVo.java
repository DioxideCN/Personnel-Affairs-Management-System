package com.zcl.demo.vo.emil;

import lombok.Data;

/**

 * @author  zcl

 * @create  2021/7/3 21:43

 * @desc 信件VO层

 **/
@Data
public class EmailVo {
    //发件人
    private String userId;
    //收件人
    private String reciveMan;
    //信件标题
    private String eTopic;
    //信件正文
    private String eContent;
}
