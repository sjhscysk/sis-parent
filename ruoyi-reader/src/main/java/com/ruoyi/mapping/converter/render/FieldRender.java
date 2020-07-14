package com.ruoyi.mapping.converter.render;

import com.ruoyi.mapping.config.RenderFieldConfig;
import com.ruoyi.mapping.converter.FieldConverter;
import com.ruoyi.mapping.exception.MappingException;

public interface FieldRender extends FieldConverter {
	String getRenderedValue(Object pojoValue, Object pojo, RenderFieldConfig config)throws MappingException;

}
