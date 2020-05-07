package com.ruoyi.data.service.impl;

import java.util.List;

import com.ruoyi.data.domain.*;
import com.ruoyi.data.service.DeviceAbilityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.DeviceMapper;
import com.ruoyi.data.service.DeviceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 设备Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class DeviceServiceImpl implements DeviceService
{
    @Autowired
    private DeviceMapper deviceMapper;
    @Autowired
    private DeviceAbilityService deviceAbilityService;

    /**
     * 查询设备
     * 
     * @param id 设备ID
     * @return 设备
     */
    @Override
    public Device selectDeviceById(Long id)
    {
        return deviceMapper.selectDeviceById(id);
    }

    /**
     * 查询设备列表
     * 
     * @param device 设备
     * @return 设备
     */
    @Override
    public List<Device> selectDeviceList(Device device)
    {
        return deviceMapper.selectDeviceList(device);
    }

    /**
     * 新增设备
     * 
     * @param device 设备
     * @return 结果
     */
    @Override
    public int insertDevice(Device device)
    {
        return deviceMapper.insertDevice(device);
    }

    /**
     * 修改设备
     * 
     * @param device 设备
     * @return 结果
     */
    @Override
    public int updateDevice(Device device)
    {
        return deviceMapper.updateDevice(device);
    }

    /**
     * 删除设备对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteDeviceByIds(String ids)
    {
        //先删除设备能力，然后再删除设备
        Long[] abilityIds = Convert.toLongArray(ids);
        for (Long abilityId : abilityIds) {
            deviceAbilityService.deleteDeviceAbilityById(abilityId);
        }
        return deviceMapper.deleteDeviceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除设备信息
     * 
     * @param id 设备ID
     * @return 结果
     */
    @Override
    public int deleteDeviceById(Long id)
    {
        //先删除设备能力，然后再删除设备
        deviceAbilityService.deleteDeviceAbilityById(id);
        return deviceMapper.deleteDeviceById(id);
    }

    @Override
    public List<Device> selectAllocatedListOfStation(Long stationId) {
        return deviceMapper.selectAllocatedListOfStation(stationId);
    }

    @Override
    public List<Device> selectAllocatedListOfEquipsys(Long equipsysId) {
        return deviceMapper.selectAllocatedListOfEquipsys(equipsysId);
    }

    @Override
    public List<Device> selectUnallocatedList(RelationDeviceVO relationDeviceVO) {
        return deviceMapper.selectUnallocatedList(relationDeviceVO);
    }
}
