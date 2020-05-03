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
import com.ruoyi.data.domain.Ability;
import com.ruoyi.data.service.AbilityService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 设备能力Controller
 * 
 * @author xusisheng
 * @date 2020-05-03
 */
@Controller
@RequestMapping("/data/ability")
public class AbilityController extends BaseController
{
    private String prefix = "data/ability";

    @Autowired
    private AbilityService abilityService;

    @RequiresPermissions("data:ability:view")
    @GetMapping()
    public String ability()
    {
        return prefix + "/ability";
    }

    /**
     * 查询干扰功能列表
     */
    @RequiresPermissions("data:ability:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Ability ability)
    {
        startPage();
        List<Ability> list = abilityService.selectAbilityList(ability);
        return getDataTable(list);
    }

    /**
     * 新增干扰功能
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存干扰功能
     */
    @RequiresPermissions("data:ability:add")
    @Log(title = "干扰功能", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Ability ability)
    {
        return toAjax(abilityService.insertAbility(ability));
    }

    /**
     * 修改干扰功能
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Ability ability = abilityService.selectAbilityById(id);
        mmap.put("ability", ability);
        return prefix + "/edit";
    }

    /**
     * 修改保存干扰功能
     */
    @RequiresPermissions("data:ability:edit")
    @Log(title = "干扰功能", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Ability ability)
    {
        return toAjax(abilityService.updateAbility(ability));
    }

    /**
     * 删除干扰功能
     */
    @RequiresPermissions("data:ability:remove")
    @Log(title = "干扰功能", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(abilityService.deleteAbilityByIds(ids));
    }
}
