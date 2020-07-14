package com.ruoyi.biz.reader.parse;

import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.config.ParseFieldConfig;
import com.ruoyi.mapping.converter.parser.FieldParser;
import com.ruoyi.mapping.exception.FieldException;
import com.ruoyi.mapping.exception.MappingException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class LongParser implements FieldParser {

	private static Log logger = LogFactory.getLog(LongParser.class);
	public Object getParsedValue(String fieldValue, Object pojo, ParseFieldConfig config) throws MappingException {
		// TODO Auto-generated method stub

		if(config == null )
			throw new FieldException(config.getName(), "DocMappingField config is null");
					
		try{
			if(fieldValue == null || fieldValue.trim().equals("")){
				return null;
			}else{
				if(config.getParseFormatStr() != null && !config.getParseFormatStr().trim().equals("")){
					String formatStr = config.getParseFormatStr().trim();
					int subLen = 0;
					if ( formatStr != null && !formatStr.equals("") ){
						try{
							subLen = Integer.valueOf(formatStr).intValue();
						}catch(Exception ex){
							if(logger.isInfoEnabled()){
								logger.info("Configuration for field "+config.getName() +"->formatStr is not correct.");
							}
							subLen = 0;
						}
					}
				
					if (subLen == fieldValue.length()){
						return new Long(fieldValue);
					}else if( fieldValue.length() >subLen){
						throw new FieldException(config.getName(), "DocMappingField value is too long.");
					}else{
						return new Long(fieldValue);
					}			
			    }
				return new Long(fieldValue);
			}
		}catch(Exception ex){
			if(logger.isInfoEnabled()){
				logger.info("When parse field "+config.getName()+" value to Long throw this exception:"+ex.getMessage());
			}
			throw new FieldException(config.getName(), ex.getMessage(),ex);
		}
	
	}

	public boolean canConvert(FieldConfig config) {
		// TODO Auto-generated method stub
		return false;
	}

}
