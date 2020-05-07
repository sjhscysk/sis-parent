package com.ruoyi.data.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 设备对象 t_device
 * 
 * @author xusisheng
 * @date 2020-04-30
 */
public class RelationDeviceVO extends BaseEntity
{
    private static final long serialVersionUID = 1L;
    private Long equipsysId;
    private Integer type;
    private Long relationId;        //台站或设备ID
    private String name;
    private String belongsto;
    private Integer owner;
    private String classify;
    private Integer function;

    public Long getEquipsysId() {
        return equipsysId;
    }

    public void setEquipsysId(Long equipsysId) {
        this.equipsysId = equipsysId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Long getRelationId() {
        return relationId;
    }

    public void setRelationId(Long relationId) {
        this.relationId = relationId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBelongsto() {
        return belongsto;
    }

    public void setBelongsto(String belongsto) {
        this.belongsto = belongsto;
    }

    public Integer getOwner() {
        return owner;
    }

    public void setOwner(Integer owner) {
        this.owner = owner;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public Integer getFunction() {
        return function;
    }

    public void setFunction(Integer function) {
        this.function = function;
    }
}
