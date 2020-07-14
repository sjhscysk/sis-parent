package com.ruoyi.mapping.converter.parser;

import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.exception.FieldException;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.util.DateFormat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFieldParser implements FieldParser {

	@Override
	public Object getParsedValue(String fieldValue, Object pojo, ParseFieldConfig config) throws MappingException {
		if(fieldValue == null || fieldValue.trim().length() == 0) {
			return null;
		}
		
		SimpleDateFormat dateFormat = DateFormat.getFormatter(config.getParseFormatStr());
		
		try{
			return dateFormat.parse(fieldValue);
		}catch(Exception e){
			throw new FieldException(config.getName(), "Failed to Convert Value ["+fieldValue+"] for class [Date]", e);
		}
	}

	@Override
	public boolean canConvert(FieldConfig config) {
		return config.getType() == Date.class;
	}

}
