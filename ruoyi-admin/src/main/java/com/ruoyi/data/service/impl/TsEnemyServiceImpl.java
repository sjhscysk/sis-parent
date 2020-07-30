package com.ruoyi.data.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.TsEnemyMapper;
import com.ruoyi.data.domain.TsEnemy;
import com.ruoyi.data.service.TsEnemyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 实时敌情Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
@Service
public class TsEnemyServiceImpl implements TsEnemyService
{
    @Autowired
    private TsEnemyMapper tsEnemyMapper;

    /**
     * 查询实时敌情
     * 
     * @param id 实时敌情ID
     * @return 实时敌情
     */
    @Override
    public TsEnemy selectTsEnemyById(Long id)
    {
        return tsEnemyMapper.selectTsEnemyById(id);
    }

    /**
     * 查询实时敌情列表
     * 
     * @param tsEnemy 实时敌情
     * @return 实时敌情
     */
    @Override
    public List<TsEnemy> selectTsEnemyList(TsEnemy tsEnemy)
    {
        return tsEnemyMapper.selectTsEnemyList(tsEnemy);
    }

    /**
     * 新增实时敌情
     * 
     * @param tsEnemy 实时敌情
     * @return 结果
     */
    @Override
    public int insertTsEnemy(TsEnemy tsEnemy)
    {
        tsEnemy.setCreateTime(DateUtils.getNowDate());
        return tsEnemyMapper.insertTsEnemy(tsEnemy);
    }

    /**
     * 修改实时敌情
     * 
     * @param tsEnemy 实时敌情
     * @return 结果
     */
    @Override
    public int updateTsEnemy(TsEnemy tsEnemy)
    {
        return tsEnemyMapper.updateTsEnemy(tsEnemy);
    }

    /**
     * 删除实时敌情对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTsEnemyByIds(String ids)
    {
        return tsEnemyMapper.deleteTsEnemyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除实时敌情信息
     * 
     * @param id 实时敌情ID
     * @return 结果
     */
    @Override
    public int deleteTsEnemyById(Long id)
    {
        return tsEnemyMapper.deleteTsEnemyById(id);
    }
}
