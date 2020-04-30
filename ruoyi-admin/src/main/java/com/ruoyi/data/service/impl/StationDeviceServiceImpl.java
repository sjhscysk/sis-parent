package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.StationDeviceMapper;
import com.ruoyi.data.domain.StationDevice;
import com.ruoyi.data.service.StationDeviceService;
import com.ruoyi.common.core.text.Convert;

/**
 * 台站设备Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class StationDeviceServiceImpl implements StationDeviceService
{
    @Autowired
    private StationDeviceMapper stationDeviceMapper;

    /**
     * 查询台站设备
     * 
     * @param id 台站设备ID
     * @return 台站设备
     */
    @Override
    public StationDevice selectStationDeviceById(Long id)
    {
        return stationDeviceMapper.selectStationDeviceById(id);
    }

    /**
     * 查询台站设备列表
     * 
     * @param stationDevice 台站设备
     * @return 台站设备
     */
    @Override
    public List<StationDevice> selectStationDeviceList(StationDevice stationDevice)
    {
        return stationDeviceMapper.selectStationDeviceList(stationDevice);
    }

    /**
     * 新增台站设备
     * 
     * @param stationDevice 台站设备
     * @return 结果
     */
    @Override
    public int insertStationDevice(StationDevice stationDevice)
    {
        return stationDeviceMapper.insertStationDevice(stationDevice);
    }

    /**
     * 修改台站设备
     * 
     * @param stationDevice 台站设备
     * @return 结果
     */
    @Override
    public int updateStationDevice(StationDevice stationDevice)
    {
        return stationDeviceMapper.updateStationDevice(stationDevice);
    }

    /**
     * 删除台站设备对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStationDeviceByIds(String ids)
    {
        return stationDeviceMapper.deleteStationDeviceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除台站设备信息
     * 
     * @param id 台站设备ID
     * @return 结果
     */
    @Override
    public int deleteStationDeviceById(Long id)
    {
        return stationDeviceMapper.deleteStationDeviceById(id);
    }
}
