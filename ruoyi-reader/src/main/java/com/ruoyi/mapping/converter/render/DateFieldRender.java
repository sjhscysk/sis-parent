package com.ruoyi.mapping.converter.render;

import com.ruoyi.mapping.config.FieldConfig;
import com.ruoyi.mapping.config.RenderFieldConfig;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.util.DateFormat;
import com.ruoyi.mapping.util.introspector.IntrospectUtil;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFieldRender implements FieldRender {

	@Override
	public String getRenderedValue(Object pojoValue, Object pojo, RenderFieldConfig config) throws MappingException {

		if(pojoValue == null) {
			return "";
		}
		SimpleDateFormat dateFormat = DateFormat.getFormatter(config.getBuildFormatStr());
		if(dateFormat==null){
			return pojoValue.toString();
		}
		return dateFormat.format((Date)pojoValue);
	}

	@Override
	public boolean canConvert(FieldConfig config) {
		return IntrospectUtil.isTypeMatch(Date.class, config.getType());
	}

}
