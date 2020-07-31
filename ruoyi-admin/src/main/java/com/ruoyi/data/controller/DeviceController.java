package com.ruoyi.data.controller;

import java.util.List;

import com.ruoyi.data.domain.Ability;
import com.ruoyi.data.domain.DeviceAbility;
import com.ruoyi.data.domain.DeviceAbilityVO;
import com.ruoyi.data.service.AbilityService;
import com.ruoyi.data.service.DeviceAbilityService;
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
import com.ruoyi.data.domain.Device;
import com.ruoyi.data.service.DeviceService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 设备Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/device")
class DeviceController extends BaseController
{
    private String prefix = "data/device";

    @Autowired
    private DeviceService deviceService;
    @Autowired
    private DeviceAbilityService deviceAbilityService;
    @Autowired
    private AbilityService abilityService;

    @RequiresPermissions("data:device:view")
    @GetMapping()
    public String device()
    {
        return prefix + "/device";
    }

    /**
     * 查询设备列表
     */
    @RequiresPermissions("data:device:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Device device)
    {
        startPage();
        List<Device> list = deviceService.selectDeviceList(device);
        return getDataTable(list);
    }

    /**
     * 导出设备列表
     */
    @RequiresPermissions("data:device:export")
    @Log(title = "设备", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Device device)
    {
        List<Device> list = deviceService.selectDeviceList(device);
        ExcelUtil<Device> util = new ExcelUtil<Device>(Device.class);
        return util.exportExcel(list, "device");
    }

    /**
     * 新增设备
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存设备
     */
    @RequiresPermissions("data:device:add")
    @Log(title = "设备", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Device device)
    {
        return toAjax(deviceService.insertDevice(device));
    }

    /**
     * 修改设备
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Device device = deviceService.selectDeviceById(id);
        mmap.put("device", device);
        return prefix + "/edit";
    }

    /**
     * 修改保存设备
     */
    @RequiresPermissions("data:device:edit")
    @Log(title = "设备", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Device device)
    {
        return toAjax(deviceService.updateDevice(device));
    }

    /**
     * 删除设备
     */
    @RequiresPermissions("data:device:remove")
    @Log(title = "设备", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(deviceService.deleteDeviceByIds(ids));
    }

    /**
     * 分配能力
     */
    @RequiresPermissions("data:device:edit")
    @GetMapping("/ability/{deviceId}")
    public String ability(@PathVariable("deviceId") Long deviceId, ModelMap mmap)
    {
        mmap.put("device", deviceService.selectDeviceById(deviceId));
        return prefix + "/ability";
    }

    /**
     * 选择能力
     */
    @GetMapping("/ability/selectAbility/{deviceId}")
    public String selectAbility(@PathVariable("deviceId") Long deviceId, ModelMap mmap)
    {
        mmap.put("device", deviceService.selectDeviceById(deviceId));
        return prefix + "/selectAbility";
    }

    /**
     * 取消能力
     */
    @RequiresPermissions("data:device:remove")
    @Log(title = "设备", businessType = BusinessType.GRANT)
    @PostMapping("/ability/cancel")
    @ResponseBody
    public AjaxResult cancelAbility(DeviceAbility deviceAbility)
    {
        return toAjax(deviceAbilityService.deleteDeviceAbility(deviceAbility));
    }

    /**
     * 批量选择设备能力
     */
    @Log(title = "设备", businessType = BusinessType.GRANT)
    @PostMapping("/ability/selectAll")
    @ResponseBody
    public AjaxResult selectAbilityAll(Long deviceId, String abilityIds)
    {
        return toAjax(deviceAbilityService.batchInsertDeviceAbility(deviceId, abilityIds));
    }

    /**
     * 批量取消能力
     */
    @Log(title = "设备", businessType = BusinessType.GRANT)
    @PostMapping("/ability/cancelAll")
    @ResponseBody
    public AjaxResult cancelAbilityAll(Long deviceId, String abilityIds)
    {
        return toAjax(deviceAbilityService.batchDeleteDeviceAbility(deviceId, abilityIds));
    }

    /**
     * 查询已分配设备能力列表
     */
    @RequiresPermissions("data:device:list")
    @PostMapping("/ability/allocatedList")
    @ResponseBody
    public TableDataInfo allocatedList(DeviceAbility deviceAbility)
    {
        startPage();
        List<Ability> list = abilityService.selectAllocatedList(deviceAbility.getDeviceId());
        return getDataTable(list);
    }

    /**
     * 查询未分配设备能力列表
     */
    @RequiresPermissions("data:device:list")
    @PostMapping("/ability/unallocatedList")
    @ResponseBody
    public TableDataInfo unallocatedList(DeviceAbilityVO deviceAbilityVO)
    {
        startPage();
        List<Ability> list = abilityService.selectUnallocatedList(deviceAbilityVO);
        return getDataTable(list);
    }
}
