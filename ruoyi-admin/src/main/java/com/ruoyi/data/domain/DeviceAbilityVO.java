package com.ruoyi.data.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 设备能力对象 t_ability
 * 
 * @author xusisheng
 * @date 2020-05-03
 */
public class DeviceAbilityVO extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 能力分类 */
    @Excel(name = "能力分类")
    private Integer type;

    /** 频段 */
    @Excel(name = "频段")
    private String bands;

    /** 频率 */
    @Excel(name = "频率")
    private String frequency;

    /** 功率 */
    @Excel(name = "功率")
    private String power;

    /** 范围 */
    @Excel(name = "范围")
    private String scope;

    /** 方向 */
    @Excel(name = "方向")
    private String direction;

    /** 干扰方式 */
    @Excel(name = "干扰方式")
    private String mode;

    private Long deviceId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
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
    public void setScope(String scope) 
    {
        this.scope = scope;
    }

    public String getScope() 
    {
        return scope;
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

    public Long getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("type", getType())
            .append("bands", getBands())
            .append("frequency", getFrequency())
            .append("power", getPower())
            .append("scope", getScope())
            .append("direction", getDirection())
            .append("mode", getMode())
            .append("deviceId", getDeviceId())
            .toString();
    }
}
