package com.ruoyi.biz.mapper;

import java.util.List;
import com.ruoyi.biz.domain.TsEnemyHistory;

/**
 * 态势回放Mapper接口
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public interface TsEnemyHistoryMapper 
{
    /**
     * 查询态势回放
     * 
     * @param id 态势回放ID
     * @return 态势回放
     */
    public TsEnemyHistory selectTsEnemyHistoryById(Long id);

    /**
     * 查询态势回放列表
     * 
     * @param tsEnemyHistory 态势回放
     * @return 态势回放集合
     */
    public List<TsEnemyHistory> selectTsEnemyHistoryList(TsEnemyHistory tsEnemyHistory);

    /**
     * 新增态势回放
     * 
     * @param tsEnemyHistory 态势回放
     * @return 结果
     */
    public int insertTsEnemyHistory(TsEnemyHistory tsEnemyHistory);

    /**
     * 修改态势回放
     * 
     * @param tsEnemyHistory 态势回放
     * @return 结果
     */
    public int updateTsEnemyHistory(TsEnemyHistory tsEnemyHistory);

    /**
     * 删除态势回放
     * 
     * @param id 态势回放ID
     * @return 结果
     */
    public int deleteTsEnemyHistoryById(Long id);

    /**
     * 批量删除态势回放
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTsEnemyHistoryByIds(String[] ids);
}
