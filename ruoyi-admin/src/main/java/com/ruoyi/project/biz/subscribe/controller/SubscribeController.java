package com.ruoyi.project.biz.subscribe.controller;

import java.util.List;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.project.biz.subscribe.domain.Subscribe;
import com.ruoyi.project.biz.subscribe.service.SubscribeService;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 订阅关系Controller
 * 
 * @author xusisheng
 * @date 2019-11-25
 */
@Controller
@RequestMapping("/biz/subscribe")
public class SubscribeController extends BaseController {
    private String prefix = "biz/subscribe";

    @Autowired
    private SubscribeService subscribeService;

    @RequiresPermissions("biz:subscribe:view")
    @GetMapping()
    public String subscribe() {
        return prefix + "/subscribe";
    }

    /**
     * 查询订阅关系列表
     */
    @RequiresPermissions("biz:subscribe:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Subscribe subscribe) {
        startPage();
        List<Subscribe> list = subscribeService.selectSubscribeList(subscribe);
        return getDataTable(list);
    }

    /**
     * 导出订阅关系列表
     */
    @RequiresPermissions("biz:subscribe:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Subscribe subscribe) {
        List<Subscribe> list = subscribeService.selectSubscribeList(subscribe);
        ExcelUtil<Subscribe> util = new ExcelUtil<Subscribe>(Subscribe.class);
        return util.exportExcel(list, "subscribe");
    }

    /**
     * 新增订阅关系
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存订阅关系
     */
    @RequiresPermissions("biz:subscribe:add")
    @Log(title = "订阅关系", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Subscribe subscribe) {
        return toAjax(subscribeService.insertSubscribe(subscribe));
    }

    /**
     * 修改订阅关系
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        Subscribe subscribe = subscribeService.selectSubscribeById(id);
        mmap.put("subscribe", subscribe);
        return prefix + "/edit";
    }

    /**
     * 修改保存订阅关系
     */
    @RequiresPermissions("biz:subscribe:edit")
    @Log(title = "订阅关系", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Subscribe subscribe) {
        return toAjax(subscribeService.updateSubscribe(subscribe));
    }

    /**
     * 删除订阅关系
     */
    @RequiresPermissions("biz:subscribe:remove")
    @Log(title = "订阅关系", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(subscribeService.deleteSubscribeByIds(ids));
    }
}
