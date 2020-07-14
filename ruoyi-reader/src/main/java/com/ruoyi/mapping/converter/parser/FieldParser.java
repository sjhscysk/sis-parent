package com.ruoyi.mapping.converter.parser;

import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.converter.FieldConverter;
import com.ruoyi.mapping.exception.MappingException;

public interface FieldParser extends FieldConverter {
	Object getParsedValue(String fieldValue, Object pojo, ParseFieldConfig config)throws MappingException;
}
