package com.ruoyi.project.biz.train.service;

import com.ruoyi.project.biz.train.domain.Train;
import java.util.List;

/**
 * 列车时刻Service接口
 * 
 * @author xusisheng
 * @date 2019-12-06
 */
public interface TrainService {
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
     * 批量删除列车时刻
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTrainByIds(String ids);

    /**
     * 删除列车时刻信息
     * 
     * @param id 列车时刻ID
     * @return 结果
     */
    public int deleteTrainById(Integer id);

    /**
     * 导入列车时刻数据
     *
     * @param list 列车时刻数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @return 结果
     */
    String importTrain(List<Train> list, Boolean isUpdateSupport);
}
