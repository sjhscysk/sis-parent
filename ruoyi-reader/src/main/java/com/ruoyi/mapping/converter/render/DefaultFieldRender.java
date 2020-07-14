package com.ruoyi.mapping.converter.render;

import com.ruoyi.mapping.config.RenderFieldConfig;
import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.exception.FieldException;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.util.BaseTypeConverter;

public class DefaultFieldRender implements FieldRender {

	@Override
	public String getRenderedValue(Object pojoValue, Object pojo, RenderFieldConfig config) throws MappingException {
		try{
			return (String)BaseTypeConverter.getInstance().convertIfNecessary(pojoValue, String.class);
		}catch(Exception e){
			throw new FieldException(config.getName(), "Failed to Convert Value ["+pojoValue+"] to a String.", e);
		}
	}

	@Override
	public boolean canConvert(FieldConfig config) {
		return true;
	}
}
