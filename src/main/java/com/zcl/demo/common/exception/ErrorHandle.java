package com.zcl.demo.common.exception;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/7/4 10:17

 * @desc 全局异常拦截器

 **/
@ControllerAdvice
@Slf4j
public class ErrorHandle {

    private static Logger LOGGER = LoggerFactory.getLogger(ErrorHandle.class);
    /* 全局捕获异常 */
    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public Map globalHandler(Exception e) {
        Map map = new HashMap();
        map.put("code", ErrorCodeEnum.SYSERROR.getCode());
        map.put("status", false);
        map.put("msg", "操作失败，请联系系统管理员");
        LOGGER.error("异常：【{}】", e);
        return map;
    }

    /* 自定义捕获异常 返回的是页面 */
    @ExceptionHandler(value = ZfException.class)
    @ResponseBody
    public Map localPageHandler(ZfException e) {
        Map map = new HashMap();
        map.put("code", ErrorCodeEnum.NULLERROR.getCode());
        map.put("msg", e.getMsg());
        map.put("status", false);
        LOGGER.error("异常：【{}】", e);
        return map;
    }

}
