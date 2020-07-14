package com.ruoyi.mq.producer;

import com.ruoyi.mq.config.MsgMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsMessagingTemplate;
import org.springframework.stereotype.Component;

@Component
public class Producer {
    @Autowired
    private JmsMessagingTemplate jmsMessagingTemplate;

    public void sendToQueue(String queue, String message) {
        jmsMessagingTemplate.convertAndSend(MsgMode.getActiveMqQueue(queue), message);
    }

    public void sendToTopic(String topic, String message) {
        jmsMessagingTemplate.convertAndSend(MsgMode.getActiveMqTopic(topic), message);
    }
}
