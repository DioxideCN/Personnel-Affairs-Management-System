package com.zcl.demo.common.exception;

/**
 * @author zcl
 * @create 2021/7/4 9:28
 * @desc 错误码枚举类
 **/
public enum ErrorCodeEnum {
    SUCCESS("0", "成功"),
    TIMEOUT("1", "登录超时"),
    SYSERROR("500", "系统异常"),
    NULLERROR("2", "输入不能为空");
    private String code;
    private String desc;

    ErrorCodeEnum(String code, String desc) {
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
