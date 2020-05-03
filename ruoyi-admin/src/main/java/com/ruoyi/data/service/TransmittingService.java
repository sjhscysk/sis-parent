package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Transmitting;

/**
 * 发射系统Service接口
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
public interface TransmittingService
{
    /**
     * 查询发射系统
     * 
     * @param id 发射系统ID
     * @return 发射系统
     */
    public Transmitting selectTransmittingById(Long id);

    /**
     * 查询发射系统列表
     * 
     * @param transmitting 发射系统
     * @return 发射系统集合
     */
    public List<Transmitting> selectTransmittingList(Transmitting transmitting);

    /**
     * 新增发射系统
     * 
     * @param transmitting 发射系统
     * @return 结果
     */
    public int insertTransmitting(Transmitting transmitting);

    /**
     * 修改发射系统
     * 
     * @param transmitting 发射系统
     * @return 结果
     */
    public int updateTransmitting(Transmitting transmitting);

    /**
     * 批量删除发射系统
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTransmittingByIds(String ids);

    /**
     * 删除发射系统信息
     * 
     * @param id 发射系统ID
     * @return 结果
     */
    public int deleteTransmittingById(Long id);
}
