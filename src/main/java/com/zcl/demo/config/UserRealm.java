package com.zcl.demo.config;

import com.zcl.demo.model.user.User;
import com.zcl.demo.service.log.LogService;
import com.zcl.demo.service.user.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author zcl
 * @create 2020/11/27 21:03
 * @desc 自定义Realm类
 **/
public class UserRealm extends AuthorizingRealm {

    @Autowired
    private LogService logService;

    /**
     * 执行授权逻辑
     *
     * @param
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection org2) {
        System.out.println("执行授权逻辑");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //获取当前用户
        Subject subject = SecurityUtils.getSubject();
        //Principal是在用户登录逻辑获取的
        User user = (User) subject.getPrincipal();
        User dbuser = logService.UserLogCheck(user);
        //获取用户相应权限
       // info.addStringPermission(dbuser.getPerm);
        return info;
    }

    /**
     * 执行认证逻辑
     *
     * @param arg0
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken arg0) throws AuthenticationException {
        System.out.println("执行认证逻辑");

        //判断用户名
        UsernamePasswordToken token = (UsernamePasswordToken) arg0;
        String name = token.getUsername();
        char[] password = token.getPassword();
        String pw = String.valueOf(password);
        User user = new User();
        user.setuName(name);
        user.setPassword(pw);
        User user1 = logService.UserLogCheck(user);
        if (user1 == null) {
            //用户不存在
            return null;
        }
        //判断密码
        return new SimpleAuthenticationInfo(user1, password, "");
    }
}
