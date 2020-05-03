package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Equipsys;

/**
 * 装备系统Service接口
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
public interface EquipsysService
{
    /**
     * 查询装备系统
     * 
     * @param id 装备系统ID
     * @return 装备系统
     */
    public Equipsys selectEquipsysById(Long id);

    /**
     * 查询装备系统列表
     * 
     * @param equipsys 装备系统
     * @return 装备系统集合
     */
    public List<Equipsys> selectEquipsysList(Equipsys equipsys);

    /**
     * 新增装备系统
     * 
     * @param equipsys 装备系统
     * @return 结果
     */
    public int insertEquipsys(Equipsys equipsys);

    /**
     * 修改装备系统
     * 
     * @param equipsys 装备系统
     * @return 结果
     */
    public int updateEquipsys(Equipsys equipsys);

    /**
     * 批量删除装备系统
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteEquipsysByIds(String ids);

    /**
     * 删除装备系统信息
     * 
     * @param id 装备系统ID
     * @return 结果
     */
    public int deleteEquipsysById(Long id);
}
