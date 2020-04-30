package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.DetectionMapper;
import com.ruoyi.data.domain.Detection;
import com.ruoyi.data.service.DetectionService;
import com.ruoyi.common.core.text.Convert;

/**
 * 侦测Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class DetectionServiceImpl implements DetectionService
{
    @Autowired
    private DetectionMapper detectionMapper;

    /**
     * 查询侦测
     * 
     * @param id 侦测ID
     * @return 侦测
     */
    @Override
    public Detection selectDetectionById(Long id)
    {
        return detectionMapper.selectDetectionById(id);
    }

    /**
     * 查询侦测列表
     * 
     * @param detection 侦测
     * @return 侦测
     */
    @Override
    public List<Detection> selectDetectionList(Detection detection)
    {
        return detectionMapper.selectDetectionList(detection);
    }

    /**
     * 新增侦测
     * 
     * @param detection 侦测
     * @return 结果
     */
    @Override
    public int insertDetection(Detection detection)
    {
        return detectionMapper.insertDetection(detection);
    }

    /**
     * 修改侦测
     * 
     * @param detection 侦测
     * @return 结果
     */
    @Override
    public int updateDetection(Detection detection)
    {
        return detectionMapper.updateDetection(detection);
    }

    /**
     * 删除侦测对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteDetectionByIds(String ids)
    {
        return detectionMapper.deleteDetectionByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除侦测信息
     * 
     * @param id 侦测ID
     * @return 结果
     */
    @Override
    public int deleteDetectionById(Long id)
    {
        return detectionMapper.deleteDetectionById(id);
    }
}
