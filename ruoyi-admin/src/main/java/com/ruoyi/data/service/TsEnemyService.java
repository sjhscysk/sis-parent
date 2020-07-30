package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.TsEnemy;

/**
 * 实时敌情Service接口
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public interface TsEnemyService
{
    /**
     * 查询实时敌情
     * 
     * @param id 实时敌情ID
     * @return 实时敌情
     */
    public TsEnemy selectTsEnemyById(Long id);

    /**
     * 查询实时敌情列表
     * 
     * @param tsEnemy 实时敌情
     * @return 实时敌情集合
     */
    public List<TsEnemy> selectTsEnemyList(TsEnemy tsEnemy);

    /**
     * 新增实时敌情
     * 
     * @param tsEnemy 实时敌情
     * @return 结果
     */
    public int insertTsEnemy(TsEnemy tsEnemy);

    /**
     * 修改实时敌情
     * 
     * @param tsEnemy 实时敌情
     * @return 结果
     */
    public int updateTsEnemy(TsEnemy tsEnemy);

    /**
     * 批量删除实时敌情
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTsEnemyByIds(String ids);

    /**
     * 删除实时敌情信息
     * 
     * @param id 实时敌情ID
     * @return 结果
     */
    public int deleteTsEnemyById(Long id);

    /**
     * 清空数据
     *
     * @return
     */
    public int truncate();
}
