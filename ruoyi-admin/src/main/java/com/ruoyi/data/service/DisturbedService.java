package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Disturbed;

/**
 * 干扰功能Service接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface DisturbedService
{
    /**
     * 查询干扰功能
     * 
     * @param id 干扰功能ID
     * @return 干扰功能
     */
    public Disturbed selectDisturbedById(Long id);

    /**
     * 查询干扰功能列表
     * 
     * @param disturbed 干扰功能
     * @return 干扰功能集合
     */
    public List<Disturbed> selectDisturbedList(Disturbed disturbed);

    /**
     * 新增干扰功能
     * 
     * @param disturbed 干扰功能
     * @return 结果
     */
    public int insertDisturbed(Disturbed disturbed);

    /**
     * 修改干扰功能
     * 
     * @param disturbed 干扰功能
     * @return 结果
     */
    public int updateDisturbed(Disturbed disturbed);

    /**
     * 批量删除干扰功能
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteDisturbedByIds(String ids);

    /**
     * 删除干扰功能信息
     * 
     * @param id 干扰功能ID
     * @return 结果
     */
    public int deleteDisturbedById(Long id);
}
