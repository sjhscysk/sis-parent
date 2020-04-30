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
import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.service.DeviceAbilityService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 设备能力Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/ability")
public class DeviceAbilityController extends BaseController
{
    private String prefix = "data/ability";

    @Autowired
    private DeviceAbilityService deviceAbilityService;

    @RequiresPermissions("data:ability:view")
    @GetMapping()
    public String ability()
    {
        return prefix + "/ability";
    }

    /**
     * 查询设备能力列表
     */
    @RequiresPermissions("data:ability:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(DeviceAbility deviceAbility)
    {
        startPage();
        List<DeviceAbility> list = deviceAbilityService.selectDeviceAbilityList(deviceAbility);
        return getDataTable(list);
    }

    /**
     * 导出设备能力列表
     */
    @RequiresPermissions("data:ability:export")
    @Log(title = "设备能力", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DeviceAbility deviceAbility)
    {
        List<DeviceAbility> list = deviceAbilityService.selectDeviceAbilityList(deviceAbility);
        ExcelUtil<DeviceAbility> util = new ExcelUtil<DeviceAbility>(DeviceAbility.class);
        return util.exportExcel(list, "ability");
    }

    /**
     * 新增设备能力
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存设备能力
     */
    @RequiresPermissions("data:ability:add")
    @Log(title = "设备能力", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DeviceAbility deviceAbility)
    {
        return toAjax(deviceAbilityService.insertDeviceAbility(deviceAbility));
    }

    /**
     * 修改设备能力
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        DeviceAbility deviceAbility = deviceAbilityService.selectDeviceAbilityById(id);
        mmap.put("deviceAbility", deviceAbility);
        return prefix + "/edit";
    }

    /**
     * 修改保存设备能力
     */
    @RequiresPermissions("data:ability:edit")
    @Log(title = "设备能力", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DeviceAbility deviceAbility)
    {
        return toAjax(deviceAbilityService.updateDeviceAbility(deviceAbility));
    }

    /**
     * 删除设备能力
     */
    @RequiresPermissions("data:ability:remove")
    @Log(title = "设备能力", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(deviceAbilityService.deleteDeviceAbilityByIds(ids));
    }
}
