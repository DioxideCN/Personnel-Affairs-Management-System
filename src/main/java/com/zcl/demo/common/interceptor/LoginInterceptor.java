package com.zcl.demo.common.interceptor;

import com.zcl.demo.util.SessionUtil;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Author ZCL
 * @Description  登录拦截器，如果用户session过期或者没有登录，则返回登录页面
 * @Date 17:19 2021/6/2
 **/
@Component
public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri=request.getRequestURI();
        if("/logout.html".equals(uri)){
            response.sendRedirect(request.getContextPath() + "/login.html");
            return false;
        }
        // 获取当前session
        HttpSession session = request.getSession();
        // 根据session获取登录用户
        String userName = (String) SessionUtil.getSessionAttribute("userName");
        // 没登录，重定向到登录页面
        if (StringUtils.isEmpty(userName)) {
            response.sendRedirect(request.getContextPath() + "/login.html");
            return false;
        }
        // 已经登录,放行
        return true;
    }
}
