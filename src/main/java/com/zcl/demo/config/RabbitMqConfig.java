package com.zcl.demo.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.config.SimpleRabbitListenerContainerFactory;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

/**
 * @author zcl
 * @create 2021/7/5 16:49
 * @desc rabbitmq配置类（主题模式）
 **/
@Configuration
@Slf4j
public class RabbitMqConfig {

    //交换机名称
    public final static String TTL_ENAME = "ttlexchange";//TTL交换机
    public final static String EMAIL_ENAME = "emailExchange";//信件交换机
    public final static String DEL_ENAME = "delExchange";//死信交换机
    //队列名称
    public final static String E_QUEUE = "email.k1";//信件队列
    public final static String E_TTLQUEUE = "ttlqueque";//超时队列
    public final static String E_DELQUEUE = "delqueque";//死信队列
    //绑定键
    public final static String E_RKEY = "email.#";//所有信件接受
    public final static String DEL_RKEY = "email.del";//死信转发key

    //email队列持久化
    @Bean
    public Queue EmailQueue() {
        return new Queue(E_QUEUE, true);
    }

    //ttl队列持久化
    @Bean
    public Queue TTLQueue() {
        Map<String, Object> params = new HashMap<>();
        //队列、消息超时后的配置
        // x-dead-letter-exchange 声明了队列里的死信转发到的DLX名称，
        params.put("x-dead-letter-exchange", DEL_ENAME);
        // x-dead-letter-routing-key 声明了这些死信在转发时携带的 routing-key 名称。
        params.put("x-dead-letter-routing-key", DEL_RKEY);
        //设置超时时间 2分钟，整个队列过期
        //params.put( "x-expires",1000*60*2);
        // 队列中的消息未被消费则2分钟后过期
        params.put("x-message-ttl", 1000*60*1);
//            return new Queue(E_TTLQUEUE,true);
        return new Queue(E_TTLQUEUE, true, false, false, params);
    }

    //DEL队列持久化
    @Bean
    public Queue DELQueue() {
        return new Queue(E_DELQUEUE, true);
    }


    //主题交换机
    @Bean
    TopicExchange exchange() {
        return new TopicExchange(EMAIL_ENAME, true, false);
    }//交换机持久化

    @Bean
        //死信交换机
    TopicExchange DELExchange() {
        return new TopicExchange(DEL_ENAME, true, false);
    }

//    //TTL交换机
//    @Bean
//    TopicExchange TTLExchange() {
//
//        return new TopicExchange(TTL_ENAME, true, false);
//    }


    //死信交换机绑定队列、绑定键
    @Bean
    Binding bindingDELExchangeMessage() {
        return BindingBuilder.bind(DELQueue()).to(DELExchange()).with(DEL_RKEY);
    }

    //信件交换机绑定队列、绑定键
    @Bean
    Binding bindingExchangeMessage() {
        return BindingBuilder.bind(EmailQueue()).to(exchange()).with(E_RKEY);
    }

    //TTL交换机绑定队列、绑定键
    @Bean
    Binding bindingTTLExchangeMessage() {
        return BindingBuilder.bind(TTLQueue()).to(exchange()).with(E_RKEY);
    }

    //生产者确认消息
    @Bean
    public RabbitTemplate createRabbitTemplate(ConnectionFactory connectionFactory) {
        RabbitTemplate rabbitTemplate = new RabbitTemplate();
        rabbitTemplate.setConnectionFactory(connectionFactory);
        //设置开启Mandatory,才能触发回调函数,无论消息推送结果怎么样都强制调用回调函数
        rabbitTemplate.setMandatory(true);

        rabbitTemplate.setConfirmCallback(new RabbitTemplate.ConfirmCallback() {
            @Override
            public void confirm(CorrelationData correlationData, boolean ack, String cause) {
                if (ack == false) {
                    log.error("---------------消息{}发送到交换机失败，报错:{}", correlationData, cause);
                }
                log.info("------------------确认confirm情况:{}，到达交换机成功", correlationData);
            }
        });
        //交换机没有找到queue触发，默认是直接丢弃消息，我们在这里可以进行处理丢弃信息
        rabbitTemplate.setReturnCallback(new RabbitTemplate.ReturnCallback() {
            @Override
            public void returnedMessage(Message message, int replyCode, String replyText, String exchange, String routingKey) {
                System.out.println("ReturnCallback:     " + "消息：" + message);
                System.out.println("ReturnCallback:     " + "回应码：" + replyCode);
                System.out.println("ReturnCallback:     " + "回应信息：" + replyText);
                System.out.println("ReturnCallback:     " + "交换机：" + exchange);
                System.out.println("ReturnCallback:     " + "路由键：" + routingKey);
            }
        });

        return rabbitTemplate;
    }


}
