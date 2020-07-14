package com.ruoyi.data.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 作战任务执行信息对象 t_task_exec
 * 
 * @author xusisheng
 * @date 2020-05-06
 */
public class TaskExec extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 任务ID */
    @Excel(name = "任务ID")
    private Long taskId;

    /** 任务详情ID */
    @Excel(name = "任务详情ID")
    private Long detailId;

    /** 采集时间 */
    @Excel(name = "采集时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dtCollect;

    /** 经度 */
    @Excel(name = "经度")
    private String latitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private String longitude;

    /** 海拔 */
    @Excel(name = "海拔")
    private String altitude;

    /** 速度 */
    @Excel(name = "速度")
    private Integer speed;

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
    public void setTaskId(Long taskId) 
    {
        this.taskId = taskId;
    }

    public Long getTaskId() 
    {
        return taskId;
    }
    public void setDetailId(Long detailId) 
    {
        this.detailId = detailId;
    }

    public Long getDetailId() 
    {
        return detailId;
    }
    public void setDtCollect(Date dtCollect) 
    {
        this.dtCollect = dtCollect;
    }

    public Date getDtCollect() 
    {
        return dtCollect;
    }
    public void setLatitude(String latitude) 
    {
        this.latitude = latitude;
    }

    public String getLatitude() 
    {
        return latitude;
    }
    public void setLongitude(String longitude) 
    {
        this.longitude = longitude;
    }

    public String getLongitude() 
    {
        return longitude;
    }
    public void setAltitude(String altitude) 
    {
        this.altitude = altitude;
    }

    public String getAltitude() 
    {
        return altitude;
    }
    public void setSpeed(Integer speed) 
    {
        this.speed = speed;
    }

    public Integer getSpeed() 
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("taskId", getTaskId())
            .append("detailId", getDetailId())
            .append("dtCollect", getDtCollect())
            .append("latitude", getLatitude())
            .append("longitude", getLongitude())
            .append("altitude", getAltitude())
            .append("speed", getSpeed())
            .append("direction", getDirection())
            .toString();
    }
}
