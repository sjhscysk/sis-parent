package com.ruoyi.data.service.impl;

import java.util.List;
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
 * @date 2020-04-30
 */
@Service
public class StationServiceImpl implements StationService
{
    @Autowired
    private StationMapper stationMapper;

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
        return stationMapper.deleteStationById(id);
    }
}
