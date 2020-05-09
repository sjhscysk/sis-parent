package com.ruoyi.data.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订阅关系对象 t_subscribe
 *
 * @author xusisheng
 * @date 2020-05-09
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

    /** 订阅数据分类 */
    @Excel(name = "订阅数据分类")
    private String dataCategory;

    /** 订阅状态 */
    @Excel(name = "订阅状态")
    private Integer status;

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
    public void setStatus(Integer status)
    {
        this.status = status;
    }

    public Integer getStatus()
    {
        return status;
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
                .append("status", getStatus())
                .append("dtSubscribe", getDtSubscribe())
                .append("dtUnsubscribe", getDtUnsubscribe())
                .toString();
    }
}
