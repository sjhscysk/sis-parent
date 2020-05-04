package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Ability;
import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.domain.DeviceAbilityVO;

/**
 * 设备能力Service接口
 * 
 * @author xusisheng
 * @date 2020-05-03
 */
public interface AbilityService
{
    /**
     * 查询设备能力
     * 
     * @param id 设备能力ID
     * @return 设备能力
     */
    public Ability selectAbilityById(Long id);

    /**
     * 查询设备能力列表
     * 
     * @param ability 设备能力
     * @return 设备能力集合
     */
    public List<Ability> selectAbilityList(Ability ability);

    /**
     * 新增设备能力
     * 
     * @param ability 设备能力
     * @return 结果
     */
    public int insertAbility(Ability ability);

    /**
     * 修改设备能力
     * 
     * @param ability 设备能力
     * @return 结果
     */
    public int updateAbility(Ability ability);

    /**
     * 批量删除设备能力
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAbilityByIds(String ids);

    /**
     * 删除设备能力信息
     * 
     * @param id 设备能力ID
     * @return 结果
     */
    public int deleteAbilityById(Long id);

    /**
     * 根据条件分页查询已分配设备能力列表
     *
     * @param deviceId 设备ID
     * @return 设备能力集合信息
     */
    public List<Ability> selectAllocatedList(Long deviceId);

    /**
     * 根据条件分页查询未分配设备能力列表
     *
     * @param deviceAbilityVO 设备能力
     * @return 设备能力集合信息
     */
    public List<Ability> selectUnallocatedList(DeviceAbilityVO deviceAbilityVO);
}
