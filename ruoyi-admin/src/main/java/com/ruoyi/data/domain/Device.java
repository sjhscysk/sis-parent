package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 设备对象 t_device
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class Device extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 编号 */
    @Excel(name = "编号")
    private String sn;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 率属单位 */
    @Excel(name = "率属单位")
    private String belongsto;

    /** 率属方 */
    @Excel(name = "率属方")
    private Integer owner;

    /** 分类 */
    @Excel(name = "分类")
    private String classify;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

    /** 经度 */
    @Excel(name = "经度")
    private String longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private String latitude;

    /** 海拔 */
    @Excel(name = "海拔")
    private String altitude;

    /** 功能 */
    @Excel(name = "功能")
    private Integer function;

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
    public void setBelongsto(String belongsto) 
    {
        this.belongsto = belongsto;
    }

    public String getBelongsto() 
    {
        return belongsto;
    }
    public void setOwner(Integer owner) 
    {
        this.owner = owner;
    }

    public Integer getOwner() 
    {
        return owner;
    }
    public void setClassify(String classify) 
    {
        this.classify = classify;
    }

    public String getClassify() 
    {
        return classify;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setLongitude(String longitude) 
    {
        this.longitude = longitude;
    }

    public String getLongitude() 
    {
        return longitude;
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
    public void setFunction(Integer function) 
    {
        this.function = function;
    }

    public Integer getFunction() 
    {
        return function;
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
            .append("belongsto", getBelongsto())
            .append("owner", getOwner())
            .append("classify", getClassify())
            .append("status", getStatus())
            .append("longitude", getLongitude())
            .append("latitude", getLatitude())
            .append("altitude", getAltitude())
            .append("function", getFunction())
            .append("pic", getPic())
            .append("video", getVideo())
            .toString();
    }
}
