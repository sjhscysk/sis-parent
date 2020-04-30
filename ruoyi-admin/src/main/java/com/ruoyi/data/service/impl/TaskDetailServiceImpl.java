package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.TaskDetailMapper;
import com.ruoyi.data.domain.TaskDetail;
import com.ruoyi.data.service.TaskDetailService;
import com.ruoyi.common.core.text.Convert;

/**
 * 作战任务详情Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class TaskDetailServiceImpl implements TaskDetailService
{
    @Autowired
    private TaskDetailMapper taskDetailMapper;

    /**
     * 查询作战任务详情
     * 
     * @param id 作战任务详情ID
     * @return 作战任务详情
     */
    @Override
    public TaskDetail selectTaskDetailById(Long id)
    {
        return taskDetailMapper.selectTaskDetailById(id);
    }

    /**
     * 查询作战任务详情列表
     * 
     * @param taskDetail 作战任务详情
     * @return 作战任务详情
     */
    @Override
    public List<TaskDetail> selectTaskDetailList(TaskDetail taskDetail)
    {
        return taskDetailMapper.selectTaskDetailList(taskDetail);
    }

    /**
     * 新增作战任务详情
     * 
     * @param taskDetail 作战任务详情
     * @return 结果
     */
    @Override
    public int insertTaskDetail(TaskDetail taskDetail)
    {
        return taskDetailMapper.insertTaskDetail(taskDetail);
    }

    /**
     * 修改作战任务详情
     * 
     * @param taskDetail 作战任务详情
     * @return 结果
     */
    @Override
    public int updateTaskDetail(TaskDetail taskDetail)
    {
        return taskDetailMapper.updateTaskDetail(taskDetail);
    }

    /**
     * 删除作战任务详情对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTaskDetailByIds(String ids)
    {
        return taskDetailMapper.deleteTaskDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除作战任务详情信息
     * 
     * @param id 作战任务详情ID
     * @return 结果
     */
    @Override
    public int deleteTaskDetailById(Long id)
    {
        return taskDetailMapper.deleteTaskDetailById(id);
    }
}
