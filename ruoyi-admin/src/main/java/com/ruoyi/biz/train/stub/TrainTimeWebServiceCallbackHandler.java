/**
 * TrainTimeWebServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.7.9  Built on : Nov 16, 2018 (12:05:37 GMT)
 */
package com.ruoyi.biz.train.stub;


/**
 *  TrainTimeWebServiceCallbackHandler Callback class, Users can extend this class and implement
 *  their own receiveResult and receiveError methods.
 */
public abstract class TrainTimeWebServiceCallbackHandler {
    protected Object clientData;

    /**
     * User can pass in any object that needs to be accessed once the NonBlocking
     * Web service call is finished and appropriate method of this CallBack is called.
     * @param clientData Object mechanism by which the user can pass in user data
     * that will be avilable at the time this callback is called.
     */
    public TrainTimeWebServiceCallbackHandler(Object clientData) {
        this.clientData = clientData;
    }

    /**
     * Please use this constructor if you don't want to set any clientData
     */
    public TrainTimeWebServiceCallbackHandler() {
        this.clientData = null;
    }

    /**
     * Get the client data
     */
    public Object getClientData() {
        return clientData;
    }

    /**
     * auto generated Axis2 call back method for getStationAndTimeDataSetByLikeTrainCode method
     * override this method for handling normal response from getStationAndTimeDataSetByLikeTrainCode operation
     */
    public void receiveResultgetStationAndTimeDataSetByLikeTrainCode(
        TrainTimeWebServiceStub.GetStationAndTimeDataSetByLikeTrainCodeResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationAndTimeDataSetByLikeTrainCode operation
     */
    public void receiveErrorgetStationAndTimeDataSetByLikeTrainCode(
        java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getStationName method
     * override this method for handling normal response from getStationName operation
     */
    public void receiveResultgetStationName(
        TrainTimeWebServiceStub.GetStationNameResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationName operation
     */
    public void receiveErrorgetStationName(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getDetailInfoByTrainCode method
     * override this method for handling normal response from getDetailInfoByTrainCode operation
     */
    public void receiveResultgetDetailInfoByTrainCode(
        TrainTimeWebServiceStub.GetDetailInfoByTrainCodeResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getDetailInfoByTrainCode operation
     */
    public void receiveErrorgetDetailInfoByTrainCode(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getVersionTime method
     * override this method for handling normal response from getVersionTime operation
     */
    public void receiveResultgetVersionTime(
        TrainTimeWebServiceStub.GetVersionTimeResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getVersionTime operation
     */
    public void receiveErrorgetVersionTime(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getStationAndTimeByStationName method
     * override this method for handling normal response from getStationAndTimeByStationName operation
     */
    public void receiveResultgetStationAndTimeByStationName(
        TrainTimeWebServiceStub.GetStationAndTimeByStationNameResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationAndTimeByStationName operation
     */
    public void receiveErrorgetStationAndTimeByStationName(
        java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getStationNameDataSet method
     * override this method for handling normal response from getStationNameDataSet operation
     */
    public void receiveResultgetStationNameDataSet(
        TrainTimeWebServiceStub.GetStationNameDataSetResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationNameDataSet operation
     */
    public void receiveErrorgetStationNameDataSet(java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getStationAndTimeDataSetByTrainCode method
     * override this method for handling normal response from getStationAndTimeDataSetByTrainCode operation
     */
    public void receiveResultgetStationAndTimeDataSetByTrainCode(
        TrainTimeWebServiceStub.GetStationAndTimeDataSetByTrainCodeResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationAndTimeDataSetByTrainCode operation
     */
    public void receiveErrorgetStationAndTimeDataSetByTrainCode(
        java.lang.Exception e) {
    }

    /**
     * auto generated Axis2 call back method for getStationAndTimeByTrainCode method
     * override this method for handling normal response from getStationAndTimeByTrainCode operation
     */
    public void receiveResultgetStationAndTimeByTrainCode(
        TrainTimeWebServiceStub.GetStationAndTimeByTrainCodeResponse result) {
    }

    /**
     * auto generated Axis2 Error handler
     * override this method for handling error response from getStationAndTimeByTrainCode operation
     */
    public void receiveErrorgetStationAndTimeByTrainCode(java.lang.Exception e) {
    }
}
