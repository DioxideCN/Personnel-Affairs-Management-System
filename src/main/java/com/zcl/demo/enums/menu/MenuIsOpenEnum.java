package com.zcl.demo.enums.menu;

/**
 * @author zcl
 * @create 2021/4/18 15:01
 * @desc 菜单是否打开枚举类
 **/
public enum MenuIsOpenEnum {

    IS_OPEN_MENU(true,"打开"),
    IS_CLOSE_MENU(false,"关闭");

    private boolean isOpen;
    private String desc;

    MenuIsOpenEnum(boolean isOpen, String desc) {
        this.isOpen = isOpen;
        this.desc = desc;
    }
}
