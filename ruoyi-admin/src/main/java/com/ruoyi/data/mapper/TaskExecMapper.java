package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.TaskExec;

/**
 * 作战任务执行信息Mapper接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface TaskExecMapper 
{
    /**
     * 查询作战任务执行信息
     * 
     * @param id 作战任务执行信息ID
     * @return 作战任务执行信息
     */
    public TaskExec selectTaskExecById(Long id);

    /**
     * 查询作战任务执行信息列表
     * 
     * @param taskExec 作战任务执行信息
     * @return 作战任务执行信息集合
     */
    public List<TaskExec> selectTaskExecList(TaskExec taskExec);

    /**
     * 新增作战任务执行信息
     * 
     * @param taskExec 作战任务执行信息
     * @return 结果
     */
    public int insertTaskExec(TaskExec taskExec);

    /**
     * 修改作战任务执行信息
     * 
     * @param taskExec 作战任务执行信息
     * @return 结果
     */
    public int updateTaskExec(TaskExec taskExec);

    /**
     * 删除作战任务执行信息
     * 
     * @param id 作战任务执行信息ID
     * @return 结果
     */
    public int deleteTaskExecById(Long id);

    /**
     * 批量删除作战任务执行信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTaskExecByIds(String[] ids);
}
