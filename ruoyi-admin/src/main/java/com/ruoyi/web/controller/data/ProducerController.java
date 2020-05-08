package com.ruoyi.web.controller.data;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.data.domain.Subscribe;
import com.ruoyi.data.service.SubscribeService;
import com.ruoyi.framework.mq.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/mq")
public class ProducerController {
    @Autowired
    private Producer producer;
    @Autowired
    private SubscribeService subscribeService;

    @Log(title = "气象数据", businessType = BusinessType.IMPORT)
    @RequestMapping("/weather/{city}")
    public String test01(@PathVariable String city) {
//        List<String> list = WeatherClient.getWeatherbyCityName(city);
//
        Subscribe subscribe = new Subscribe();
        subscribe.setDataCode("weather");
        List<Subscribe> ls = subscribeService.selectSubscribeList(subscribe);
//        for (Subscribe item : ls) {
//            producer.sendMessage("weather_" +item.getFeedCode(), String.join("\n", list));
//        }
        return "消息已发送队列";
    }

    @Log(title = "车次数据", businessType = BusinessType.IMPORT)
    @RequestMapping("/train/{code}")
    public String test02(@PathVariable String code) {
//        List<TrainDetailInfo> list = TrainClient.getDetailInfoByTrainCode(code);
//        String json = JSON.toJSONString(list);
//
//        Subscribe subscribe = new Subscribe();
//        subscribe.setDataCode("train");
//        List<Subscribe> ls = subscribeService.selectSubscribeList(subscribe);
//        for (Subscribe item : ls) {
//            producer.sendToQueue("train_" +item.getFeedCode(), json);
//        }
        return "消息已发送队列";
    }

//    @RequestMapping("/notify/{msg}")
//    public String test03(@PathVariable String msg) {
//        producer.sendToTopic("notify", msg);
//        return "消息已发送共享队列";
//    }

}
