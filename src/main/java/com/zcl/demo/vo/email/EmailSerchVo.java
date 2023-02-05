package com.zcl.demo.vo.email;

import lombok.Data;

/**

 * @author  zcl

 * @create  2021/7/4 19:12

 * @desc 搜索框vo类

 **/
@Data
public class EmailSerchVo {
    //是否已读
    private String isReaded;
    //发件人
    private String sendMan;
    //收信时间
    private String reviceTime;
}
