package com.ruoyi.data.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.data.domain.TaskDetail;
import com.ruoyi.data.service.TaskDetailService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 作战任务详情Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/task/detail")
public class TaskDetailController extends BaseController
{
    private String prefix = "data/task/detail";

    @Autowired
    private TaskDetailService taskDetailService;

    @RequiresPermissions("data:task:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询作战任务详情列表
     */
    @RequiresPermissions("data:task:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(TaskDetail taskDetail)
    {
        startPage();
        List<TaskDetail> list = taskDetailService.selectTaskDetailList(taskDetail);
        return getDataTable(list);
    }

    /**
     * 导出作战任务详情列表
     */
    @RequiresPermissions("data:task:export")
    @Log(title = "作战任务详情", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(TaskDetail taskDetail)
    {
        List<TaskDetail> list = taskDetailService.selectTaskDetailList(taskDetail);
        ExcelUtil<TaskDetail> util = new ExcelUtil<TaskDetail>(TaskDetail.class);
        return util.exportExcel(list, "detail");
    }

    /**
     * 新增作战任务详情
     */
    @GetMapping("/add/{taskId}")
    public String add(@PathVariable("taskId") Long taskId, ModelMap mmap)
    {
        mmap.put("taskId", taskId);
        return prefix + "/add";
    }

    /**
     * 新增保存作战任务详情
     */
    @RequiresPermissions("data:task:add")
    @Log(title = "作战任务详情", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(TaskDetail taskDetail)
    {
        return toAjax(taskDetailService.insertTaskDetail(taskDetail));
    }

    /**
     * 修改作战任务详情
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        TaskDetail taskDetail = taskDetailService.selectTaskDetailById(id);
        mmap.put("taskDetail", taskDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存作战任务详情
     */
    @RequiresPermissions("data:task:edit")
    @Log(title = "作战任务详情", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(TaskDetail taskDetail)
    {
        return toAjax(taskDetailService.updateTaskDetail(taskDetail));
    }

    /**
     * 删除作战任务详情
     */
    @RequiresPermissions("data:task:remove")
    @Log(title = "作战任务详情", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(taskDetailService.deleteTaskDetailByIds(ids));
    }
}
