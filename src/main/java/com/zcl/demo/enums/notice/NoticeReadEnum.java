package com.zcl.demo.enums.notice;

/**
 * @author zcl
 * @create 2021/7/5 16:03
 * @desc 是否已读枚举类
 **/
public enum NoticeReadEnum {
    NO_READ("0", "未读"),
    READ("1", "已读");
    private String code;
    private String desc;

    NoticeReadEnum(String code, String desc) {
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
