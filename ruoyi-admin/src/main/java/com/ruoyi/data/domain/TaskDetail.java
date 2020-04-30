package com.ruoyi.data.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 作战任务详情对象 t_task_detail
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class TaskDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 任务ID */
    @Excel(name = "任务ID")
    private Long taskId;

    /** 执行单位 */
    @Excel(name = "执行单位")
    private String execUnit;

    /** 装备类型 */
    @Excel(name = "装备类型")
    private Integer equipmentType;

    /** 装备ID */
    @Excel(name = "装备ID")
    private Long equipmentId;

    /** 开始时间 */
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

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
    public void setExecUnit(String execUnit) 
    {
        this.execUnit = execUnit;
    }

    public String getExecUnit() 
    {
        return execUnit;
    }
    public void setEquipmentType(Integer equipmentType) 
    {
        this.equipmentType = equipmentType;
    }

    public Integer getEquipmentType() 
    {
        return equipmentType;
    }
    public void setEquipmentId(Long equipmentId) 
    {
        this.equipmentId = equipmentId;
    }

    public Long getEquipmentId() 
    {
        return equipmentId;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("taskId", getTaskId())
            .append("execUnit", getExecUnit())
            .append("equipmentType", getEquipmentType())
            .append("equipmentId", getEquipmentId())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .toString();
    }
}
