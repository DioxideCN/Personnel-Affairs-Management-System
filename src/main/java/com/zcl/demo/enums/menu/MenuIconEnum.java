package com.zcl.demo.enums.menu;

import org.springframework.util.StringUtils;

/**
 * @author zcl
 * @create 2021/5/23 20:35
 * @desc icon枚举类
 **/
public enum MenuIconEnum {
    HOME_ICON("0", "../../static/img/home.png"),
    ANTH_ICON("1", "../../static/img/anthority.png"),
    BASICS_ICON("2", "../../static/img/basics.png"),
    LOG_ICON("3", "../../static/img/log.png"),
    MENU_ICON("4", "../../static/img/menu.png"),
    ROLE_ICON("5", "../../static/img/role.png"),
    USER_ICON("6", "../../static/img/user.png");


    private String type;
    private String path;

    MenuIconEnum(String type, String path) {
        this.type = type;
        this.path = path;
    }

    public String getType() {
        return type;
    }

    public String getPath() {
        return path;
    }

    //根据type获取enum
    public static MenuIconEnum getEnumByType(String type) {
        if (StringUtils.isEmpty(type)) {
            return null;
        }
        for (MenuIconEnum m :
                MenuIconEnum.values()) {
            if (m.getType().equals(type)) {
                return m;
            }
        }
        return null;
    }
}
