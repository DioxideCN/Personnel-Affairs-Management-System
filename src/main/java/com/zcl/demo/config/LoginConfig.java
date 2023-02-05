package com.zcl.demo.config;

import com.zcl.demo.common.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 拦截器配置类
 */
@Configuration
public class LoginConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册TestInterceptor拦截器
        InterceptorRegistration registration = registry.addInterceptor(new LoginInterceptor());
        registration.addPathPatterns("/**");                      //所有路径都被拦截
        registration.excludePathPatterns(                         //添加不拦截路径
                "/login.html",            //登录
                "/login",            //登录
                "/login.form",            //登录事件
                "/logout.html",            //登出
                "/statisNowDayPnum.json",//统计访问量
                "/NoticeController/EmailConsumer.json",
                "/NoticeController/saveEmailProducer.json",
                "/**/*.js",              //js静态资源
                "/**/*.css",             //css静态资源
                "/**/*.png"             //css静态资源
        );
    }
}