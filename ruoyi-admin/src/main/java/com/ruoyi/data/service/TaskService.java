package com.ruoyi.data.service;

import java.util.List;
import com.ruoyi.data.domain.Task;

/**
 * 作战任务基本信息Service接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public interface TaskService
{
    /**
     * 查询作战任务基本信息
     * 
     * @param id 作战任务基本信息ID
     * @return 作战任务基本信息
     */
    public Task selectTaskById(Long id);

    /**
     * 查询作战任务基本信息列表
     * 
     * @param task 作战任务基本信息
     * @return 作战任务基本信息集合
     */
    public List<Task> selectTaskList(Task task);

    /**
     * 新增作战任务基本信息
     * 
     * @param task 作战任务基本信息
     * @return 结果
     */
    public int insertTask(Task task);

    /**
     * 修改作战任务基本信息
     * 
     * @param task 作战任务基本信息
     * @return 结果
     */
    public int updateTask(Task task);

    /**
     * 批量删除作战任务基本信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTaskByIds(String ids);

    /**
     * 删除作战任务基本信息信息
     * 
     * @param id 作战任务基本信息ID
     * @return 结果
     */
    public int deleteTaskById(Long id);
}
