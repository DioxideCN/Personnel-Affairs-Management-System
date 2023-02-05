package com.zcl.demo.common.status;

/**
 * @author zcl
 * @create 2020/11/3 21:46
 * @desc 返回状态码维护
 **/
public enum StatusCode {
    SUCCESS("0", "成功"),
    FAIL("1", "失败");

    private String name;
    private String code;

    StatusCode(String name, String code) {
        this.name = name;
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public String getCode() {
        return code;
    }
}
