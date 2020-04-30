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
import com.ruoyi.data.domain.Detection;
import com.ruoyi.data.service.DetectionService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 侦测Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/detection")
public class DetectionController extends BaseController
{
    private String prefix = "data/detection";

    @Autowired
    private DetectionService detectionService;

    @RequiresPermissions("data:detection:view")
    @GetMapping()
    public String detection()
    {
        return prefix + "/detection";
    }

    /**
     * 查询侦测列表
     */
    @RequiresPermissions("data:detection:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Detection detection)
    {
        startPage();
        List<Detection> list = detectionService.selectDetectionList(detection);
        return getDataTable(list);
    }

    /**
     * 导出侦测列表
     */
    @RequiresPermissions("data:detection:export")
    @Log(title = "侦测", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Detection detection)
    {
        List<Detection> list = detectionService.selectDetectionList(detection);
        ExcelUtil<Detection> util = new ExcelUtil<Detection>(Detection.class);
        return util.exportExcel(list, "detection");
    }

    /**
     * 新增侦测
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存侦测
     */
    @RequiresPermissions("data:detection:add")
    @Log(title = "侦测", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Detection detection)
    {
        return toAjax(detectionService.insertDetection(detection));
    }

    /**
     * 修改侦测
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Detection detection = detectionService.selectDetectionById(id);
        mmap.put("detection", detection);
        return prefix + "/edit";
    }

    /**
     * 修改保存侦测
     */
    @RequiresPermissions("data:detection:edit")
    @Log(title = "侦测", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Detection detection)
    {
        return toAjax(detectionService.updateDetection(detection));
    }

    /**
     * 删除侦测
     */
    @RequiresPermissions("data:detection:remove")
    @Log(title = "侦测", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(detectionService.deleteDetectionByIds(ids));
    }
}
