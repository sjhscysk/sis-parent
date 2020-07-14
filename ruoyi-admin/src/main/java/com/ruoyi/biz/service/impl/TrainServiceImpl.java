package com.ruoyi.biz.service.impl;

import java.util.List;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.biz.mapper.TrainMapper;
import com.ruoyi.biz.domain.Train;
import com.ruoyi.biz.service.TrainService;

/**
 * 列车时刻Service业务层处理
 * 
 * @author xusisheng
 * @date 2019-12-06
 */
@Service
public class TrainServiceImpl implements TrainService {
    private static final Logger logger = LoggerFactory.getLogger(TrainService.class);

    @Autowired
    private TrainMapper trainMapper;

    /**
     * 查询列车时刻
     * 
     * @param id 列车时刻ID
     * @return 列车时刻
     */
    @Override
    public Train selectTrainById(Integer id) {
        return trainMapper.selectTrainById(id);
    }

    /**
     * 查询列车时刻列表
     * 
     * @param train 列车时刻
     * @return 列车时刻
     */
    @Override
    public List<Train> selectTrainList(Train train) {
        return trainMapper.selectTrainList(train);
    }

    /**
     * 新增列车时刻
     * 
     * @param train 列车时刻
     * @return 结果
     */
    @Override
    public int insertTrain(Train train) {
        return trainMapper.insertTrain(train);
    }

    /**
     * 修改列车时刻
     * 
     * @param train 列车时刻
     * @return 结果
     */
    @Override
    public int updateTrain(Train train) {
        return trainMapper.updateTrain(train);
    }

    /**
     * 删除列车时刻对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTrainByIds(String ids) {
        return trainMapper.deleteTrainByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除列车时刻信息
     * 
     * @param id 列车时刻ID
     * @return 结果
     */
    @Override
    public int deleteTrainById(Integer id) {
        return trainMapper.deleteTrainById(id);
    }

    @Override
    public String importTrain(List<Train> list, Boolean isUpdateSupport) {
        if (StringUtils.isNull(list) || list.size() == 0) {
            throw new BusinessException("导入数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        String operName = ShiroUtils.getLoginName();
        for (Train train : list) {
            try {
                this.insertTrain(train);
                successNum++;
                successMsg.append("<br/>" + successNum + "、车次 " + train.getTrainCode() + " 导入成功");
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + failureNum + "、车次 " + train.getTrainCode() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                logger.error(msg, e);
            }
        }
        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new BusinessException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }
}
