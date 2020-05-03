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
import com.ruoyi.data.domain.Transmitting;
import com.ruoyi.data.service.TransmittingService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 发射系统Controller
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
@Controller
@RequestMapping("/data/transmitting")
public class TransmittingController extends BaseController
{
    private String prefix = "data/transmitting";

    @Autowired
    private TransmittingService transmittingService;

    @RequiresPermissions("data:transmitting:view")
    @GetMapping()
    public String transmitting()
    {
        return prefix + "/transmitting";
    }

    /**
     * 查询发射系统列表
     */
    @RequiresPermissions("data:transmitting:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Transmitting transmitting)
    {
        startPage();
        List<Transmitting> list = transmittingService.selectTransmittingList(transmitting);
        return getDataTable(list);
    }

    /**
     * 导出发射系统列表
     */
    @RequiresPermissions("data:transmitting:export")
    @Log(title = "发射系统", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Transmitting transmitting)
    {
        List<Transmitting> list = transmittingService.selectTransmittingList(transmitting);
        ExcelUtil<Transmitting> util = new ExcelUtil<Transmitting>(Transmitting.class);
        return util.exportExcel(list, "transmitting");
    }

    /**
     * 新增发射系统
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存发射系统
     */
    @RequiresPermissions("data:transmitting:add")
    @Log(title = "发射系统", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Transmitting transmitting)
    {
        return toAjax(transmittingService.insertTransmitting(transmitting));
    }

    /**
     * 修改发射系统
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Transmitting transmitting = transmittingService.selectTransmittingById(id);
        mmap.put("transmitting", transmitting);
        return prefix + "/edit";
    }

    /**
     * 修改保存发射系统
     */
    @RequiresPermissions("data:transmitting:edit")
    @Log(title = "发射系统", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Transmitting transmitting)
    {
        return toAjax(transmittingService.updateTransmitting(transmitting));
    }

    /**
     * 删除发射系统
     */
    @RequiresPermissions("data:transmitting:remove")
    @Log(title = "发射系统", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(transmittingService.deleteTransmittingByIds(ids));
    }
}
