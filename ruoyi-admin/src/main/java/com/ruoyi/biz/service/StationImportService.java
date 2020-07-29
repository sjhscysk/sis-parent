package com.ruoyi.biz.service;

import java.util.List;
import com.ruoyi.biz.domain.StationImport;

/**
 * 数据导入Service接口
 *
 * @author xusisheng
 * @date 2020-07-29
 */
public interface StationImportService
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
     * 批量删除数据导入
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStationImportByIds(String ids);

    /**
     * 删除数据导入信息
     *
     * @param id 数据导入ID
     * @return 结果
     */
    public int deleteStationImportById(Long id);

    /**
     * 导入数据
     *
     * @param list 数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @return 结果
     */
    String importStationImport(List<StationImport> list, Boolean isUpdateSupport);
}
