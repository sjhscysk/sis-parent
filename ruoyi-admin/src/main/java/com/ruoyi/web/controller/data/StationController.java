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
import com.ruoyi.data.domain.Station;
import com.ruoyi.data.service.StationService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 台站信息Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/station")
public class StationController extends BaseController
{
    private String prefix = "data/station";

    @Autowired
    private StationService stationService;

    @RequiresPermissions("data:station:view")
    @GetMapping()
    public String station()
    {
        return prefix + "/station";
    }

    /**
     * 查询台站信息列表
     */
    @RequiresPermissions("data:station:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Station station)
    {
        startPage();
        List<Station> list = stationService.selectStationList(station);
        return getDataTable(list);
    }

    /**
     * 导出台站信息列表
     */
    @RequiresPermissions("data:station:export")
    @Log(title = "台站信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Station station)
    {
        List<Station> list = stationService.selectStationList(station);
        ExcelUtil<Station> util = new ExcelUtil<Station>(Station.class);
        return util.exportExcel(list, "station");
    }

    /**
     * 新增台站信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存台站信息
     */
    @RequiresPermissions("data:station:add")
    @Log(title = "台站信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Station station)
    {
        return toAjax(stationService.insertStation(station));
    }

    /**
     * 修改台站信息
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Station station = stationService.selectStationById(id);
        mmap.put("station", station);
        return prefix + "/edit";
    }

    /**
     * 修改保存台站信息
     */
    @RequiresPermissions("data:station:edit")
    @Log(title = "台站信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Station station)
    {
        return toAjax(stationService.updateStation(station));
    }

    /**
     * 删除台站信息
     */
    @RequiresPermissions("data:station:remove")
    @Log(title = "台站信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(stationService.deleteStationByIds(ids));
    }
}
