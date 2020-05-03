package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 装备系统对象 t_equipsys
 * 
 * @author xusisheng
 * @date 2020-05-02
 */
public class Equipsys extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 编码 */
    @Excel(name = "编码")
    private String sn;

    /** 系统名称 */
    @Excel(name = "系统名称")
    private String name;

    /** 率属单位 */
    @Excel(name = "率属单位")
    private String belongsto;

    /** 率属方 */
    @Excel(name = "率属方")
    private Integer onwer;

    /** 部署地 */
    @Excel(name = "部署地")
    private String location;

    /** 覆盖区域 */
    @Excel(name = "覆盖区域")
    private String scope;

    /** 经度 */
    @Excel(name = "经度")
    private String longitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private String latitude;

    /** 海拔 */
    @Excel(name = "海拔")
    private String altitude;

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
    public void setOnwer(Integer onwer) 
    {
        this.onwer = onwer;
    }

    public Integer getOnwer() 
    {
        return onwer;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setScope(String scope) 
    {
        this.scope = scope;
    }

    public String getScope() 
    {
        return scope;
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
            .append("onwer", getOnwer())
            .append("location", getLocation())
            .append("scope", getScope())
            .append("longitude", getLongitude())
            .append("latitude", getLatitude())
            .append("altitude", getAltitude())
            .append("pic", getPic())
            .append("video", getVideo())
            .toString();
    }
}
