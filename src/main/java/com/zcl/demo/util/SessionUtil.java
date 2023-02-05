package com.zcl.demo.util;


import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * @author zcl
 * @create 2021/3/7 15:56
 * @desc Session工具类
 **/
public class SessionUtil {

    /**
     * 获取request
     */
    public static HttpServletRequest getRequest() {
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return requestAttributes.getRequest() == null ? null : requestAttributes.getRequest();
    }

    /**
     * 获取Session
     * @param userName
     */
    public static HttpSession getSession(String userName) {
        return getRequest().getSession() == null ? null : getRequest().getSession();
    }

    /**
     * 获取Attribute
     */
    public static Object getSessionAttribute(String name) {
        HttpServletRequest request = getRequest();
        Object attribute = request.getSession().getAttribute(name);
        return attribute == null ? null : attribute;
    }

    /**
     * 设置Attribute
     */
    public static boolean setSessionAttribute(String key, String value) {
        boolean flag = false;
        try {
            HttpServletRequest request = getRequest();
            request.getSession().setAttribute(key, value);
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return flag;
        }
    }
}
