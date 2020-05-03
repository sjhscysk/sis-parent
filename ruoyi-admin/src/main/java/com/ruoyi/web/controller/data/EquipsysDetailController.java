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
import com.ruoyi.data.domain.EquipsysDetail;
import com.ruoyi.data.service.EquipsysDetailService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 装备系统详情Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/equipsys/detail")
public class EquipsysDetailController extends BaseController
{
    private String prefix = "data/equipsys/detail";

    @Autowired
    private EquipsysDetailService equipsysDetailService;

    @RequiresPermissions("data:equipsys:view")
    @GetMapping()
    public String detail()
    {
        return prefix + "/detail";
    }

    /**
     * 查询装备系统详情列表
     */
    @RequiresPermissions("data:equipsys:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EquipsysDetail equipsysDetail)
    {
        startPage();
        List<EquipsysDetail> list = equipsysDetailService.selectEquipsysDetailList(equipsysDetail);
        return getDataTable(list);
    }

    /**
     * 导出装备系统详情列表
     */
    @RequiresPermissions("data:equipsys:export")
    @Log(title = "装备系统详情", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EquipsysDetail equipsysDetail)
    {
        List<EquipsysDetail> list = equipsysDetailService.selectEquipsysDetailList(equipsysDetail);
        ExcelUtil<EquipsysDetail> util = new ExcelUtil<EquipsysDetail>(EquipsysDetail.class);
        return util.exportExcel(list, "detail");
    }

    /**
     * 新增装备系统详情
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装备系统详情
     */
    @RequiresPermissions("data:equipsys:add")
    @Log(title = "装备系统详情", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EquipsysDetail equipsysDetail)
    {
        return toAjax(equipsysDetailService.insertEquipsysDetail(equipsysDetail));
    }

    /**
     * 修改装备系统详情
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        EquipsysDetail equipsysDetail = equipsysDetailService.selectEquipsysDetailById(id);
        mmap.put("equipsysDetail", equipsysDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存装备系统详情
     */
    @RequiresPermissions("data:equipsys:edit")
    @Log(title = "装备系统详情", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EquipsysDetail equipsysDetail)
    {
        return toAjax(equipsysDetailService.updateEquipsysDetail(equipsysDetail));
    }

    /**
     * 删除装备系统详情
     */
    @RequiresPermissions("data:equipsys:remove")
    @Log(title = "装备系统详情", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(equipsysDetailService.deleteEquipsysDetailByIds(ids));
    }
}
