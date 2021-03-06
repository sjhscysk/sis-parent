/**
 *
 *
 *
 * Copyright (c) 2011 State Street Corporation, 1 Lincoln st, Boston, MA
 * Global Market Technology
 * All rights reserved.
 *
*/
package com.ruoyi.biz.reader.parse;

import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.converter.parser.FieldParser;
import com.ruoyi.mapping.exception.FieldException;
import com.ruoyi.mapping.exception.MappingException;

import java.text.SimpleDateFormat;

/**
 * For copy/paste date field.
 *
 */
public class DateParser implements FieldParser {

	public Object getParsedValue(String fieldValue, Object pojo, ParseFieldConfig config) throws MappingException{
		if(config == null || config.getParseFormatStr() == null)
			throw new FieldException(config.getName(), "Invalid Format Expression for NumDate.");
		
		if(fieldValue == null || "".equals(fieldValue)){
			return null;
		}
		
		String configStr = config.getParseFormatStr();
		//		 default split delimiter as ";"
		String format[] = configStr.split(";");
		SimpleDateFormat dateFormat = null ;
		
		int index = 0;
		for ( index=0; index < format.length ; index++){
			if( fieldValue.length() <= format[index].length() ){
				try{
					dateFormat = new SimpleDateFormat();
					dateFormat.applyPattern(format[index]);
					return dateFormat.parse(fieldValue);
				}catch(Exception ex){
					//TODO do nothing
				}			
			}	
		}
		
		if( format.length == index ){
			throw new FieldException(config.getName(), "Invalid Format Expression for Date.");
		}				
		return null;
	}

	public boolean canConvert(FieldConfig config) {
		return false;
	}
}
