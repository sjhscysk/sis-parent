package com.ruoyi.data.domain;

import java.util.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 作战任务基本信息对象 t_task
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class Task extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 任务编码 */
    @Excel(name = "任务编码")
    private String sn;

    /** 任务名称 */
    @Excel(name = "任务名称")
    private String name;

    /** 任务类型 */
    @Excel(name = "任务类型")
    private Integer type;

    /** 目的 */
    @Excel(name = "目的")
    private String purpose;

    /** 区域 */
    @Excel(name = "区域")
    private String region;

    /** 来源 */
    @Excel(name = "来源")
    private String source;

    /** 开始时间 */
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 任务描述 */
    @Excel(name = "任务描述")
    private String description;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

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
    public void setSn(String sn) 
    {
        this.sn = sn;
    }

    public String getSn() 
    {
        return sn;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setPurpose(String purpose) 
    {
        this.purpose = purpose;
    }

    public String getPurpose() 
    {
        return purpose;
    }
    public void setRegion(String region) 
    {
        this.region = region;
    }

    public String getRegion() 
    {
        return region;
    }
    public void setSource(String source) 
    {
        this.source = source;
    }

    public String getSource() 
    {
        return source;
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
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
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
            .append("sn", getSn())
            .append("name", getName())
            .append("type", getType())
            .append("purpose", getPurpose())
            .append("region", getRegion())
            .append("source", getSource())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("description", getDescription())
            .append("remarks", getRemarks())
            .append("status", getStatus())
            .append("pic", getPic())
            .append("video", getVideo())
            .toString();
    }
}
