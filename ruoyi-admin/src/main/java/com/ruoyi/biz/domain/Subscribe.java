package com.ruoyi.biz.domain;

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

    /** 源标识 */
    @Excel(name = "源标识")
    private String feedCode;

    /** 源名称 */
    @Excel(name = "源名称")
    private String feedName;

    /** 数据标识 */
    @Excel(name = "数据标识")
    private String dataCode;

    /** 数据名称 */
    @Excel(name = "数据名称")
    private String dataName;

    /** 数据子分类 */
    @Excel(name = "数据子分类")
    private String subcategory;

    /** 是否订阅 */
    @Excel(name = "是否订阅")
    private Integer isSubscribe;

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
    public void setSubcategory(String subcategory) 
    {
        this.subcategory = subcategory;
    }

    public String getSubcategory() 
    {
        return subcategory;
    }
    public void setIsSubscribe(Integer isSubscribe) 
    {
        this.isSubscribe = isSubscribe;
    }

    public Integer getIsSubscribe() 
    {
        return isSubscribe;
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
            .append("subcategory", getSubcategory())
            .append("isSubscribe", getIsSubscribe())
            .append("dtSubscribe", getDtSubscribe())
            .append("dtUnsubscribe", getDtUnsubscribe())
            .toString();
    }
}
