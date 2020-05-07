package com.ruoyi.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 装备系统详情对象 t_equipsys_detail
 * 
 * @author xusisheng
 * @date 2020-05-07
 */
public class EquipsysDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增主键 */
    private Long id;

    /** 系统ID */
    @Excel(name = "系统ID")
    private Long equipsysId;

    /** 装备类型 */
    @Excel(name = "装备类型")
    private Integer type;

    /** 装备ID */
    @Excel(name = "装备ID")
    private Long equipmentId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setEquipsysId(Long equipsysId) 
    {
        this.equipsysId = equipsysId;
    }

    public Long getEquipsysId() 
    {
        return equipsysId;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
    {
        return type;
    }
    public void setEquipmentId(Long equipmentId) 
    {
        this.equipmentId = equipmentId;
    }

    public Long getEquipmentId() 
    {
        return equipmentId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("equipsysId", getEquipsysId())
            .append("type", getType())
            .append("equipmentId", getEquipmentId())
            .toString();
    }
}
