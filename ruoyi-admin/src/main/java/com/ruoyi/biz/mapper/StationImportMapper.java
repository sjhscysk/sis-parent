package com.ruoyi.biz.mapper;

import java.util.List;
import com.ruoyi.biz.domain.StationImport;

/**
 * 数据导入Mapper接口
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public interface StationImportMapper 
{
    /**
     * 查询数据导入
     * 
     * @param id 数据导入ID
     * @return 数据导入
     */
    public StationImport selectStationImportById(Long id);

    /**
     * 查询数据导入列表
     * 
     * @param stationImport 数据导入
     * @return 数据导入集合
     */
    public List<StationImport> selectStationImportList(StationImport stationImport);

    /**
     * 新增数据导入
     * 
     * @param stationImport 数据导入
     * @return 结果
     */
    public int insertStationImport(StationImport stationImport);

    /**
     * 修改数据导入
     * 
     * @param stationImport 数据导入
     * @return 结果
     */
    public int updateStationImport(StationImport stationImport);

    /**
     * 删除数据导入
     * 
     * @param id 数据导入ID
     * @return 结果
     */
    public int deleteStationImportById(Long id);

    /**
     * 批量删除数据导入
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStationImportByIds(String[] ids);
}
