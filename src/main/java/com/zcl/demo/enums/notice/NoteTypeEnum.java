package com.zcl.demo.enums.notice;
/**

 * @author  zcl

 * @create  2021/7/11 14:43

 * @desc 消息备份表通知类型枚举类

 **/
public enum NoteTypeEnum {
    EMIAL_NOTE("0","信件消息")
    ;
    private String code;
    private String desc;

    NoteTypeEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
