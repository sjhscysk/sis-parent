package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.TaskMapper;
import com.ruoyi.data.domain.Task;
import com.ruoyi.data.service.TaskService;
import com.ruoyi.common.core.text.Convert;

/**
 * 作战任务基本信息Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class TaskServiceImpl implements TaskService
{
    @Autowired
    private TaskMapper taskMapper;

    /**
     * 查询作战任务基本信息
     * 
     * @param id 作战任务基本信息ID
     * @return 作战任务基本信息
     */
    @Override
    public Task selectTaskById(Long id)
    {
        return taskMapper.selectTaskById(id);
    }

    /**
     * 查询作战任务基本信息列表
     * 
     * @param task 作战任务基本信息
     * @return 作战任务基本信息
     */
    @Override
    public List<Task> selectTaskList(Task task)
    {
        return taskMapper.selectTaskList(task);
    }

    /**
     * 新增作战任务基本信息
     * 
     * @param task 作战任务基本信息
     * @return 结果
     */
    @Override
    public int insertTask(Task task)
    {
        return taskMapper.insertTask(task);
    }

    /**
     * 修改作战任务基本信息
     * 
     * @param task 作战任务基本信息
     * @return 结果
     */
    @Override
    public int updateTask(Task task)
    {
        return taskMapper.updateTask(task);
    }

    /**
     * 删除作战任务基本信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTaskByIds(String ids)
    {
        return taskMapper.deleteTaskByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除作战任务基本信息信息
     * 
     * @param id 作战任务基本信息ID
     * @return 结果
     */
    @Override
    public int deleteTaskById(Long id)
    {
        return taskMapper.deleteTaskById(id);
    }
}
