package com.ruoyi.data.service;

import java.util.List;

import com.ruoyi.data.domain.*;

/**
 * 设备Service接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface DeviceService
{
    /**
     * 查询设备
     * 
     * @param id 设备ID
     * @return 设备
     */
    public Device selectDeviceById(Long id);

    /**
     * 查询设备列表
     * 
     * @param device 设备
     * @return 设备集合
     */
    public List<Device> selectDeviceList(Device device);

    /**
     * 新增设备
     * 
     * @param device 设备
     * @return 结果
     */
    public int insertDevice(Device device);

    /**
     * 修改设备
     * 
     * @param device 设备
     * @return 结果
     */
    public int updateDevice(Device device);

    /**
     * 批量删除设备
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDeviceByIds(String ids);

    /**
     * 删除设备信息
     * 
     * @param id 设备ID
     * @return 结果
     */
    public int deleteDeviceById(Long id);

    /**
     * 根据条件分页查询已分配设备列表
     *
     * @param stationId 台站ID
     * @return 设备能力集合信息
     */
    public List<Device> selectAllocatedListOfStation(Long stationId);

    /**
     * 根据条件分页查询已分配设备列表
     *
     * @param equipsysId 系统ID
     * @return 设备能力集合信息
     */
    public List<Device> selectAllocatedListOfEquipsys(Long equipsysId);

    /**
     * 根据条件分页查询未分配设备列表
     *
     * @param relationDeviceVO 台站
     * @return 设备能力集合信息
     */
    public List<Device> selectUnallocatedList(RelationDeviceVO relationDeviceVO);
}
