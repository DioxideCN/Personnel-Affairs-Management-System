package com.zcl.demo.util;

import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * 获取当前时间工具类
 * @return
 */
public class DateInFo {

    public static String dateFomart(){
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        String commonTime = time.replaceAll("-", "");
        return commonTime;
    }
}
