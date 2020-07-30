package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 实时敌情对象 t_ts_enemy
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public class TsEnemy extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 敌情ID */
    @Excel(name = "敌情ID")
    private Long enemyId;

    /** 经度 */
    @Excel(name = "经度")
    private String longitue;

    /** 纬度 */
    @Excel(name = "纬度")
    private String latitude;

    /** 海拔 */
    @Excel(name = "海拔")
    private String altitude;

    /** 速度 */
    @Excel(name = "速度")
    private String speed;

    /** 方向 */
    @Excel(name = "方向")
    private String direction;

    /** 频段 */
    @Excel(name = "频段")
    private String bands;

    /** 频率 */
    @Excel(name = "频率")
    private String frequency;

    /** 功率 */
    @Excel(name = "功率")
    private String power;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEnemyId(Long enemyId) 
    {
        this.enemyId = enemyId;
    }

    public Long getEnemyId() 
    {
        return enemyId;
    }
    public void setLongitue(String longitue) 
    {
        this.longitue = longitue;
    }

    public String getLongitue() 
    {
        return longitue;
    }
    public void setLatitude(String latitude) 
    {
        this.latitude = latitude;
    }

    public String getLatitude() 
    {
        return latitude;
    }
    public void setAltitude(String altitude) 
    {
        this.altitude = altitude;
    }

    public String getAltitude() 
    {
        return altitude;
    }
    public void setSpeed(String speed) 
    {
        this.speed = speed;
    }

    public String getSpeed() 
    {
        return speed;
    }
    public void setDirection(String direction) 
    {
        this.direction = direction;
    }

    public String getDirection() 
    {
        return direction;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("createTime", getCreateTime())
            .append("enemyId", getEnemyId())
            .append("longitue", getLongitue())
            .append("latitude", getLatitude())
            .append("altitude", getAltitude())
            .append("speed", getSpeed())
            .append("direction", getDirection())
            .append("bands", getBands())
            .append("frequency", getFrequency())
            .append("power", getPower())
            .toString();
    }
}
