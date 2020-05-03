package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.Ability;
import com.ruoyi.data.domain.DeviceAbility;

/**
 * 干扰功能Mapper接口
 * 
 * @author xusisheng
 * @date 2020-05-03
 */
public interface AbilityMapper 
{
    /**
     * 查询干扰功能
     * 
     * @param id 干扰功能ID
     * @return 干扰功能
     */
    public Ability selectAbilityById(Long id);

    /**
     * 查询干扰功能列表
     * 
     * @param ability 干扰功能
     * @return 干扰功能集合
     */
    public List<Ability> selectAbilityList(Ability ability);

    /**
     * 新增干扰功能
     * 
     * @param ability 干扰功能
     * @return 结果
     */
    public int insertAbility(Ability ability);

    /**
     * 修改干扰功能
     * 
     * @param ability 干扰功能
     * @return 结果
     */
    public int updateAbility(Ability ability);

    /**
     * 删除干扰功能
     * 
     * @param id 干扰功能ID
     * @return 结果
     */
    public int deleteAbilityById(Long id);

    /**
     * 批量删除干扰功能
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteAbilityByIds(String[] ids);

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
     * @param deviceId 设备ID
     * @return 设备能力集合信息
     */
    public List<Ability> selectUnallocatedList(Long deviceId);
}
