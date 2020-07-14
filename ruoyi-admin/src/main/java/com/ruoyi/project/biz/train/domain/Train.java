package com.ruoyi.project.biz.train.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import java.util.Date;

/**
 * 列车时刻对象 t_train
 * 
 * @author xusisheng
 * @date 2019-12-06
 */
public class Train extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Integer id;

    /** 车次 */
    @Excel(name = "车次")
    private String trainCode;

    /** 始发站 */
    @Excel(name = "始发站")
    private String startStation;

    /** 始发时间 */
    @Excel(name = "始发时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 经过站 */
    @Excel(name = "经过站")
    private String arriveStation;

    /** 到达时间 */
    @Excel(name = "到达时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date arriveTme;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }
    public void setTrainCode(String trainCode) {
        this.trainCode = trainCode;
    }

    public String getTrainCode() {
        return trainCode;
    }
    public void setStartStation(String startStation) {
        this.startStation = startStation;
    }

    public String getStartStation() {
        return startStation;
    }
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getStartTime() {
        return startTime;
    }
    public void setArriveStation(String arriveStation) {
        this.arriveStation = arriveStation;
    }

    public String getArriveStation() {
        return arriveStation;
    }
    public void setArriveTme(Date arriveTme) {
        this.arriveTme = arriveTme;
    }

    public Date getArriveTme() {
        return arriveTme;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("trainCode", getTrainCode())
            .append("startStation", getStartStation())
            .append("startTime", getStartTime())
            .append("arriveStation", getArriveStation())
            .append("arriveTme", getArriveTme())
            .toString();
    }
}
