package com.ruoyi.project.biz.train;

import com.ruoyi.project.biz.train.stub.TrainTimeWebServiceStub;
import com.ruoyi.webservice.gen.TrainDetailInfo;
import org.apache.axiom.om.OMElement;
import org.apache.axis2.AxisFault;
import org.apache.axis2.databinding.utils.BeanUtil;
import org.apache.axis2.engine.DefaultObjectSupplier;

import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TrainClient {

    public static List<TrainDetailInfo> getDetailInfoResults(OMElement element) throws AxisFault {
        if (element == null) {
            return null;
        }
        System.out.println("IN: " + element); // 新增
        Iterator iterator = element.getChildElements();
        Iterator innerItr;
        List<TrainDetailInfo> list = new ArrayList<>();
        OMElement result = null;
        while (iterator.hasNext()) {
            result = (OMElement) iterator.next();
            innerItr = result.getChildElements();
            while (innerItr.hasNext()) {  // 新增
                OMElement elem = (OMElement) innerItr.next();  // 新增
                if (elem.getLocalName().equalsIgnoreCase("TrainDetailInfo")) {
                    TrainDetailInfo trainDetailInfo = (TrainDetailInfo) BeanUtil.processObject(elem, TrainDetailInfo.class, null, true, new DefaultObjectSupplier(), null);
                    list.add(trainDetailInfo);
                }
            } // 新增
        }
        return list;
    }

    public static List<TrainDetailInfo> getDetailInfoByTrainCode(String code) {
        try {
            TrainTimeWebServiceStub stub = new TrainTimeWebServiceStub();
            TrainTimeWebServiceStub.GetDetailInfoByTrainCode trainCode = new TrainTimeWebServiceStub.GetDetailInfoByTrainCode();
            trainCode.setTrainCode(code);
            trainCode.setUserID("");
            TrainTimeWebServiceStub.GetDetailInfoByTrainCodeResponse response = stub.getDetailInfoByTrainCode(trainCode);
            TrainTimeWebServiceStub.GetDetailInfoByTrainCodeResult_type0 result = response.getGetDetailInfoByTrainCodeResult();
            OMElement ome = result.getExtraElement();
            return getDetailInfoResults(ome);

        } catch (AxisFault axisFault) {
            axisFault.printStackTrace();
            return null;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) throws Exception {
        List<TrainDetailInfo> list = getDetailInfoByTrainCode("D101");
        TrainDetailInfo[] array = list.toArray(new TrainDetailInfo[list.size()]);
        System.out.println(array.toString());
//        for(TrainDetailInfo info : list) {
//            System.out.println(info.toString());
//        }
    }
}
