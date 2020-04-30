package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.EnemyMapper;
import com.ruoyi.data.domain.Enemy;
import com.ruoyi.data.service.EnemyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 敌情目标Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class EnemyServiceImpl implements EnemyService
{
    @Autowired
    private EnemyMapper enemyMapper;

    /**
     * 查询敌情目标
     * 
     * @param id 敌情目标ID
     * @return 敌情目标
     */
    @Override
    public Enemy selectEnemyById(Long id)
    {
        return enemyMapper.selectEnemyById(id);
    }

    /**
     * 查询敌情目标列表
     * 
     * @param enemy 敌情目标
     * @return 敌情目标
     */
    @Override
    public List<Enemy> selectEnemyList(Enemy enemy)
    {
        return enemyMapper.selectEnemyList(enemy);
    }

    /**
     * 新增敌情目标
     * 
     * @param enemy 敌情目标
     * @return 结果
     */
    @Override
    public int insertEnemy(Enemy enemy)
    {
        return enemyMapper.insertEnemy(enemy);
    }

    /**
     * 修改敌情目标
     * 
     * @param enemy 敌情目标
     * @return 结果
     */
    @Override
    public int updateEnemy(Enemy enemy)
    {
        return enemyMapper.updateEnemy(enemy);
    }

    /**
     * 删除敌情目标对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEnemyByIds(String ids)
    {
        return enemyMapper.deleteEnemyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除敌情目标信息
     * 
     * @param id 敌情目标ID
     * @return 结果
     */
    @Override
    public int deleteEnemyById(Long id)
    {
        return enemyMapper.deleteEnemyById(id);
    }
}
