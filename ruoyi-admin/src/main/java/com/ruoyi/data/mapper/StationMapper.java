package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.Station;
import org.springframework.stereotype.Repository;

/**
 * 台站信息Mapper接口
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Repository
public interface StationMapper 
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
     * 删除台站信息
     * 
     * @param id 台站信息ID
     * @return 结果
     */
    public int deleteStationById(Long id);

    /**
     * 批量删除台站信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStationByIds(String[] ids);
}
