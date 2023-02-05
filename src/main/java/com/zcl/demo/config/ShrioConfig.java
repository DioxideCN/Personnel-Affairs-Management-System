package com.zcl.demo.config;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author zcl
 * @create 2020/11/27 21:01
 * @desc Shrio配置类
 **/
@Component
public class ShrioConfig {
    /**
     * 创建Shrio
     */
    @Bean
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("SecurityManager") DefaultWebSecurityManager defaultWebSecurityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        //设置安全管理
        shiroFilterFactoryBean.setSecurityManager(defaultWebSecurityManager);
        //添加Shrio内置过滤器
        Map<String, String> map = new LinkedHashMap<>();
        map.put("/login.form","anon");
        map.put("/index.html","anon");//controller的mapping,shrio自带的权限
        //添加授权过滤器
        //map.put("/*","authc");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(map);
        //自定义login页面
        shiroFilterFactoryBean.setLoginUrl("/login.html");
        //自定义未授权页面
       // shiroFilterFactoryBean.setUnauthorizedUrl("/noAuth.html");
        return shiroFilterFactoryBean;
    }

    /**
     * 创建DefaultWebSecurityManager
     */
    @Bean(name = "SecurityManager")
    public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("userRealm") UserRealm userRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(userRealm);
        return securityManager;
    }

    /**
     * 创建Realm
     */
    @Bean(name = "userRealm")
    public UserRealm getRealm() {
        return new UserRealm();
    }
}
