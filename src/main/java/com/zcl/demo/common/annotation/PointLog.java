package com.zcl.demo.common.annotation;

import java.lang.annotation.*;

/**

 * @author  zcl

 * @create  2021/4/11 21:15

 * @desc aop自定义注解

 **/

//表示该注解用于什么地方。默认值为任何元素，表示该注解用于什么地方,参数和方法
//(包 方法)
@Target({ElementType.PACKAGE, ElementType.METHOD})
//定义该注解的生命周期
//(始终不会被丢弃运行期也保留)
@Retention(RetentionPolicy.RUNTIME)
@Documented//表示是否将注解信息添加在java文档中
public @interface PointLog {
    //功能编号
    String id() default "";
    //描述
    String value() default "";
}
