package com.ruoyi.biz.controller;

import java.util.List;

import com.alibaba.fastjson.JSON;
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
import com.ruoyi.biz.domain.StationImport;
import com.ruoyi.biz.service.StationImportService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 数据导入Controller
 *
 * @author xusisheng
 * @date 2020-07-29
 */
@Controller
@RequestMapping("/biz/datatimport")
public class StationImportController extends BaseController
{
    private String prefix = "biz/datatimport";

    @Autowired
    private StationImportService stationImportService;

    @RequiresPermissions("biz:datatimport:view")
    @GetMapping()
    public String datatimport()
    {
        return prefix + "/datatimport";
    }

    /**
     * 查询数据导入列表
     */
    @RequiresPermissions("biz:datatimport:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(StationImport stationImport)
    {
        startPage();
        List<StationImport> list = stationImportService.selectStationImportList(stationImport);
        return getDataTable(list);
    }

    /**
     * 导出数据导入列表
     */
    @RequiresPermissions("biz:datatimport:export")
    @Log(title = "数据导入", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(StationImport stationImport)
    {
        List<StationImport> list = stationImportService.selectStationImportList(stationImport);
        ExcelUtil<StationImport> util = new ExcelUtil<StationImport>(StationImport.class);
        return util.exportExcel(list, "datatimport");
    }

    /**
     * 新增数据导入
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存数据导入
     */
    @RequiresPermissions("biz:datatimport:add")
    @Log(title = "数据导入", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(StationImport stationImport)
    {
        return toAjax(stationImportService.insertStationImport(stationImport));
    }

    /**
     * 修改数据导入
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        StationImport stationImport = stationImportService.selectStationImportById(id);
        mmap.put("stationImport", stationImport);
        return prefix + "/edit";
    }

    /**
     * 修改保存数据导入
     */
    @RequiresPermissions("biz:datatimport:edit")
    @Log(title = "数据导入", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(StationImport stationImport)
    {
        return toAjax(stationImportService.updateStationImport(stationImport));
    }

    /**
     * 删除数据导入
     */
    @RequiresPermissions("biz:datatimport:remove")
    @Log(title = "数据导入", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(stationImportService.deleteStationImportByIds(ids));
    }


    /**
     * 导入
     */
    @Log(title = "导入数据", businessType = BusinessType.IMPORT)
    @RequiresPermissions("biz:datatimport:import")
    @PostMapping("/import")
    @ResponseBody
    public AjaxResult loadin(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<StationImport> util = new ExcelUtil<>(StationImport.class);
        List<StationImport> list = util.importExcel(file.getInputStream());
        String message = stationImportService.importStationImport(list, updateSupport);
        return AjaxResult.success(message);
    }

    @RequiresPermissions("biz:datatimport:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate()
    {
        ExcelUtil<StationImport> util = new ExcelUtil<>(StationImport.class);
        return util.importTemplateExcel("_模板");
    }

}
