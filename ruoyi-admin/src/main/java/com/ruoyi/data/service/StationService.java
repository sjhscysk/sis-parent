package com.ruoyi.data.service;

import java.util.List;

import com.ruoyi.data.domain.RelationDeviceVO;
import com.ruoyi.data.domain.Station;

/**
 * 台站信息Service接口
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
public interface StationService
{
    /**
     * 查询台站信息
     * 
     * @param id 台站信息ID
     * @return 台站信息
     */
    public Station selectStationById(Long id);

    /**
     * 查询台站信息列表
     * 
     * @param station 台站信息
     * @return 台站信息集合
     */
    public List<Station> selectStationList(Station station);

    /**
     * 新增台站信息
     * 
     * @param station 台站信息
     * @return 结果
     */
    public int insertStation(Station station);

    /**
     * 修改台站信息
     * 
     * @param station 台站信息
     * @return 结果
     */
    public int updateStation(Station station);

    /**
     * 批量删除台站信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStationByIds(String ids);

    /**
     * 删除台站信息信息
     * 
     * @param id 台站信息ID
     * @return 结果
     */
    public int deleteStationById(Long id);

    /**
     * 根据条件分页查询已分配列表
     *
     * @param equipsysId 系统ID
     * @return 设备能力集合信息
     */
    public List<Station> selectAllocatedList(Long equipsysId);

    /**
     * 根据条件分页查询未分配列表
     *
     * @param relationDeviceVO
     * @return 设备能力集合信息
     */
    public List<Station> selectUnallocatedList(RelationDeviceVO relationDeviceVO);
}
