package com.ruoyi.framework.mq;

import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import javax.jms.JMSException;
import javax.jms.TextMessage;

@Component
public class Consumer {
    @JmsListener(destination = "mytest.queue", containerFactory = "queueListenerFactory")// 增加对应处理的监听器工程
    public void receiveQueue(TextMessage text) throws Exception {
        System.out.println(Thread.currentThread().getName() + ":Consumer收到的报文为:" + text.getText());
    }

    @JmsListener(destination = "mytest.topic", containerFactory = "topicListenerFactory")// 增加对应处理的监听器工程
    public void receiveTopic(TextMessage text) throws JMSException {
        System.out.println(text.getText());
    }
}
