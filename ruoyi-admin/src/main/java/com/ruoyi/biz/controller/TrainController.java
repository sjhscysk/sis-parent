package com.ruoyi.biz.controller;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.biz.domain.Subscribe;
import com.ruoyi.biz.service.SubscribeService;
import com.ruoyi.biz.domain.Train;
import com.ruoyi.biz.service.TrainService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.mq.producer.Producer;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.utils.poi.ExcelUtil;
import org.springframework.web.multipart.MultipartFile;

/**
 * 列车时刻Controller
 *
 * @author xusisheng
 * @date 2019-12-06
 */
@Controller
@RequestMapping("/biz/train")
public class TrainController extends BaseController {
    private String prefix = "biz/train";

    @Autowired
    private TrainService trainService;
    @Autowired
    private Producer producer;
    @Autowired
    private SubscribeService subscribeService;

    @RequiresPermissions("biz:train:view")
    @GetMapping()
    public String train() {
        return prefix + "/train";
    }

    /**
     * 查询列车时刻列表
     */
    @RequiresPermissions("biz:train:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Train train) {
        startPage();
        List<Train> list = trainService.selectTrainList(train);
        return getDataTable(list);
    }

    /**
     * 导出列车时刻列表
     */
    @RequiresPermissions("biz:train:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Train train) {
        List<Train> list = trainService.selectTrainList(train);
        ExcelUtil<Train> util = new ExcelUtil<Train>(Train.class);
        return util.exportExcel(list, "train");
    }

    /**
     * 导入列车时刻列表
     */
    @Log(title = "车次管理", businessType = BusinessType.IMPORT)
    @RequiresPermissions("biz:customer:import")
    @PostMapping("/import")
    @ResponseBody
    public AjaxResult loadin(MultipartFile file, boolean updateSupport) throws Exception {
        ExcelUtil<Train> util = new ExcelUtil<>(Train.class);
        List<Train> list = util.importExcel(file.getInputStream());
        String message = trainService.importTrain(list, updateSupport);

        String json = JSON.toJSONString(list);
        List<Subscribe> ls = getSubscribeList();
        for (Subscribe item : ls) {
            producer.sendToQueue("train_" +item.getFeedCode(), json);
        }

        return AjaxResult.success(message);
    }

    private List<Subscribe> getSubscribeList() {
        Subscribe subscribe = new Subscribe();
        subscribe.setDataCode("train");
        return subscribeService.selectSubscribeList(subscribe);
    }

    @RequiresPermissions("biz:customer:view")
    @GetMapping("/importTemplate")
    @ResponseBody
    public AjaxResult importTemplate()
    {
        ExcelUtil<Train> util = new ExcelUtil<Train>(Train.class);
        return util.importTemplateExcel("列车时刻");
    }

    /**
     * 新增列车时刻
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存列车时刻
     */
    @RequiresPermissions("biz:train:add")
    @Log(title = "列车时刻", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Train train) {
        String json = JSON.toJSONString(train);
        List<Subscribe> ls = getSubscribeList();
        for (Subscribe item : ls) {
            producer.sendToQueue("train_" +item.getFeedCode(), json);
        }

        return toAjax(trainService.insertTrain(train));
    }

    /**
     * 修改列车时刻
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Integer id, ModelMap mmap) {
        Train train = trainService.selectTrainById(id);
        mmap.put("train", train);
        return prefix + "/edit";
    }

    /**
     * 修改保存列车时刻
     */
    @RequiresPermissions("biz:train:edit")
    @Log(title = "列车时刻", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Train train) {
        return toAjax(trainService.updateTrain(train));
    }

    /**
     * 删除列车时刻
     */
    @RequiresPermissions("biz:train:remove")
    @Log(title = "列车时刻", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(trainService.deleteTrainByIds(ids));
    }
}
