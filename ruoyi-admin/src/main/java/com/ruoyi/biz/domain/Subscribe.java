package com.ruoyi.biz.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import java.util.Date;
import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订阅关系对象 t_subscribe
 *
 * @author xusisheng
 * @date 2020-07-14
 */
public class Subscribe extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 订阅源标识 */
    @Excel(name = "订阅源标识")
    private String feedCode;

    /** 订阅源名称 */
    @Excel(name = "订阅源名称")
    private String feedName;

    /** 订阅数据标识 */
    @Excel(name = "订阅数据标识")
    private String dataCode;

    /** 订阅数据名称 */
    @Excel(name = "订阅数据名称")
    private String dataName;

    /** 订阅数据分类 装备系统 equipsys 台站数据 station 设备数据 device 任务数据 task 任务执行信息：task_exec 敌情数据 enemy 气象数据 meteorology 电离层数据 ionosphere */
    @Excel(name = "订阅数据分类 装备系统 equipsys 台站数据 station 设备数据 device 任务数据 task 任务执行信息：task_exec 敌情数据 enemy 气象数据 meteorology 电离层数据 ionosphere")
    private String dataCategory;

    /** 订阅状态，0：未订阅，1：已订阅 */
    @Excel(name = "订阅状态，0：未订阅，1：已订阅")
    private Integer subStatus;

    /** 订阅时间 */
    @Excel(name = "订阅时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dtSubscribe;

    /** 退订时间 */
    @Excel(name = "退订时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dtUnsubscribe;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setFeedCode(String feedCode)
    {
        this.feedCode = feedCode;
    }

    public String getFeedCode()
    {
        return feedCode;
    }
    public void setFeedName(String feedName)
    {
        this.feedName = feedName;
    }

    public String getFeedName()
    {
        return feedName;
    }
    public void setDataCode(String dataCode)
    {
        this.dataCode = dataCode;
    }

    public String getDataCode()
    {
        return dataCode;
    }
    public void setDataName(String dataName)
    {
        this.dataName = dataName;
    }

    public String getDataName()
    {
        return dataName;
    }
    public void setDataCategory(String dataCategory)
    {
        this.dataCategory = dataCategory;
    }

    public String getDataCategory()
    {
        return dataCategory;
    }
    public void setSubStatus(Integer subStatus)
    {
        this.subStatus = subStatus;
    }

    public Integer getSubStatus()
    {
        return subStatus;
    }
    public void setDtSubscribe(Date dtSubscribe)
    {
        this.dtSubscribe = dtSubscribe;
    }

    public Date getDtSubscribe()
    {
        return dtSubscribe;
    }
    public void setDtUnsubscribe(Date dtUnsubscribe)
    {
        this.dtUnsubscribe = dtUnsubscribe;
    }

    public Date getDtUnsubscribe()
    {
        return dtUnsubscribe;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("feedCode", getFeedCode())
                .append("feedName", getFeedName())
                .append("dataCode", getDataCode())
                .append("dataName", getDataName())
                .append("dataCategory", getDataCategory())
                .append("subStatus", getSubStatus())
                .append("dtSubscribe", getDtSubscribe())
                .append("dtUnsubscribe", getDtUnsubscribe())
                .toString();
    }
}