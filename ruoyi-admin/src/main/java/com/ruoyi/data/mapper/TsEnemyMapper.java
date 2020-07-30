package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.TsEnemy;

/**
 * 实时敌情Mapper接口
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public interface TsEnemyMapper 
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
     * 删除实时敌情
     * 
     * @param id 实时敌情ID
     * @return 结果
     */
    public int deleteTsEnemyById(Long id);

    /**
     * 批量删除实时敌情
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTsEnemyByIds(String[] ids);
}
