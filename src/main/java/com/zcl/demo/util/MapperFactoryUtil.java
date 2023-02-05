package com.zcl.demo.util;

import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.DefaultMapperFactory;

/**

 * @author  zcl

 * @create  2021/4/18 14:39

 * @desc 对象拷贝工具类

 **/
public class MapperFactoryUtil {

    public static MapperFactory initMapper(){
        MapperFactory mapperFactory = new DefaultMapperFactory.Builder().build();
        return mapperFactory;
    }
}
