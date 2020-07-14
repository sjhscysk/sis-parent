package com.ruoyi.mapping.strategy;

import com.ruoyi.mapping.config.RenderFieldConfig;
import com.ruoyi.mapping.exception.MappingException;

import java.util.List;

public interface BuildingStrategy {
    String[] buildHeader(List<RenderFieldConfig> fieldConfigurations);
    String[] buildBody(Object bean, List<RenderFieldConfig> fieldConfigurations)throws MappingException;
}
