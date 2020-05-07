package com.ruoyi.data.service;

import java.util.List;

import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.domain.StationDevice;

/**
 * 台站设备Service接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface StationDeviceService
{
    /**
     * 查询台站设备
     * 
     * @param id 台站设备ID
     * @return 台站设备
     */
    public StationDevice selectStationDeviceById(Long id);

    /**
     * 查询台站设备列表
     * 
     * @param stationDevice 台站设备
     * @return 台站设备集合
     */
    public List<StationDevice> selectStationDeviceList(StationDevice stationDevice);

    /**
     * 新增台站设备
     * 
     * @param stationDevice 台站设备
     * @return 结果
     */
    public int insertStationDevice(StationDevice stationDevice);

    /**
     * 修改台站设备
     * 
     * @param stationDevice 台站设备
     * @return 结果
     */
    public int updateStationDevice(StationDevice stationDevice);

    /**
     * 批量删除台站设备
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStationDeviceByIds(String ids);

    /**
     * 删除台站设备信息
     * 
     * @param id 台站设备ID
     * @return 结果
     */
    public int deleteStationDeviceById(Long id);

    /**
     * 取消台站所有设备
     *
     * @param stationId 台站ID
     * @return 结果
     */
    public int deleteStationDevice(Long stationId);

    /**
     * 取消台站设备
     *
     * @param stationDevice 台站设备
     * @return 结果
     */
    public int deleteStationDevice(StationDevice stationDevice);

    /**
     * 批量取消台站设备
     *
     * @param stationId 台站ID
     * @param deviceIds 设备ID
     * @return 结果
     */
    public int batchDeleteStationDevice(Long stationId, String deviceIds);

    /**
     * 批量新增台站设备
     *
     * @param stationId 台站ID
     * @param deviceIds 设备ID
     * @return 结果
     */
    public int batchInsertStationDevice(Long stationId, String deviceIds);
}
