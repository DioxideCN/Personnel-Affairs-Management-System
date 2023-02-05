package com.zcl.demo.common.aspect;

import com.zcl.demo.common.status.LogStatus;
import com.zcl.demo.model.log.Log;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.log.LogService;
import com.zcl.demo.util.DateInFo;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;

/**
 * @author zcl
 * @create 2020/11/6 22:48
 * @desc 登录日志切面类
 **/
@Aspect
@Component
public class LogInAspect {

    @Autowired
    private LogService logService;
    private Log log;
    private HttpSession httpSession;
    private String userName;

    //切点为loginChek()方法
    @Pointcut("execution(* com.zcl.demo.controller.login.LoginController.loginChek(..))")
    private void pointCut() {
    }

    //前置通知 用来赋值
    @Before("pointCut()")
    public void before(JoinPoint joinPoint) {
        System.out.println("-----------前置通知--------");
        Object[] args = joinPoint.getArgs();

        User user = (User) args[1];
        userName = user.getuName();
        httpSession = (HttpSession) args[2];

        System.out.println("-----------前置通知完--------");
    }

    //环绕通知
    @Around("pointCut()")
    public Object Around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("环绕通知：---------------------");
        //获得方法执行后的返回值
        Object proceed = pjp.proceed();//让目标方法执行
        //判断当前用户登录状态
        Object status1 = httpSession.getAttribute("status");
        if (StringUtils.isEmpty(status1)) {
            return proceed;
        }
        String status = (String) status1;
        if (status.equals("登录")) {
            //获取当前时间
            String date = DateInFo.dateFomart();
            Log log = new Log();
            log.setCreateTime(date);
            log.setUserName(userName);
            log.setAction(LogStatus.LOG_IN.getName());
            logService.addLog(log);
        }
        System.out.println("环绕通知完--------------------");
        return proceed;
    }
}
