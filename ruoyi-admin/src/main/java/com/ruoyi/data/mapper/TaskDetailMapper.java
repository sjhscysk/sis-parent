package com.ruoyi.data.mapper;

import java.util.List;
import com.ruoyi.data.domain.TaskDetail;
import org.springframework.stereotype.Repository;

/**
 * 作战任务详情Mapper接口
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Repository
public interface TaskDetailMapper
{
    /**
     * 查询作战任务详情
     * 
     * @param id 作战任务详情ID
     * @return 作战任务详情
     */
    public TaskDetail selectTaskDetailById(Long id);

    /**
     * 查询作战任务详情列表
     * 
     * @param taskDetail 作战任务详情
     * @return 作战任务详情集合
     */
    public List<TaskDetail> selectTaskDetailList(TaskDetail taskDetail);

    /**
     * 新增作战任务详情
     * 
     * @param taskDetail 作战任务详情
     * @return 结果
     */
    public int insertTaskDetail(TaskDetail taskDetail);

    /**
     * 修改作战任务详情
     * 
     * @param taskDetail 作战任务详情
     * @return 结果
     */
    public int updateTaskDetail(TaskDetail taskDetail);

    /**
     * 删除作战任务详情
     * 
     * @param id 作战任务详情ID
     * @return 结果
     */
    public int deleteTaskDetailById(Long id);

    /**
     * 批量删除作战任务详情
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteTaskDetailByIds(String[] ids);
}
