package com.zcl.demo.model.mq;

import lombok.Data;

import java.io.Serializable;

/**

 * @author  zcl

 * @create  2021/7/11 14:20

 * @desc mq消息备份表

 **/
@Data
public class MqNoticeBack implements Serializable {

    private String mqNid;
    private String mqNoteId;
    private String noteType;
    private String status;
    private String handleTime;

}
