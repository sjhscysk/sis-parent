package com.ruoyi.web.controller.data;

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
import com.ruoyi.data.domain.Task;
import com.ruoyi.data.service.TaskService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 作战任务基本信息Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/task")
public class TaskController extends BaseController
{
    private String prefix = "data/task";

    @Autowired
    private TaskService taskService;

    @RequiresPermissions("data:task:view")
    @GetMapping()
    public String task()
    {
        return prefix + "/task";
    }

    /**
     * 查询作战任务基本信息列表
     */
    @RequiresPermissions("data:task:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Task task)
    {
        startPage();
        List<Task> list = taskService.selectTaskList(task);
        return getDataTable(list);
    }

    /**
     * 导出作战任务基本信息列表
     */
    @RequiresPermissions("data:task:export")
    @Log(title = "作战任务基本信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Task task)
    {
        List<Task> list = taskService.selectTaskList(task);
        ExcelUtil<Task> util = new ExcelUtil<Task>(Task.class);
        return util.exportExcel(list, "task");
    }

    /**
     * 新增作战任务基本信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存作战任务基本信息
     */
    @RequiresPermissions("data:task:add")
    @Log(title = "作战任务基本信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Task task)
    {
        return toAjax(taskService.insertTask(task));
    }

    /**
     * 修改作战任务基本信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Task task = taskService.selectTaskById(id);
        mmap.put("task", task);
        return prefix + "/edit";
    }

    /**
     * 修改保存作战任务基本信息
     */
    @RequiresPermissions("data:task:edit")
    @Log(title = "作战任务基本信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Task task)
    {
        return toAjax(taskService.updateTask(task));
    }

    /**
     * 删除作战任务基本信息
     */
    @RequiresPermissions("data:task:remove")
    @Log(title = "作战任务基本信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(taskService.deleteTaskByIds(ids));
    }

    /**
     * 查询作战任务详细
     */
    @RequiresPermissions("data:task:list")
    @GetMapping("/detail/{taskId}")
    public String detail(@PathVariable("taskId") Long taskId, ModelMap mmap)
    {
        mmap.put("task", taskService.selectTaskById(taskId));
        return prefix + "/detail/detail";
    }

    /**
     * 查询作战任务执行信息
     */
    @RequiresPermissions("data:task:list")
    @GetMapping("/exec/{taskId}")
    public String exec(@PathVariable("taskId") Long taskId, ModelMap mmap)
    {
        mmap.put("task", taskService.selectTaskById(taskId));
        return prefix + "/exec/exec";
    }
}
