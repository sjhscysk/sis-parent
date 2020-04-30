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
import com.ruoyi.data.domain.Equipsys;
import com.ruoyi.data.service.EquipsysService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 装备系统Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/equipsys")
public class EquipsysController extends BaseController
{
    private String prefix = "data/equipsys";

    @Autowired
    private EquipsysService equipsysService;

    @RequiresPermissions("data:equipsys:view")
    @GetMapping()
    public String equipsys()
    {
        return prefix + "/equipsys";
    }

    /**
     * 查询装备系统列表
     */
    @RequiresPermissions("data:equipsys:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Equipsys equipsys)
    {
        startPage();
        List<Equipsys> list = equipsysService.selectEquipsysList(equipsys);
        return getDataTable(list);
    }

    /**
     * 导出装备系统列表
     */
    @RequiresPermissions("data:equipsys:export")
    @Log(title = "装备系统", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Equipsys equipsys)
    {
        List<Equipsys> list = equipsysService.selectEquipsysList(equipsys);
        ExcelUtil<Equipsys> util = new ExcelUtil<Equipsys>(Equipsys.class);
        return util.exportExcel(list, "equipsys");
    }

    /**
     * 新增装备系统
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存装备系统
     */
    @RequiresPermissions("data:equipsys:add")
    @Log(title = "装备系统", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Equipsys equipsys)
    {
        return toAjax(equipsysService.insertEquipsys(equipsys));
    }

    /**
     * 修改装备系统
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Equipsys equipsys = equipsysService.selectEquipsysById(id);
        mmap.put("equipsys", equipsys);
        return prefix + "/edit";
    }

    /**
     * 修改保存装备系统
     */
    @RequiresPermissions("data:equipsys:edit")
    @Log(title = "装备系统", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Equipsys equipsys)
    {
        return toAjax(equipsysService.updateEquipsys(equipsys));
    }

    /**
     * 删除装备系统
     */
    @RequiresPermissions("data:equipsys:remove")
    @Log(title = "装备系统", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(equipsysService.deleteEquipsysByIds(ids));
    }

    /**
     * 查询系统详细
     */
    @RequiresPermissions("data:equipsys:list")
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("sysId", id);
        return "data/equipsys/detail/detail";
    }
}
