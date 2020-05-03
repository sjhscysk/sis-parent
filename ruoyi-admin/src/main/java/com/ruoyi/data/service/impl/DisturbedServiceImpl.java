package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.DisturbedMapper;
import com.ruoyi.data.domain.Disturbed;
import com.ruoyi.data.service.DisturbedService;
import com.ruoyi.common.core.text.Convert;

/**
 * 干扰功能Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Service
public class DisturbedServiceImpl implements DisturbedService
{
    @Autowired
    private DisturbedMapper disturbedMapper;

    /**
     * 查询干扰功能
     * 
     * @param id 干扰功能ID
     * @return 干扰功能
     */
    @Override
    public Disturbed selectDisturbedById(Long id)
    {
        return disturbedMapper.selectDisturbedById(id);
    }

    /**
     * 查询干扰功能列表
     * 
     * @param disturbed 干扰功能
     * @return 干扰功能
     */
    @Override
    public List<Disturbed> selectDisturbedList(Disturbed disturbed)
    {
        return disturbedMapper.selectDisturbedList(disturbed);
    }

    /**
     * 新增干扰功能
     * 
     * @param disturbed 干扰功能
     * @return 结果
     */
    @Override
    public int insertDisturbed(Disturbed disturbed)
    {
        return disturbedMapper.insertDisturbed(disturbed);
    }

    /**
     * 修改干扰功能
     * 
     * @param disturbed 干扰功能
     * @return 结果
     */
    @Override
    public int updateDisturbed(Disturbed disturbed)
    {
        return disturbedMapper.updateDisturbed(disturbed);
    }

    /**
     * 删除干扰功能对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteDisturbedByIds(String ids)
    {
        return disturbedMapper.deleteDisturbedByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除干扰功能信息
     * 
     * @param id 干扰功能ID
     * @return 结果
     */
    @Override
    public int deleteDisturbedById(Long id)
    {
        return disturbedMapper.deleteDisturbedById(id);
    }
}
