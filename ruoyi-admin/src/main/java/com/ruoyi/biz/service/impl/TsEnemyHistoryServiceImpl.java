package com.ruoyi.biz.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.biz.mapper.TsEnemyHistoryMapper;
import com.ruoyi.biz.domain.TsEnemyHistory;
import com.ruoyi.biz.service.TsEnemyHistoryService;
import com.ruoyi.common.core.text.Convert;

/**
 * 态势回放Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
@Service
public class TsEnemyHistoryServiceImpl implements TsEnemyHistoryService
{
    @Autowired
    private TsEnemyHistoryMapper tsEnemyHistoryMapper;

    /**
     * 查询态势回放
     * 
     * @param id 态势回放ID
     * @return 态势回放
     */
    @Override
    public TsEnemyHistory selectTsEnemyHistoryById(Long id)
    {
        return tsEnemyHistoryMapper.selectTsEnemyHistoryById(id);
    }

    /**
     * 查询态势回放列表
     * 
     * @param tsEnemyHistory 态势回放
     * @return 态势回放
     */
    @Override
    public List<TsEnemyHistory> selectTsEnemyHistoryList(TsEnemyHistory tsEnemyHistory)
    {
        return tsEnemyHistoryMapper.selectTsEnemyHistoryList(tsEnemyHistory);
    }

    /**
     * 新增态势回放
     * 
     * @param tsEnemyHistory 态势回放
     * @return 结果
     */
    @Override
    public int insertTsEnemyHistory(TsEnemyHistory tsEnemyHistory)
    {
        tsEnemyHistory.setCreateTime(DateUtils.getNowDate());
        return tsEnemyHistoryMapper.insertTsEnemyHistory(tsEnemyHistory);
    }

    /**
     * 修改态势回放
     * 
     * @param tsEnemyHistory 态势回放
     * @return 结果
     */
    @Override
    public int updateTsEnemyHistory(TsEnemyHistory tsEnemyHistory)
    {
        return tsEnemyHistoryMapper.updateTsEnemyHistory(tsEnemyHistory);
    }

    /**
     * 删除态势回放对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTsEnemyHistoryByIds(String ids)
    {
        return tsEnemyHistoryMapper.deleteTsEnemyHistoryByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除态势回放信息
     * 
     * @param id 态势回放ID
     * @return 结果
     */
    @Override
    public int deleteTsEnemyHistoryById(Long id)
    {
        return tsEnemyHistoryMapper.deleteTsEnemyHistoryById(id);
    }
}
