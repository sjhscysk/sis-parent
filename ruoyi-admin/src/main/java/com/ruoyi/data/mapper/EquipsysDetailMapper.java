package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.EquipsysDetail;
import com.ruoyi.data.domain.StationDevice;
import org.springframework.stereotype.Repository;

/**
 * 装备系统详情Mapper接口
 * 
 * @author xusisheng
 * @date 2020-05-07
 */
@Repository
public interface EquipsysDetailMapper 
{
    /**
     * 查询装备系统详情
     * 
     * @param id 装备系统详情ID
     * @return 装备系统详情
     */
    public EquipsysDetail selectEquipsysDetailById(Long id);

    /**
     * 查询装备系统详情列表
     * 
     * @param equipsysDetail 装备系统详情
     * @return 装备系统详情集合
     */
    public List<EquipsysDetail> selectEquipsysDetailList(EquipsysDetail equipsysDetail);

    /**
     * 新增装备系统详情
     * 
     * @param equipsysDetail 装备系统详情
     * @return 结果
     */
    public int insertEquipsysDetail(EquipsysDetail equipsysDetail);

    /**
     * 修改装备系统详情
     * 
     * @param equipsysDetail 装备系统详情
     * @return 结果
     */
    public int updateEquipsysDetail(EquipsysDetail equipsysDetail);

    /**
     * 删除装备系统详情
     * 
     * @param id 装备系统详情ID
     * @return 结果
     */
    public int deleteEquipsysDetailById(Long id);

    /**
     * 批量删除装备系统详情
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteEquipsysDetailByIds(String[] ids);

    /**
     * 批量新增
     *
     * @param list 台站设备列表
     * @return 结果
     */
    public int batchInsert(List<EquipsysDetail> list);

    /**
     * 取消
     *
     * @param equipsysDetail 系统详情
     * @return 结果
     */
    public int delete(EquipsysDetail equipsysDetail);

    /**
     * 批量取消
     *
     * @param list 台站设备列表
     * @return 结果
     */
    public int batchDelete(List<EquipsysDetail> list);
}
