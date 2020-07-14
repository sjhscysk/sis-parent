package com.ruoyi.biz.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 客户关系对象 t_customer
 * 
 * @author xusisheng
 * @date 2020-07-14
 */
public class Customer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 公司 */
    @Excel(name = "公司")
    private String company;

    /** 时间 */
    @Excel(name = "时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date starttime;

    /** 卡号 */
    @Excel(name = "卡号")
    private String cardnumber;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setCompany(String company) 
    {
        this.company = company;
    }

    public String getCompany() 
    {
        return company;
    }
    public void setStarttime(Date starttime) 
    {
        this.starttime = starttime;
    }

    public Date getStarttime() 
    {
        return starttime;
    }
    public void setCardnumber(String cardnumber) 
    {
        this.cardnumber = cardnumber;
    }

    public String getCardnumber() 
    {
        return cardnumber;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("company", getCompany())
            .append("starttime", getStarttime())
            .append("cardnumber", getCardnumber())
            .toString();
    }
}
