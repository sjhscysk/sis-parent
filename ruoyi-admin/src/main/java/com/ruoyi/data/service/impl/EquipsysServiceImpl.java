package com.ruoyi.data.service.impl;

import java.util.List;

import com.ruoyi.data.service.EquipsysDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.EquipsysMapper;
import com.ruoyi.data.domain.Equipsys;
import com.ruoyi.data.service.EquipsysService;
import com.ruoyi.common.core.text.Convert;

/**
 * 装备系统Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Service
public class EquipsysServiceImpl implements EquipsysService
{
    @Autowired
    private EquipsysMapper equipsysMapper;
    @Autowired
    private EquipsysDetailService equipsysDetailService;

    /**
     * 查询装备系统
     * 
     * @param id 装备系统ID
     * @return 装备系统
     */
    @Override
    public Equipsys selectEquipsysById(Long id)
    {
        return equipsysMapper.selectEquipsysById(id);
    }

    /**
     * 查询装备系统列表
     * 
     * @param equipsys 装备系统
     * @return 装备系统
     */
    @Override
    public List<Equipsys> selectEquipsysList(Equipsys equipsys)
    {
        return equipsysMapper.selectEquipsysList(equipsys);
    }

    /**
     * 新增装备系统
     * 
     * @param equipsys 装备系统
     * @return 结果
     */
    @Override
    public int insertEquipsys(Equipsys equipsys)
    {
        return equipsysMapper.insertEquipsys(equipsys);
    }

    /**
     * 修改装备系统
     * 
     * @param equipsys 装备系统
     * @return 结果
     */
    @Override
    public int updateEquipsys(Equipsys equipsys)
    {
        return equipsysMapper.updateEquipsys(equipsys);
    }

    /**
     * 删除装备系统对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteEquipsysByIds(String ids)
    {
        //删除关联信息，然后再删除装备系统
        Long[] arry = Convert.toLongArray(ids);
        for (Long id : arry) {
            equipsysDetailService.delete(id, null, null);
        }
        return equipsysMapper.deleteEquipsysByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除装备系统信息
     * 
     * @param id 装备系统ID
     * @return 结果
     */
    @Override
    public int deleteEquipsysById(Long id)
    {
        //删除关联信息，然后再删除装备系统
        equipsysDetailService.delete(id, null, null);
        return equipsysMapper.deleteEquipsysById(id);
    }
}
