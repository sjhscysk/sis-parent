package com.ruoyi;

import com.ruoyi.framework.mq.Producer;
import org.apache.activemq.command.ActiveMQQueue;
import org.apache.activemq.command.ActiveMQTopic;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.test.context.junit4.SpringRunner;

import javax.jms.Destination;

@RunWith(SpringRunner.class)
@SpringBootTest
@EnableAsync  //开启对Async的支持,否则异步任务不启作用

public class RuoYiApplicationTest {

    @Autowired
    private Producer producer;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void contextLoads() throws InterruptedException {
        while(true){
            Destination destination = new ActiveMQQueue("mytest.queue");
            Destination topic = new ActiveMQTopic("mytest.topic");

            for(int i=0; i<100; i++){
                producer.sendMessage(destination, "myname is chhliu!!!"+i);
                producer.sendMessage(topic, "i'm the king of the world!");
            }
        }
    }
}
