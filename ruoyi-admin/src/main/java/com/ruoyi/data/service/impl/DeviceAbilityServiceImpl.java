package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.DeviceAbilityMapper;
import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.service.DeviceAbilityService;
import com.ruoyi.common.core.text.Convert;

/**
 * 设备能力Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class DeviceAbilityServiceImpl implements DeviceAbilityService
{
    @Autowired
    private DeviceAbilityMapper deviceAbilityMapper;

    /**
     * 查询设备能力
     * 
     * @param id 设备能力ID
     * @return 设备能力
     */
    @Override
    public DeviceAbility selectDeviceAbilityById(Long id)
    {
        return deviceAbilityMapper.selectDeviceAbilityById(id);
    }

    /**
     * 查询设备能力列表
     * 
     * @param deviceAbility 设备能力
     * @return 设备能力
     */
    @Override
    public List<DeviceAbility> selectDeviceAbilityList(DeviceAbility deviceAbility)
    {
        return deviceAbilityMapper.selectDeviceAbilityList(deviceAbility);
    }

    /**
     * 新增设备能力
     * 
     * @param deviceAbility 设备能力
     * @return 结果
     */
    @Override
    public int insertDeviceAbility(DeviceAbility deviceAbility)
    {
        return deviceAbilityMapper.insertDeviceAbility(deviceAbility);
    }

    /**
     * 修改设备能力
     * 
     * @param deviceAbility 设备能力
     * @return 结果
     */
    @Override
    public int updateDeviceAbility(DeviceAbility deviceAbility)
    {
        return deviceAbilityMapper.updateDeviceAbility(deviceAbility);
    }

    @Override
    public int deleteAbility(Long id) {
        return deviceAbilityMapper.deleteDeviceAbilityById(id);
    }

    @Override
    public int deleteAbilityAll(String[] ids) {
        return deviceAbilityMapper.deleteDeviceAbilityByIds(ids);
    }
}
