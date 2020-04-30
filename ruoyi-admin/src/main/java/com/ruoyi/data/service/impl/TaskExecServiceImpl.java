package com.ruoyi.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.data.mapper.TaskExecMapper;
import com.ruoyi.data.domain.TaskExec;
import com.ruoyi.data.service.TaskExecService;
import com.ruoyi.common.core.text.Convert;

/**
 * 作战任务执行信息Service业务层处理
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Service
public class TaskExecServiceImpl implements TaskExecService
{
    @Autowired
    private TaskExecMapper taskExecMapper;

    /**
     * 查询作战任务执行信息
     * 
     * @param id 作战任务执行信息ID
     * @return 作战任务执行信息
     */
    @Override
    public TaskExec selectTaskExecById(Long id)
    {
        return taskExecMapper.selectTaskExecById(id);
    }

    /**
     * 查询作战任务执行信息列表
     * 
     * @param taskExec 作战任务执行信息
     * @return 作战任务执行信息
     */
    @Override
    public List<TaskExec> selectTaskExecList(TaskExec taskExec)
    {
        return taskExecMapper.selectTaskExecList(taskExec);
    }

    /**
     * 新增作战任务执行信息
     * 
     * @param taskExec 作战任务执行信息
     * @return 结果
     */
    @Override
    public int insertTaskExec(TaskExec taskExec)
    {
        return taskExecMapper.insertTaskExec(taskExec);
    }

    /**
     * 修改作战任务执行信息
     * 
     * @param taskExec 作战任务执行信息
     * @return 结果
     */
    @Override
    public int updateTaskExec(TaskExec taskExec)
    {
        return taskExecMapper.updateTaskExec(taskExec);
    }

    /**
     * 删除作战任务执行信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteTaskExecByIds(String ids)
    {
        return taskExecMapper.deleteTaskExecByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除作战任务执行信息信息
     * 
     * @param id 作战任务执行信息ID
     * @return 结果
     */
    @Override
    public int deleteTaskExecById(Long id)
    {
        return taskExecMapper.deleteTaskExecById(id);
    }
}
