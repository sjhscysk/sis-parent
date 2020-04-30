package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 台站信息对象 t_station
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class Station extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键，自增 */
    private Long id;

    /** 编号，唯一性 */
    @Excel(name = "编号，唯一性")
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

    /** 台站类型 */
    @Excel(name = "台站类型")
    private Integer type;

    /** 部署地 */
    @Excel(name = "部署地")
    private String location;

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
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
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
            .append("type", getType())
            .append("location", getLocation())
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
