package com.zcl.demo.common.rabbitmq;

import com.alibaba.fastjson.JSONArray;
import com.zcl.demo.model.email.Email;
import com.zcl.demo.vo.emil.EmailVo;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**

 * @author  zcl

 * @create  2021/7/6 21:04

 * @desc 信件消费者

 **/
@Component
@RabbitListener(queues = "email.k1")
public class EamilConsumer {

    public EmailVo getEmail(String msg){
        EmailVo emailVo = JSONArray.parseObject(msg, EmailVo.class);
        return emailVo;
    }
}
