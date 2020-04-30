package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 发射系统对象 t_transmitting
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class Transmitting extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 输出功率 */
    @Excel(name = "输出功率")
    private String power;

    /** 频段 */
    @Excel(name = "频段")
    private String bands;

    /** 频率 */
    @Excel(name = "频率")
    private String frequency;

    /** 覆盖范围，与功率相关 */
    @Excel(name = "覆盖范围，与功率相关")
    private String range;

    /** 方向 */
    @Excel(name = "方向")
    private String direction;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setPower(String power) 
    {
        this.power = power;
    }

    public String getPower() 
    {
        return power;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("power", getPower())
            .append("bands", getBands())
            .append("frequency", getFrequency())
            .append("range", getRange())
            .append("direction", getDirection())
            .toString();
    }
}
