package com.ruoyi.web.controller.data;

import java.util.List;

import com.ruoyi.data.domain.*;
import com.ruoyi.data.service.DeviceService;
import com.ruoyi.data.service.EquipsysDetailService;
import com.ruoyi.data.service.StationService;
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
    @Autowired
    private EquipsysDetailService equipsysDetailService;
    @Autowired
    private StationService stationService;
    @Autowired
    private DeviceService deviceService;

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
     * 分配台站
     */
    @RequiresPermissions("data:equipsys:list")
    @GetMapping("/station/{id}")
    public String detail(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("equipsys", equipsysService.selectEquipsysById(id));
        mmap.put("type", 0);
        return "data/equipsys/station";
    }

    /**
     * 分配设备
     */
    @RequiresPermissions("data:equipsys:list")
    @GetMapping("/device/{id}")
    public String device(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("equipsys", equipsysService.selectEquipsysById(id));
        mmap.put("type", 1);
        return "data/equipsys/device";
    }

    /**
     * 选择台站
     */
    @GetMapping("/equip/selectStation/{id}")
    public String selectStation(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("equipsys", equipsysService.selectEquipsysById(id));
        mmap.put("type", 0);
        return prefix + "/selectStation";
    }

    /**
     * 选择设备
     */
    @GetMapping("/equip/selectDevice/{id}")
    public String selectDevice(@PathVariable("id") Long id, ModelMap mmap)
    {
        mmap.put("equipsys", equipsysService.selectEquipsysById(id));
        mmap.put("type", 1);
        return prefix + "/selectDevice";
    }

    /**
     * 选中
     */
    @Log(title = "装备系统", businessType = BusinessType.GRANT)
    @PostMapping("/equip/selectAll")
    @ResponseBody
    public AjaxResult selectDeviceAll(Long equipsysId, Integer type, String deviceIds)
    {
        return toAjax(equipsysDetailService.batchInsert(equipsysId, type, deviceIds));
    }

    /**
     * 取消
     */
    @RequiresPermissions("data:device:remove")
    @Log(title = "装备系统", businessType = BusinessType.GRANT)
    @PostMapping("/equip/cancel")
    @ResponseBody
    public AjaxResult cancelDevice(Long equipsysId, Integer type, Long id)
    {
        return toAjax(equipsysDetailService.delete(equipsysId, type, id));
    }

    /**
     * 批量取消
     */
    @Log(title = "装备系统", businessType = BusinessType.GRANT)
    @PostMapping("/equip/cancelAll")
    @ResponseBody
    public AjaxResult cancelDeviceAll(Long equipsysId, Integer type, String ids)
    {
        return toAjax(equipsysDetailService.batchDelete(equipsysId, type, ids));
    }

    /**
     * 查询已分配列表
     */
    @RequiresPermissions("data:equipsys:list")
    @PostMapping("/equip/allocatedList")
    @ResponseBody
    public TableDataInfo allocatedList(RelationDeviceVO relationDeviceVO)
    {
        startPage();
        switch(relationDeviceVO.getType()) {
            case 0:
                return getDataTable(stationService.selectAllocatedList(relationDeviceVO.getEquipsysId()));
            case 1:
            default:
                return getDataTable(deviceService.selectAllocatedListOfEquipsys(relationDeviceVO.getEquipsysId()));
        }
    }

    /**
     * 查询未分配列表
     */
    @RequiresPermissions("data:equipsys:list")
    @PostMapping("/equip/unallocatedList")
    @ResponseBody
    public TableDataInfo unallocatedList(RelationDeviceVO relationDeviceVO)
    {
        startPage();
        switch(relationDeviceVO.getType()) {
            case 0:
                return getDataTable(stationService.selectUnallocatedList(relationDeviceVO));
            case 1:
            default:
                return getDataTable(deviceService.selectUnallocatedList(relationDeviceVO));
        }
    }
}
