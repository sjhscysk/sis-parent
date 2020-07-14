package com.ruoyi.biz.service;

import com.ruoyi.biz.domain.Subscribe;

import java.util.List;

/**
 * 订阅关系Service接口
 * 
 * @author xusisheng
 * @date 2019-11-25
 */
public interface SubscribeService {
    /**
     * 查询订阅关系
     * 
     * @param id 订阅关系ID
     * @return 订阅关系
     */
    public Subscribe selectSubscribeById(Integer id);

    /**
     * 查询订阅关系列表
     * 
     * @param subscribe 订阅关系
     * @return 订阅关系集合
     */
    public List<Subscribe> selectSubscribeList(Subscribe subscribe);

    /**
     * 新增订阅关系
     * 
     * @param subscribe 订阅关系
     * @return 结果
     */
    public int insertSubscribe(Subscribe subscribe);

    /**
     * 修改订阅关系
     * 
     * @param subscribe 订阅关系
     * @return 结果
     */
    public int updateSubscribe(Subscribe subscribe);

    /**
     * 批量删除订阅关系
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSubscribeByIds(String ids);

    /**
     * 删除订阅关系信息
     * 
     * @param id 订阅关系ID
     * @return 结果
     */
    public int deleteSubscribeById(Integer id);

    int insertBatch(List<Subscribe> list);

    int updateBatch(List<Subscribe> list);

    /**
     * 查询指定订阅源标识的订阅关系列表
     *
     * @param feed_code 订阅源标识
     * @return 订阅关系集合
     */
    List<Subscribe> selectSubscribeList(String feed_code);
}
