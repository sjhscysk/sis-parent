package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Detection;

/**
 * 侦测Service接口
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
public interface DetectionService
{
    /**
     * 查询侦测
     * 
     * @param id 侦测ID
     * @return 侦测
     */
    public Detection selectDetectionById(Long id);

    /**
     * 查询侦测列表
     * 
     * @param detection 侦测
     * @return 侦测集合
     */
    public List<Detection> selectDetectionList(Detection detection);

    /**
     * 新增侦测
     * 
     * @param detection 侦测
     * @return 结果
     */
    public int insertDetection(Detection detection);

    /**
     * 修改侦测
     * 
     * @param detection 侦测
     * @return 结果
     */
    public int updateDetection(Detection detection);

    /**
     * 批量删除侦测
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDetectionByIds(String ids);

    /**
     * 删除侦测信息
     * 
     * @param id 侦测ID
     * @return 结果
     */
    public int deleteDetectionById(Long id);
}
