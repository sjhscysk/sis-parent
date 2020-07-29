package com.ruoyi.biz.service.impl;

import java.util.List;

import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.biz.mapper.StationImportMapper;
import com.ruoyi.biz.domain.StationImport;
import com.ruoyi.biz.service.StationImportService;
import com.ruoyi.common.core.text.Convert;

/**
 * 数据导入Service业务层处理
 *
 * @author xusisheng
 * @date 2020-07-29
 */
@Service
public class StationImportServiceImpl implements StationImportService
{
    @Autowired
    private StationImportMapper stationImportMapper;

    /**
     * 查询数据导入
     *
     * @param id 数据导入ID
     * @return 数据导入
     */
    @Override
    public StationImport selectStationImportById(Long id)
    {
        return stationImportMapper.selectStationImportById(id);
    }

    /**
     * 查询数据导入列表
     *
     * @param stationImport 数据导入
     * @return 数据导入
     */
    @Override
    public List<StationImport> selectStationImportList(StationImport stationImport)
    {
        return stationImportMapper.selectStationImportList(stationImport);
    }

    /**
     * 新增数据导入
     *
     * @param stationImport 数据导入
     * @return 结果
     */
    @Override
    public int insertStationImport(StationImport stationImport)
    {
        return stationImportMapper.insertStationImport(stationImport);
    }

    /**
     * 修改数据导入
     *
     * @param stationImport 数据导入
     * @return 结果
     */
    @Override
    public int updateStationImport(StationImport stationImport)
    {
        return stationImportMapper.updateStationImport(stationImport);
    }

    /**
     * 删除数据导入对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteStationImportByIds(String ids)
    {
        return stationImportMapper.deleteStationImportByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除数据导入信息
     *
     * @param id 数据导入ID
     * @return 结果
     */
    @Override
    public int deleteStationImportById(Long id)
    {
        return stationImportMapper.deleteStationImportById(id);
    }

    @Override
    public String importStationImport(List<StationImport> list, Boolean isUpdateSupport) {
        if (StringUtils.isNull(list) || list.size() == 0) {
            throw new BusinessException("导入数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        String operName = ShiroUtils.getLoginName();
        for (StationImport entity : list) {
            try {
                this.insertStationImport(entity);
                successNum++;
                successMsg.append("<br/>" + entity.getName() + " 导入成功");
            } catch (Exception e) {
                failureNum++;
                String msg = "<br/>" + entity.getName() + " 导入失败";
                failureMsg.append(msg + e.getMessage());
            }
        }
        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new BusinessException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }
}
