package com.ruoyi.mapping.strategy;

import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.exception.MappingException;

import java.util.List;

public interface ParsingStrategy {
	Object parseRecord(String beanClass,String[] record,List<ParseFieldConfig> fieldConfigurations) throws MappingException;
}
