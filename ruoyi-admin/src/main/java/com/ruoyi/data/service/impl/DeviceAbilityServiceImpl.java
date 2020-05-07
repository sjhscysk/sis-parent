package com.ruoyi.data.service.impl;

import java.util.ArrayList;
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
    /**
     * 删除设备能力对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteDeviceAbilityByIds(String ids)
    {
        return deviceAbilityMapper.deleteDeviceAbilityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除设备能力信息
     *
     * @param id 设备能力ID
     * @return 结果
     */
    @Override
    public int deleteDeviceAbilityById(Long id)
    {
        return deviceAbilityMapper.deleteDeviceAbilityById(id);
    }

    @Override
    public int deleteDeviceAbility(DeviceAbility deviceAbility) {
        return deviceAbilityMapper.deleteDeviceAbility(deviceAbility);
    }

    private List<DeviceAbility> getList(Long deviceId, String abilityIds) {
        Long[] abilities = Convert.toLongArray(abilityIds);
        List<DeviceAbility> list = new ArrayList<>();
        for (Long abilityId : abilities) {
            DeviceAbility deviceAbility = new DeviceAbility();
            deviceAbility.setDeviceId(deviceId);
            deviceAbility.setAbilityId(abilityId);
            list.add(deviceAbility);
        }
        return list;
    }

    @Override
    public int batchDeleteDeviceAbility(Long deviceId, String abilityIds) {
        return deviceAbilityMapper.batchDeleteDeviceAbility(getList(deviceId, abilityIds));
    }

    @Override
    public int batchInsertDeviceAbility(Long deviceId, String abilityIds) {
        return deviceAbilityMapper.batchInsertDeviceAbility(getList(deviceId, abilityIds));
    }
}
