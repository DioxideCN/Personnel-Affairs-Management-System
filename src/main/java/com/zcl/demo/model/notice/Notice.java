package com.zcl.demo.model.notice;

import lombok.Data;

/**
 * @author zcl
 * @create 2021/7/3 21:38
 * @desc 消息实体类
 **/
@Data
public class Notice {
    private String nId;
    private String sendMan;
    private String reciveMan;
    private String eId;
    private String isReaded;
    private String createTime;

}
