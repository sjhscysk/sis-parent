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
import com.ruoyi.data.domain.Disturbed;
import com.ruoyi.data.service.DisturbedService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 干扰功能Controller
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Controller
@RequestMapping("/data/disturbed")
public class DisturbedController extends BaseController
{
    private String prefix = "data/disturbed";

    @Autowired
    private DisturbedService disturbedService;

    @RequiresPermissions("data:disturbed:view")
    @GetMapping()
    public String disturbed()
    {
        return prefix + "/disturbed";
    }

    /**
     * 查询干扰功能列表
     */
    @RequiresPermissions("data:disturbed:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Disturbed disturbed)
    {
        startPage();
        List<Disturbed> list = disturbedService.selectDisturbedList(disturbed);
        return getDataTable(list);
    }

    /**
     * 导出干扰功能列表
     */
    @RequiresPermissions("data:disturbed:export")
    @Log(title = "干扰功能", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Disturbed disturbed)
    {
        List<Disturbed> list = disturbedService.selectDisturbedList(disturbed);
        ExcelUtil<Disturbed> util = new ExcelUtil<Disturbed>(Disturbed.class);
        return util.exportExcel(list, "disturbed");
    }

    /**
     * 新增干扰功能
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存干扰功能
     */
    @RequiresPermissions("data:disturbed:add")
    @Log(title = "干扰功能", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Disturbed disturbed)
    {
        return toAjax(disturbedService.insertDisturbed(disturbed));
    }

    /**
     * 修改干扰功能
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Disturbed disturbed = disturbedService.selectDisturbedById(id);
        mmap.put("disturbed", disturbed);
        return prefix + "/edit";
    }

    /**
     * 修改保存干扰功能
     */
    @RequiresPermissions("data:disturbed:edit")
    @Log(title = "干扰功能", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Disturbed disturbed)
    {
        return toAjax(disturbedService.updateDisturbed(disturbed));
    }

    /**
     * 删除干扰功能
     */
    @RequiresPermissions("data:disturbed:remove")
    @Log(title = "干扰功能", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(disturbedService.deleteDisturbedByIds(ids));
    }
}
