package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.DeviceAbility;
import org.springframework.stereotype.Repository;

/**
 * 设备能力Mapper接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Repository
public interface DeviceAbilityMapper 
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
     * 删除设备能力
     *
     * @param id 设备能力ID
     * @return 结果
     */
    public int deleteDeviceAbilityById(Long id);

    /**
     * 批量删除设备能力
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDeviceAbilityByIds(String[] ids);
    /**
     * 删除设备能力
     * 
     * @param deviceAbility 设备能力
     * @return 结果
     */
    public int deleteDeviceAbility(DeviceAbility deviceAbility);

    /**
     * 批量删除设备能力
     *
     * @param list 设备能力列表
     * @return 结果
     */
    public int batchDeleteDeviceAbility(List<DeviceAbility> list);

    /**
     * 批量新增设备能力
     *
     * @param list 设备能力列表
     * @return 结果
     */
    public int batchInsertDeviceAbility(List<DeviceAbility> list);
}
