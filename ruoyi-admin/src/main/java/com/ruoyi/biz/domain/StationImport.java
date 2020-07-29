package com.ruoyi.biz.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数据导入对象 t_station_import
 * 
 * @author xusisheng
 * @date 2020-07-29
 */
public class StationImport extends BaseEntity
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

    /** 战区 */
    @Excel(name = "战区")
    private String theaterCommond;

    /** 类型 */
    @Excel(name = "类型")
    private Integer type;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

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

    /** 频道名 */
    @Excel(name = "频道名")
    private String channelName;

    /** 运行时长 */
    @Excel(name = "运行时长")
    private Integer runTime;

    /** 语言 */
    @Excel(name = "语言")
    private String language;

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
    public void setTheaterCommond(String theaterCommond) 
    {
        this.theaterCommond = theaterCommond;
    }

    public String getTheaterCommond() 
    {
        return theaterCommond;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
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
    public void setChannelName(String channelName) 
    {
        this.channelName = channelName;
    }

    public String getChannelName() 
    {
        return channelName;
    }
    public void setRunTime(Integer runTime) 
    {
        this.runTime = runTime;
    }

    public Integer getRunTime() 
    {
        return runTime;
    }
    public void setLanguage(String language) 
    {
        this.language = language;
    }

    public String getLanguage() 
    {
        return language;
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
            .append("theaterCommond", getTheaterCommond())
            .append("type", getType())
            .append("status", getStatus())
            .append("location", getLocation())
            .append("scope", getScope())
            .append("longitude", getLongitude())
            .append("latitude", getLatitude())
            .append("altitude", getAltitude())
            .append("channelName", getChannelName())
            .append("runTime", getRunTime())
            .append("language", getLanguage())
            .append("pic", getPic())
            .append("video", getVideo())
            .toString();
    }
}
