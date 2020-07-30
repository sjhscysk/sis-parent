package com.ruoyi.biz.domain;

import com.ruoyi.common.core.domain.BaseEntity;

public class Playback extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /** 态势数据分类 */
    private Long[] roleIds;

    /** 回放速率 */
    private String rate;

    public Long[] getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(Long[] roleIds) {
        this.roleIds = roleIds;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }
}
