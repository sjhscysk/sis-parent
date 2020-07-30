package com.ruoyi.biz.controller;

import com.ruoyi.biz.domain.Playback;
import com.ruoyi.biz.domain.Subscribe;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.framework.web.domain.Server;
import com.ruoyi.system.domain.SysDictData;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysDictDataService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.biz.service.TsEnemyHistoryService;
import com.ruoyi.common.core.controller.BaseController;

import java.util.List;

/**
 * 态势回放Controller
 *
 * @author xusisheng
 * @date 2020-07-29
 */
@Controller
@RequestMapping("/biz/playback")
public class TsEnemyHistoryController extends BaseController
{
    private String prefix = "biz/playback";

    @Autowired
    private TsEnemyHistoryService tsEnemyHistoryService;
    @Autowired
    private ISysDictDataService dictDataService;

    /**
     * 回放设置
     * @param mmap
     * @return
     * @throws Exception
     */
    @RequiresPermissions("biz:playback:view")
    @GetMapping()
    public String playback(ModelMap mmap) throws Exception
    {
        SysDictData dictData = new SysDictData();
        dictData.setDictType("sub_data_category");
        List<SysDictData> list = dictDataService.selectDictDataList(dictData);
        mmap.put("roles", list);
        return prefix + "/playback";
    }

    /**
     * 回放
     */
    @RequiresPermissions("biz:playback:add")
    @PostMapping("/play")
    @ResponseBody
    public AjaxResult play(Playback playback) {
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                //
            }
        });
        t.start();
        return AjaxResult.success("设置完成，回放即将开始....");
    }
}
