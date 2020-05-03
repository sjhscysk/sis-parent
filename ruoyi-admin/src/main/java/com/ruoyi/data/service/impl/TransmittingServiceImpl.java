package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.TransmittingMapper;
import com.ruoyi.data.domain.Transmitting;
import com.ruoyi.data.service.TransmittingService;
import com.ruoyi.common.core.text.Convert;

/**
 * 发射系统Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Service
public class TransmittingServiceImpl implements TransmittingService
{
    @Autowired
    private TransmittingMapper transmittingMapper;

    /**
     * 查询发射系统
     * 
     * @param id 发射系统ID
     * @return 发射系统
     */
    @Override
    public Transmitting selectTransmittingById(Long id)
    {
        return transmittingMapper.selectTransmittingById(id);
    }

    /**
     * 查询发射系统列表
     * 
     * @param transmitting 发射系统
     * @return 发射系统
     */
    @Override
    public List<Transmitting> selectTransmittingList(Transmitting transmitting)
    {
        return transmittingMapper.selectTransmittingList(transmitting);
    }

    /**
     * 新增发射系统
     * 
     * @param transmitting 发射系统
     * @return 结果
     */
    @Override
    public int insertTransmitting(Transmitting transmitting)
    {
        return transmittingMapper.insertTransmitting(transmitting);
    }

    /**
     * 修改发射系统
     * 
     * @param transmitting 发射系统
     * @return 结果
     */
    @Override
    public int updateTransmitting(Transmitting transmitting)
    {
        return transmittingMapper.updateTransmitting(transmitting);
    }

    /**
     * 删除发射系统对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTransmittingByIds(String ids)
    {
        return transmittingMapper.deleteTransmittingByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除发射系统信息
     * 
     * @param id 发射系统ID
     * @return 结果
     */
    @Override
    public int deleteTransmittingById(Long id)
    {
        return transmittingMapper.deleteTransmittingById(id);
    }
}
