package com.ruoyi.data.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.data.domain.Subscribe;
import com.ruoyi.data.mapper.SubscribeMapper;
import com.ruoyi.data.service.SubscribeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 订阅关系Service业务层处理
 * 
 * @author xusisheng
 * @date 2019-11-25
 */
@Service
public class SubscribeServiceImpl implements SubscribeService {
    private static final Logger logger = LoggerFactory.getLogger(SubscribeService.class);

    @Autowired
    private SubscribeMapper subscribeMapper;

    /**
     * 查询订阅关系
     * 
     * @param id 订阅关系ID
     * @return 订阅关系
     */
    @Override
    public Subscribe selectSubscribeById(Long id) {
        return subscribeMapper.selectSubscribeById(id);
    }

    /**
     * 查询订阅关系列表
     * 
     * @param subscribe 订阅关系
     * @return 订阅关系
     */
    @Override
    public List<Subscribe> selectSubscribeList(Subscribe subscribe) {
        return subscribeMapper.selectSubscribeList(subscribe);
    }

    /**
     * 新增订阅关系
     * 
     * @param subscribe 订阅关系
     * @return 结果
     */
    @Override
    public int insertSubscribe(Subscribe subscribe) {
        return subscribeMapper.insertSubscribe(subscribe);
    }

    /**
     * 修改订阅关系
     * 
     * @param subscribe 订阅关系
     * @return 结果
     */
    @Override
    public int updateSubscribe(Subscribe subscribe) {
        return subscribeMapper.updateSubscribe(subscribe);
    }

    /**
     * 删除订阅关系对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSubscribeByIds(String ids) {
        return subscribeMapper.deleteSubscribeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除订阅关系信息
     * 
     * @param id 订阅关系ID
     * @return 结果
     */
    @Override
    public int deleteSubscribeById(Long id) {
        return subscribeMapper.deleteSubscribeById(id);
    }

    @Override
    public int insertBatch(List<Subscribe> list) {
        if (list.size() > 0) {
            return subscribeMapper.insertBatch(list);
        }
        return 0;
    }

    @Override
    public int updateBatch(List<Subscribe> list) {
        if (list.size() > 0) {
            return subscribeMapper.updateBatch(list);
        }
        return 0;
    }

    @Override
    public List<Subscribe> selectSubscribeList(String feed_code) {
        Subscribe subscribe = new Subscribe();
        subscribe.setFeedCode(feed_code);
        return subscribeMapper.selectSubscribeList(subscribe);
    }
}
