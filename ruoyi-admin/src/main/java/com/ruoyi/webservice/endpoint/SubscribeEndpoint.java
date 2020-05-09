package com.ruoyi.webservice.endpoint;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.data.SubscribeConst;
import com.ruoyi.data.domain.Subscribe;
import com.ruoyi.data.service.SubscribeService;
import com.ruoyi.data.utils.WeatherClient;
import com.ruoyi.system.domain.SysDictData;
import com.ruoyi.system.service.ISysDictDataService;
import com.ruoyi.webservice.WsConst;
import com.ruoyi.webservice.gen.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Endpoint
public class SubscribeEndpoint {

    private static final Logger logger = LoggerFactory.getLogger(SubscribeEndpoint.class);

    @Autowired
    private SubscribeService subscribeService;
    @Autowired
    private ISysDictDataService sysDictDataService;

    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "supportDataCategoryRequest")
    @ResponsePayload
    public SupportDataCategoryResponse getSupportDataCategory(@RequestPayload SupportDataCategoryRequest request) {
        SupportDataCategoryResponse response = new SupportDataCategoryResponse();
        response.setCode(0);
        response.setMessage("success");

        DataCategoryArray data = new DataCategoryArray();
        List<DataCategory> list = data.getDataCategory();
        SysDictData sysDictData = new SysDictData();
        sysDictData.setDictType("sub_data_category");
        List<SysDictData> listDict = sysDictDataService.selectDictDataList(sysDictData);
        for(int i = 0; i < listDict.size(); i++) {
            DataCategory info = new DataCategory();
            info.setCode(listDict.get(i).getDictValue());
            info.setName(listDict.get(i).getDictLabel());
            list.add(info);
        }
        response.setData(data);
        return response;
    }

    @Log(title = "订阅管理", businessType = BusinessType.SUBSCRIBE)
    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "subscribeRequest")
    @ResponsePayload
    public SubscribeResponse subscribe(@RequestPayload SubscribeRequest request) {
        SubscribeResponse response = new SubscribeResponse();
        response.setCode(0);
        response.setMessage("success");

        List<Subscribe> listSub = new ArrayList<>();
        List<DataCategory> list = request.getSubscribe().getDataCategory();
        for (int i = 0; i < list.size(); i++) {
            DataCategory item = list.get(i);
            Subscribe subscribe = new Subscribe();
            subscribe.setFeedCode(request.getCode());
            subscribe.setFeedName(request.getName());
            subscribe.setDataCode(item.getCode());
            subscribe.setDataName(item.getName());
            subscribe.setDataCategory(item.getCategory());
            subscribe.setSubStatus(SubscribeConst.SubscribeStatus.SUBSCRIBE);
            if (subscribeService.selectSubscribeList(subscribe).size() > 0) {
                logger.warn("[%s]has subscribe[%s].", subscribe.getFeedCode(), subscribe.getDataCode());
                continue;
            }
            subscribe.setDtSubscribe(new Date());
            listSub.add(subscribe);
        }
        subscribeService.insertBatch(listSub);

        return response;
    }

    @Log(title = "订阅管理", businessType = BusinessType.UNSUBSCRIBE)
    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "unsubscribeRequest")
    @ResponsePayload
    public UnsubscribeResponse unsubscribe(@RequestPayload UnsubscribeRequest request) {
        UnsubscribeResponse response = new UnsubscribeResponse();
        response.setCode(0);
        response.setMessage("success");

        List<Subscribe> listUnsub = new ArrayList<>();
        List<DataCategory> list = request.getSubscribe().getDataCategory();
        for (int i = 0; i < list.size(); i++) {
            DataCategory item = list.get(i);
            Subscribe subscribe = new Subscribe();
            subscribe.setFeedCode(request.getCode());
            subscribe.setDataCode(item.getCode());
            subscribe.setSubStatus(SubscribeConst.SubscribeStatus.UNSUBSCRIBE);
            subscribe.setDtUnsubscribe(new Date());
            listUnsub.add(subscribe);
        }
        subscribeService.updateBatch(listUnsub);
        return response;
    }

    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "getSubscribeListRequest")
    @ResponsePayload
    public GetSubscribeListResponse getSubscribeList(@RequestPayload GetSubscribeListRequest request) {
        GetSubscribeListResponse response = new GetSubscribeListResponse();
        response.setCode(0);
        response.setMessage("success");

        DataCategoryArray data = new DataCategoryArray();
        List<DataCategory> list = data.getDataCategory();

        Subscribe subscribe = new Subscribe();
        subscribe.setFeedCode(request.getCode());
        subscribe.setSubStatus(SubscribeConst.SubscribeStatus.SUBSCRIBE);
        List<Subscribe> listSub = subscribeService.selectSubscribeList(subscribe);
        for (int i = 0; i < listSub.size(); i++) {
            Subscribe item = listSub.get(i);
            DataCategory info = new DataCategory();
            info.setCode(item.getDataCode());
            info.setName(item.getDataName());
            info.setCategory(item.getDataCategory());
            list.add(info);
        }
        response.setData(data);
        return response;
    }

    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "getWeatherbyCityNameRequest")
    @ResponsePayload
    public GetWeatherbyCityNameResponse getWeatherbyCityName(@RequestPayload GetWeatherbyCityNameRequest request) {
        GetWeatherbyCityNameResponse response = new GetWeatherbyCityNameResponse();
        response.setCode(0);
        response.setMessage("success");

        ArrayOfString arrayOfString = new ArrayOfString();
        List<String> list = arrayOfString.getString();
        list.addAll(WeatherClient.getWeatherbyCityName(request.getTheCityName()));
        response.setGetWeatherbyCityNameResult(arrayOfString);
        return response;
    }

//    @PayloadRoot(namespace = WsConst.NAMESPACE_URI, localPart = "getDetailInfoByTrainCodeRequest")
//    @ResponsePayload
//    public GetDetailInfoByTrainCodeResponse getDetailInfoByTrainCode(@RequestPayload GetDetailInfoByTrainCodeRequest request) {
//        GetDetailInfoByTrainCodeResponse response = new GetDetailInfoByTrainCodeResponse();
//        response.setCode(0);
//        response.setMessage("success");
//
//        TrainDetailInfoArray array = new TrainDetailInfoArray();
//        List<TrainDetailInfo> list = TrainClient.getDetailInfoByTrainCode(request.getTrainCode());
//        array.getTrainDetailInfo().addAll(list);
//        response.setData(array);
//        return response;
//    }
}
