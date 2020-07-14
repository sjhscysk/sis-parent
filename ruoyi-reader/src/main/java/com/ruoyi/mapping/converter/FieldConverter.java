package com.ruoyi.mapping.converter;

import com.ruoyi.mapping.config.FieldConfig;

public interface FieldConverter {
	boolean canConvert(FieldConfig config);
}
