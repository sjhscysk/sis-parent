package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.Enemy;

/**
 * 敌情目标Mapper接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface EnemyMapper 
{
    /**
     * 查询敌情目标
     * 
     * @param id 敌情目标ID
     * @return 敌情目标
     */
    public Enemy selectEnemyById(Long id);

    /**
     * 查询敌情目标列表
     * 
     * @param enemy 敌情目标
     * @return 敌情目标集合
     */
    public List<Enemy> selectEnemyList(Enemy enemy);

    /**
     * 新增敌情目标
     * 
     * @param enemy 敌情目标
     * @return 结果
     */
    public int insertEnemy(Enemy enemy);

    /**
     * 修改敌情目标
     * 
     * @param enemy 敌情目标
     * @return 结果
     */
    public int updateEnemy(Enemy enemy);

    /**
     * 删除敌情目标
     * 
     * @param id 敌情目标ID
     * @return 结果
     */
    public int deleteEnemyById(Long id);

    /**
     * 批量删除敌情目标
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteEnemyByIds(String[] ids);
}
