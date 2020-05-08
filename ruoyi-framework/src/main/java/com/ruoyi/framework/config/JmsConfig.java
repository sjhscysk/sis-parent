package com.ruoyi.framework.config;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.RedeliveryPolicy;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.jms.config.DefaultJmsListenerContainerFactory;
import org.springframework.jms.config.JmsListenerContainerFactory;
import org.springframework.jms.core.JmsTemplate;

import java.util.concurrent.Executors;

/**
 * 查了一些资料, 在整合springboot 有个人说springboot 整合 activeMQ 的时候,
 * 消息的 主题模式 和 队列模式 不能同时存在,
 * topic和queue不能同时使用,
 * springboot 控制使用topic 还是 queue 是通过配置 pub-sub-domain 属性实现的
 * 以下 是 通过配置 pub-sub-domain 的切换来配置出不同模式的listener
 */
@Configuration
@EnableJms
public class JmsConfig {

    @Value("${spring.activemq.broker-url:novalue}")
    private String brokerURL ;

    @Bean
    public RedeliveryPolicy redeliveryPolicy(){
        RedeliveryPolicy  redeliveryPolicy=   new RedeliveryPolicy();
        //是否在每次尝试重新发送失败后,增长这个等待时间
        redeliveryPolicy.setUseExponentialBackOff(true);
        //重发次数,默认为6次   这里设置为10次
        redeliveryPolicy.setMaximumRedeliveries(10);
        //重发时间间隔,默认为1秒
        redeliveryPolicy.setInitialRedeliveryDelay(1);
        //第一次失败后重新发送之前等待500毫秒,第二次失败再等待500 * 2毫秒,这里的2就是value
        redeliveryPolicy.setBackOffMultiplier(2);
        //是否避免消息碰撞
        redeliveryPolicy.setUseCollisionAvoidance(false);
        //设置重发最大拖延时间-1 表示没有拖延只有UseExponentialBackOff(true)为true时生效
        redeliveryPolicy.setMaximumRedeliveryDelay(-1);
        return redeliveryPolicy;
    }

    @Bean
    public ActiveMQConnectionFactory activeMQConnectionFactory(RedeliveryPolicy redeliveryPolicy){
        ActiveMQConnectionFactory activeMQConnectionFactory = new ActiveMQConnectionFactory(brokerURL);
        activeMQConnectionFactory.setRedeliveryPolicy(redeliveryPolicy);
        return new ActiveMQConnectionFactory(brokerURL);
    }
    /**
     * pub-sub-domain=true 是主题模式
     * topic模式的ListenerContainer
     */
    @Bean
    public JmsListenerContainerFactory<?> topicListenerFactory(ActiveMQConnectionFactory activeMQConnectionFactory) {
        DefaultJmsListenerContainerFactory factory = new DefaultJmsListenerContainerFactory();
//        ActiveMQConnectionFactory activeMQConnectionFactor = new ActiveMQConnectionFactory();
        factory.setPubSubDomain(true);
        factory.setSessionTransacted(true);
//        factory.setAutoStartup(true);
        //开启持久化订阅
//        factory.setSubscriptionDurable(true);
//        factory.setClientId("jack");
        factory.setTaskExecutor(Executors.newFixedThreadPool(6));
        factory.setConcurrency("6");
        factory.setConnectionFactory(activeMQConnectionFactory);
        return factory;
    }

    /**
     * pub-sub-domain=false (默认的) 是队列模式topicListenerFactory
     * queue模式的ListenerContainer
     */
    @Bean
    public JmsListenerContainerFactory<?> queueListenerFactory(ActiveMQConnectionFactory activeMQConnectionFactory) {
        DefaultJmsListenerContainerFactory factory = new DefaultJmsListenerContainerFactory();
        factory.setPubSubDomain(false);
        factory.setConnectionFactory(activeMQConnectionFactory);
        return factory;
    }


    @Bean
    public JmsTemplate jmsTemplate(ActiveMQConnectionFactory activeMQConnectionFactory) {
        JmsTemplate jmsTemplate = new JmsTemplate();
        jmsTemplate.setDeliveryMode(2);//进行持久化配置 1表示非持久化，2表示持久化
        jmsTemplate.setDeliveryPersistent(true);
        activeMQConnectionFactory.setTrustAllPackages(true);//使用实体直接入队时配置，字符串入队列，不需要，为了演示将整个实体件入队传输。
        jmsTemplate.setConnectionFactory(activeMQConnectionFactory);
        jmsTemplate.setSessionAcknowledgeMode(1);//客户端签收模式
        return jmsTemplate;
    }

}
