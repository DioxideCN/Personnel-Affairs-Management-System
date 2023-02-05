package com.zcl.demo.common.status;

import org.springframework.util.StringUtils;

/**

 * @author  zcl

 * @create  2021/7/10 10:28

 * @desc 系统功能枚举

 **/
public enum LogStatus {
    LOG_IN("0","登录"),
    LOG_OUT("1","注销"),
    LOG_MANAGER("2","日志管理"),
    ROLE_MANAGER("3","角色管理"),
    EMAIL_MANAGER("4","站内信"),
    USER_MANAGER("5","用户管理"),
    MENU_MANAGER("6","菜单管理"),
    PRODUCT_LIST("7","商品列表"),
    PRODUCT_ECHARS("8","商品透视图"),
    SALE_DETAIL("9","商品销售详情"),
    PRODUCE_DETAIL("10","商品生产详情");

    private String code;
    private String name;


    LogStatus(String code, String name) {
        this.code = code;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getCode() {
        return code;
    }

    //根据code获取name
    public static String getNameByCode(String code){
        if(StringUtils.isEmpty(code)){
            return null;
        }
        for (LogStatus logStatus:
             LogStatus.values()) {
            if(logStatus.getCode().equals(code)){
                return logStatus.getName();
            }
        }
        return null;
    }
}
