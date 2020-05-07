package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.system.domain.SysUser;

/**
 * 设备能力Service接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface DeviceAbilityService
{
    /**
     * 查询设备能力
     * 
     * @param id 设备能力ID
     * @return 设备能力
     */
    public DeviceAbility selectDeviceAbilityById(Long id);

    /**
     * 查询设备能力列表
     * 
     * @param deviceAbility 设备能力
     * @return 设备能力集合
     */
    public List<DeviceAbility> selectDeviceAbilityList(DeviceAbility deviceAbility);

    /**
     * 新增设备能力
     * 
     * @param deviceAbility 设备能力
     * @return 结果
     */
    public int insertDeviceAbility(DeviceAbility deviceAbility);

    /**
     * 修改设备能力
     * 
     * @param deviceAbility 设备能力
     * @return 结果
     */
    public int updateDeviceAbility(DeviceAbility deviceAbility);

    /**
     * 批量删除设备能力
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDeviceAbilityByIds(String ids);

    /**
     * 删除设备能力信息
     *
     * @param id 设备能力ID
     * @return 结果
     */
    public int deleteDeviceAbilityById(Long id);
    /**
     * 取消设备能力
     *
     * @param deviceAbility 设备能力
     * @return 结果
     */
    public int deleteDeviceAbility(DeviceAbility deviceAbility);

    /**
     * 批量取消设备能力
     *
     * @param deviceId 设备ID
     * @param abilityIds 需要删除的设备能力ID
     * @return 结果
     */
    public int batchDeleteDeviceAbility(Long deviceId, String abilityIds);

    /**
     * 批量新增设备能力
     *
     * @param deviceId 设备ID
     * @param abilityIds 设备能力ID
     * @return 结果
     */
    public int batchInsertDeviceAbility(Long deviceId, String abilityIds);
}
