package com.ruoyi.data.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 敌情目标对象 t_enemy
 * 
 * @author xusisheng
 * @date 2020-05-04
 */
public class Enemy extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 目标类型 */
    @Excel(name = "目标类型")
    private String type;

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

    /** 开始时间 */
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 目标企图 */
    @Excel(name = "目标企图")
    private String intention;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

    /** 图片地址 */
    @Excel(name = "图片地址")
    private String pic;

    /** 视频地址 */
    @Excel(name = "视频地址")
    private String video;

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
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
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
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setIntention(String intention) 
    {
        this.intention = intention;
    }

    public String getIntention() 
    {
        return intention;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setPic(String pic) 
    {
        this.pic = pic;
    }

    public String getPic() 
    {
        return pic;
    }
    public void setVideo(String video) 
    {
        this.video = video;
    }

    public String getVideo() 
    {
        return video;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("type", getType())
            .append("longitue", getLongitue())
            .append("latitude", getLatitude())
            .append("altitude", getAltitude())
            .append("speed", getSpeed())
            .append("direction", getDirection())
            .append("bands", getBands())
            .append("frequency", getFrequency())
            .append("power", getPower())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("intention", getIntention())
            .append("status", getStatus())
            .append("pic", getPic())
            .append("video", getVideo())
            .toString();
    }
}
