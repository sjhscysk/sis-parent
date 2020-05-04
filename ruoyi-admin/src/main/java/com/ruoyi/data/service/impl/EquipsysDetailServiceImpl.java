package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.EquipsysDetailMapper;
import com.ruoyi.data.domain.EquipsysDetail;
import com.ruoyi.data.service.EquipsysDetailService;
import com.ruoyi.common.core.text.Convert;

/**
 * 装备系统详情Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class EquipsysDetailServiceImpl implements EquipsysDetailService
{
    @Autowired
    private EquipsysDetailMapper equipsysDetailMapper;

    /**
     * 查询装备系统详情
     * 
     * @param id 装备系统详情ID
     * @return 装备系统详情
     */
    @Override
    public EquipsysDetail selectEquipsysDetailById(Long id)
    {
        return equipsysDetailMapper.selectEquipsysDetailById(id);
    }

    /**
     * 查询装备系统详情列表
     * 
     * @param equipsysDetail 装备系统详情
     * @return 装备系统详情
     */
    @Override
    public List<EquipsysDetail> selectEquipsysDetailList(EquipsysDetail equipsysDetail)
    {
        return equipsysDetailMapper.selectEquipsysDetailList(equipsysDetail);
    }

    /**
     * 新增装备系统详情
     * 
     * @param equipsysDetail 装备系统详情
     * @return 结果
     */
    @Override
    public int insertEquipsysDetail(EquipsysDetail equipsysDetail)
    {
        return equipsysDetailMapper.insertEquipsysDetail(equipsysDetail);
    }

    /**
     * 修改装备系统详情
     * 
     * @param equipsysDetail 装备系统详情
     * @return 结果
     */
    @Override
    public int updateEquipsysDetail(EquipsysDetail equipsysDetail)
    {
        return equipsysDetailMapper.updateEquipsysDetail(equipsysDetail);
    }

    /**
     * 删除装备系统详情对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEquipsysDetailByIds(String ids)
    {
        return equipsysDetailMapper.deleteEquipsysDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装备系统详情信息
     * 
     * @param id 装备系统详情ID
     * @return 结果
     */
    @Override
    public int deleteEquipsysDetailById(Long id)
    {
        return equipsysDetailMapper.deleteEquipsysDetailById(id);
    }
}