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
import com.ruoyi.data.domain.StationDevice;
import com.ruoyi.data.service.StationDeviceService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 台站设备Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/station/device")
public class StationDeviceController extends BaseController
{
    private String prefix = "data/station/device";

    @Autowired
    private StationDeviceService stationDeviceService;

    @RequiresPermissions("data:device:view")
    @GetMapping()
    public String device()
    {
        return prefix + "/device";
    }

    /**
     * 查询台站设备列表
     */
    @RequiresPermissions("data:device:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StationDevice stationDevice)
    {
        startPage();
        List<StationDevice> list = stationDeviceService.selectStationDeviceList(stationDevice);
        return getDataTable(list);
    }

    /**
     * 导出台站设备列表
     */
    @RequiresPermissions("data:device:export")
    @Log(title = "台站设备", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StationDevice stationDevice)
    {
        List<StationDevice> list = stationDeviceService.selectStationDeviceList(stationDevice);
        ExcelUtil<StationDevice> util = new ExcelUtil<StationDevice>(StationDevice.class);
        return util.exportExcel(list, "device");
    }

    /**
     * 新增台站设备
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存台站设备
     */
    @RequiresPermissions("data:device:add")
    @Log(title = "台站设备", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StationDevice stationDevice)
    {
        return toAjax(stationDeviceService.insertStationDevice(stationDevice));
    }

    /**
     * 修改台站设备
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StationDevice stationDevice = stationDeviceService.selectStationDeviceById(id);
        mmap.put("stationDevice", stationDevice);
        return prefix + "/edit";
    }

    /**
     * 修改保存台站设备
     */
    @RequiresPermissions("data:device:edit")
    @Log(title = "台站设备", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StationDevice stationDevice)
    {
        return toAjax(stationDeviceService.updateStationDevice(stationDevice));
    }

    /**
     * 删除台站设备
     */
    @RequiresPermissions("data:device:remove")
    @Log(title = "台站设备", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(stationDeviceService.deleteStationDeviceByIds(ids));
    }
}
