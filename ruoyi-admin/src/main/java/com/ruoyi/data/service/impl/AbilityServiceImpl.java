package com.ruoyi.data.service.impl;

import java.util.List;

import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.domain.DeviceAbilityVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.AbilityMapper;
import com.ruoyi.data.domain.Ability;
import com.ruoyi.data.service.AbilityService;
import com.ruoyi.common.core.text.Convert;

/**
 * 设备能力Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-05-03
 */
@Service
public class AbilityServiceImpl implements AbilityService
{
    @Autowired
    private AbilityMapper abilityMapper;

    /**
     * 查询设备能力
     * 
     * @param id 设备能力ID
     * @return 设备能力
     */
    @Override
    public Ability selectAbilityById(Long id)
    {
        return abilityMapper.selectAbilityById(id);
    }

    /**
     * 查询设备能力列表
     * 
     * @param ability 设备能力
     * @return 设备能力
     */
    @Override
    public List<Ability> selectAbilityList(Ability ability)
    {
        return abilityMapper.selectAbilityList(ability);
    }

    /**
     * 新增设备能力
     * 
     * @param ability 设备能力
     * @return 结果
     */
    @Override
    public int insertAbility(Ability ability)
    {
        return abilityMapper.insertAbility(ability);
    }

    /**
     * 修改设备能力
     * 
     * @param ability 设备能力
     * @return 结果
     */
    @Override
    public int updateAbility(Ability ability)
    {
        return abilityMapper.updateAbility(ability);
    }

    /**
     * 删除设备能力对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteAbilityByIds(String ids)
    {
        return abilityMapper.deleteAbilityByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除设备能力信息
     * 
     * @param id 设备能力ID
     * @return 结果
     */
    @Override
    public int deleteAbilityById(Long id)
    {
        return abilityMapper.deleteAbilityById(id);
    }

    @Override
    public List<Ability> selectAllocatedList(Long deviceId) {
//        return abilityMapper.selectAllocatedList(deviceAbility.getDeviceId());
        return abilityMapper.selectAllocatedList(deviceId);
    }

    @Override
    public List<Ability> selectUnallocatedList(DeviceAbilityVO deviceAbilityVO) {
//        return abilityMapper.selectUnallocatedList(deviceAbility.getDeviceId());
        return abilityMapper.selectUnallocatedList(deviceAbilityVO);
    }
}
