package com.zcl.demo.common.aspect;

import com.zcl.demo.common.status.LogStatus;
import com.zcl.demo.model.log.Log;
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

import javax.servlet.http.HttpSession;

@Aspect
@Component
public class LogOutAspect {
    @Autowired
    private LogService logService;
    private HttpSession httpSession;
    private String userName;
    private String status;

    //定义切点
    @Pointcut("execution(* com.zcl.demo.controller.login.LoginController.logout(..))")
    private void pointCut() {
    }

    //前置通知 用来赋值
    @Before("pointCut()")
    public void before(JoinPoint joinPoint) {
        System.out.println("前置通知-----------------------");
        String className = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] args = joinPoint.getArgs();
        System.out.println("类：" + className);
        System.out.println("方法：" + methodName);
        System.out.println("传入参数：");
        for (int i = 0; i < args.length; i++) {
            System.out.println("参数" + (i + 1) + "：" + args[i]);
        }
        httpSession = (HttpSession) args[0];
        userName = (String) httpSession.getAttribute("userName");
        status = (String) httpSession.getAttribute("status");
        System.out.println("前置通知结束-----------------------");

    }

    //环绕通知
    @Around("pointCut()")
    public Object Around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("环绕通知：---------------------");
        //获得方法执行后的返回值
        Object proceed = pjp.proceed();
        //记录日志
        if (("登录").equals(status)) {
            //获取当前时间
            String date = DateInFo.dateFomart();
            Log log = new Log();
            log.setCreateTime(date);
            log.setUserName(userName);
            log.setAction(LogStatus.LOG_OUT.getName());
            logService.addLog(log);
        }
            httpSession.setMaxInactiveInterval(1);
        return proceed;
    }
}
