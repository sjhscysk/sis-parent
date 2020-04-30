package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.Detection;

/**
 * 侦测Mapper接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface DetectionMapper 
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
     * 删除侦测
     * 
     * @param id 侦测ID
     * @return 结果
     */
    public int deleteDetectionById(Long id);

    /**
     * 批量删除侦测
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDetectionByIds(String[] ids);
}
