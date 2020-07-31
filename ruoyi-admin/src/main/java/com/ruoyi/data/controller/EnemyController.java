package com.ruoyi.data.controller;

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
import com.ruoyi.data.domain.Enemy;
import com.ruoyi.data.service.EnemyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 敌情目标Controller
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
@Controller
@RequestMapping("/data/enemy")
public class EnemyController extends BaseController
{
    private String prefix = "data/enemy";

    @Autowired
    private EnemyService enemyService;

    @RequiresPermissions("data:enemy:view")
    @GetMapping()
    public String enemy()
    {
        return prefix + "/enemy";
    }

    /**
     * 查询敌情目标列表
     */
    @RequiresPermissions("data:enemy:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Enemy enemy)
    {
        startPage();
        List<Enemy> list = enemyService.selectEnemyList(enemy);
        return getDataTable(list);
    }

    /**
     * 导出敌情目标列表
     */
    @RequiresPermissions("data:enemy:export")
    @Log(title = "敌情目标", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Enemy enemy)
    {
        List<Enemy> list = enemyService.selectEnemyList(enemy);
        ExcelUtil<Enemy> util = new ExcelUtil<Enemy>(Enemy.class);
        return util.exportExcel(list, "enemy");
    }

    /**
     * 新增敌情目标
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存敌情目标
     */
    @RequiresPermissions("data:enemy:add")
    @Log(title = "敌情目标", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Enemy enemy)
    {
        return toAjax(enemyService.insertEnemy(enemy));
    }

    /**
     * 修改敌情目标
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Enemy enemy = enemyService.selectEnemyById(id);
        mmap.put("enemy", enemy);
        return prefix + "/edit";
    }

    /**
     * 修改保存敌情目标
     */
    @RequiresPermissions("data:enemy:edit")
    @Log(title = "敌情目标", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Enemy enemy)
    {
        return toAjax(enemyService.updateEnemy(enemy));
    }

    /**
     * 删除敌情目标
     */
    @RequiresPermissions("data:enemy:remove")
    @Log(title = "敌情目标", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(enemyService.deleteEnemyByIds(ids));
    }
}
