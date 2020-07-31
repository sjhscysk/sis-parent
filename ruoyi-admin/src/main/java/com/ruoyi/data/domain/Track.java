package com.ruoyi.data.domain;

import java.util.Date;

/**
 * 轨迹点
 * @author afeey
 */
public class Track {
    /**
     * IMEI
     */
    private String imei;

    /**
     * 设备状态信息
     */
    private int deviceInfo;

    /**
     * GPS定位时间(如果设备过期，值为1970-01-01 00:00:00)
     */
    private Date gpsTime;

    /**
     * 系统时间(如果设备过期，值为1970-01-01 00:00:00)
     */
    private Date sysTime;

    /**
     * 心跳时间(如果设备过期，值为1970-01-01 00:00:00)
     */
    private Date heartTime;

    /**
     * 服务器时间(如果设备过期，值为1970-01-01 00:00:00)
     */
    private Date serverTime;

    /**
     * 经度（如果设备过期，值为0）
     */
    private Double lng;

    /**
     * 维度（如果设备过期，值为0）
     */
    private Double lat;

    /**
     * 航向
     * 1.正北方向为0度，顺时针方向增大。最大值360度
     * 2.如果设备过期，值为0
     */
    private float course;

    /**
     * 速度
     * 1.单位:km/h
     * 2.如果设备过期，值为-1，如果设备还未上线值为-9
     */
    private float speed;

    /**
     * 无说明
     */
    private String acc;

    /**
     * 无说明
     */
    private int accSeconds;

    /**
     * 无说明
     */
    private int seconds;

    /**
     * 构造函数
     */
    public Track(){
        Date date = new Date(0);
        this.imei ="";
        this.deviceInfo = 0;
        this.gpsTime = date;
        this.sysTime = date;
        this.heartTime = date;
        this.serverTime = date;
        this.lng = 0d;
        this.lat = 0d;
        this.course = 0;
        this.speed = 0;
        this.acc = "";
        this.accSeconds = 0;
        this.seconds = 0;
    }

    /**
     * 获取IMEI
     * @return IMEI
     */
    public String getImei() {
        return imei;
    }

    /**
     * 设置IMEI
     * @param imei IMEI
     */
    public void setImei(String imei) {
        this.imei = imei;
    }

    /**
     * 获取设备状态
     * @return
     */
    public int getDeviceInfo() {
        return deviceInfo;
    }

    /**
     * 设置设备状态
     * @param deviceInfo 设置设备状态
     */
    public void setDeviceInfo(int deviceInfo) {
        this.deviceInfo = deviceInfo;
    }

    /**
     * 获取Gps定位时间
     * @return 定位时间
     */
    public Date getGpsTime() {
        return gpsTime;
    }

    /**
     * 设置Gps定位时间
     * @param gpsTime 定位时间
     */
    public void setGpsTime(Date gpsTime) {
        this.gpsTime = gpsTime;
    }

    /**
     * 获取系统时间(如果设备过期，值为1970-01-01 00:00:00)
     * @return 系统时间
     */
    public Date getSysTime() {
        return sysTime;
    }

    /**
     * 设置系统时间
     * @param sysTime 系统时间
     */
    public void setSysTime(Date sysTime) {
        this.sysTime = sysTime;
    }

    /**
     * 获取心跳时间(如果设备过期，值为1970-01-01 00:00:00)
     * @return 心跳时间
     */
    public Date getHeartTime() {
        return heartTime;
    }

    /**
     * 设置心跳时间
     * @param heartTime 心跳时间
     */
    public void setHeartTime(Date heartTime) {
        this.heartTime = heartTime;
    }

    /**
     * 获取服务期时间(如果设备过期，值为1970-01-01 00:00:00)
     * @return 获取服务器时间
     */
    public Date getServerTime() {
        return serverTime;
    }

    /**
     * 设置服务器时间(如果设备过期，值为1970-01-01 00:00:00)
     * @param serverTime 服务器时间
     */
    public void setServerTime(Date serverTime) {
        this.serverTime = serverTime;
    }

    /**
     * 获取经度
     * @return 经度
     */
    public Double getLng() {
        return lng;
    }

    /**
     * 设置经度
     * @param lng 经度
     */
    public void setLng(Double lng) {
        this.lng = lng;
    }

    /**
     * 获取维度
     * @return 维度
     */
    public Double getLat() {
        return lat;
    }

    /**
     * 设置维度
     * @param lat 维度
     */
    public void setLat(Double lat) {
        this.lat = lat;
    }

    /**
     * 获取航向
     * @return 航向
     */
    public float getCourse() {
        return course;
    }

    /**
     * 设置航向
     * @param course 航向
     */
    public void setCourse(float course) {
        this.course = course;
    }

    /**
     * 获取速度
     * @return 速度
     */
    public float getSpeed() {
        return speed;
    }

    /**
     * 设置速度
     * @param speed 速度
     */
    public void setSpeed(float speed) {
        this.speed = speed;
    }

    /**
     * 无说明
     * @return
     */
    public String getAcc() {
        return acc;
    }

    /**
     * 无说明
     * @return
     */
    public void setAcc(String acc) {
        this.acc = acc;
    }

    /**
     * 无说明
     * @return
     */
    public int getAccSeconds() {
        return accSeconds;
    }

    /**
     * 无说明
     * @return
     */
    public void setAccSeconds(int accSeconds) {
        this.accSeconds = accSeconds;
    }

    /**
     * 无说明
     * @return
     */
    public int getSeconds() {
        return seconds;
    }

    /**
     * 无说明
     * @return
     */
    public void setSeconds(int seconds) {
        this.seconds = seconds;
    }

}
