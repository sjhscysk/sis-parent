package com.ruoyi.mapping.converter.parser;

import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.exception.FieldException;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.util.BaseTypeConverter;

public class DefaultFieldParser implements FieldParser {

	@Override
	public Object getParsedValue(String fieldValue, Object pojo, ParseFieldConfig config) throws MappingException {
		try{
			return BaseTypeConverter.getInstance().convertIfNecessary(fieldValue, config.getType());
		}catch(Exception e){
			throw new FieldException(config.getName(), "Failed to Convert Value ["+fieldValue+"] for class ["+config.getType()+"]", e);
		}
	}

	@Override
	public boolean canConvert(FieldConfig config) {
		return true;
	}
}
