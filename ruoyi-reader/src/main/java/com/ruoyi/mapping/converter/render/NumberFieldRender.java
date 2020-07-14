package com.ruoyi.mapping.converter.render;

import com.ruoyi.mapping.config.RenderFieldConfig;
import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.util.NumberFormatUtil;
import com.ruoyi.mapping.util.introspector.IntrospectUtil;

import java.text.NumberFormat;

public class NumberFieldRender implements FieldRender {

	@Override
	public String getRenderedValue(Object pojoValue, Object pojo, RenderFieldConfig config) throws MappingException {
		if(pojoValue == null) {
			return "";
		}
		
		NumberFormat numberFormat = NumberFormatUtil.getNumberFormat(config.getBuildFormatStr());
		
		return numberFormat.format(pojoValue);
	}

	@Override
	public boolean canConvert(FieldConfig config) {
		return IntrospectUtil.isTypeMatch(Number.class, config.getType());
	}
}
