package com.ruoyi.biz.mapper;

import com.ruoyi.biz.domain.Train;

import java.util.List;

/**
 * 列车时刻Mapper接口
 * 
 * @author xusisheng
 * @date 2019-12-06
 */
public interface TrainMapper {
    /**
     * 查询列车时刻
     * 
     * @param id 列车时刻ID
     * @return 列车时刻
     */
    public Train selectTrainById(Integer id);

    /**
     * 查询列车时刻列表
     * 
     * @param train 列车时刻
     * @return 列车时刻集合
     */
    public List<Train> selectTrainList(Train train);

    /**
     * 新增列车时刻
     * 
     * @param train 列车时刻
     * @return 结果
     */
    public int insertTrain(Train train);

    /**
     * 修改列车时刻
     * 
     * @param train 列车时刻
     * @return 结果
     */
    public int updateTrain(Train train);

    /**
     * 删除列车时刻
     * 
     * @param id 列车时刻ID
     * @return 结果
     */
    public int deleteTrainById(Integer id);

    /**
     * 批量删除列车时刻
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTrainByIds(String[] ids);
}
