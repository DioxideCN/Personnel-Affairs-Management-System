package com.zcl.demo.vo.email;

import lombok.Data;

/**

 * @author  zcl

 * @create  2021/7/5 15:43

 * @desc VO层

 **/
@Data
public class ShowEmailVo {
        private String eId;
        private String eTopic;
        private String eUrl;
        private String eContent;
        private String uName;
        //创建时间
        private String createTime;
        //是否已读
        private String isReaded;
}
