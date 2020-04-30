package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 干扰功能对象 t_disturbed
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class Disturbed extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 频段 */
    @Excel(name = "频段")
    private String bands;

    /** 频率 */
    @Excel(name = "频率")
    private String frequency;

    /** 功率或强度 */
    @Excel(name = "功率或强度")
    private String power;

    /** 范围 */
    @Excel(name = "范围")
    private String range;

    /** 方向 */
    @Excel(name = "方向")
    private String direction;

    /** 干扰方式 */
    @Excel(name = "干扰方式")
    private String mode;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setBands(String bands) 
    {
        this.bands = bands;
    }

    public String getBands() 
    {
        return bands;
    }
    public void setFrequency(String frequency) 
    {
        this.frequency = frequency;
    }

    public String getFrequency() 
    {
        return frequency;
    }
    public void setPower(String power) 
    {
        this.power = power;
    }

    public String getPower() 
    {
        return power;
    }
    public void setRange(String range) 
    {
        this.range = range;
    }

    public String getRange() 
    {
        return range;
    }
    public void setDirection(String direction) 
    {
        this.direction = direction;
    }

    public String getDirection() 
    {
        return direction;
    }
    public void setMode(String mode) 
    {
        this.mode = mode;
    }

    public String getMode() 
    {
        return mode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("bands", getBands())
            .append("frequency", getFrequency())
            .append("power", getPower())
            .append("range", getRange())
            .append("direction", getDirection())
            .append("mode", getMode())
            .toString();
    }
}
