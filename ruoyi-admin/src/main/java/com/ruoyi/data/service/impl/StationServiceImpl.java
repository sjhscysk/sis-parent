package com.ruoyi.data.service.impl;

import java.util.List;

import com.ruoyi.data.domain.RelationDeviceVO;
import com.ruoyi.data.service.StationDeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.StationMapper;
import com.ruoyi.data.domain.Station;
import com.ruoyi.data.service.StationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 台站信息Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Service
public class StationServiceImpl implements StationService
{
    @Autowired
    private StationMapper stationMapper;
    @Autowired
    private StationDeviceService stationDeviceService;

    /**
     * 查询台站信息
     * 
     * @param id 台站信息ID
     * @return 台站信息
     */
    @Override
    public Station selectStationById(Long id)
    {
        return stationMapper.selectStationById(id);
    }

    /**
     * 查询台站信息列表
     * 
     * @param station 台站信息
     * @return 台站信息
     */
    @Override
    public List<Station> selectStationList(Station station)
    {
        return stationMapper.selectStationList(station);
    }

    /**
     * 新增台站信息
     * 
     * @param station 台站信息
     * @return 结果
     */
    @Override
    public int insertStation(Station station)
    {
        return stationMapper.insertStation(station);
    }

    /**
     * 修改台站信息
     * 
     * @param station 台站信息
     * @return 结果
     */
    @Override
    public int updateStation(Station station)
    {
        return stationMapper.updateStation(station);
    }

    /**
     * 删除台站信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStationByIds(String ids)
    {
        //删除关联信息，然后再删除台站信息
        Long[] stationIds = Convert.toLongArray(ids);
        for (Long stationId : stationIds) {
            stationDeviceService.deleteStationDevice(stationId);
        }
        return stationMapper.deleteStationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除台站信息信息
     * 
     * @param id 台站信息ID
     * @return 结果
     */
    @Override
    public int deleteStationById(Long id)
    {
        //删除关联信息，然后再删除台站信息
        stationDeviceService.deleteStationDevice(id);
        return stationMapper.deleteStationById(id);
    }

    @Override
    public List<Station> selectAllocatedList(Long equipsysId) {
        return stationMapper.selectAllocatedList(equipsysId);
    }

    @Override
    public List<Station> selectUnallocatedList(RelationDeviceVO relationDeviceVO) {
        return stationMapper.selectUnallocatedList(relationDeviceVO);
    }
}
