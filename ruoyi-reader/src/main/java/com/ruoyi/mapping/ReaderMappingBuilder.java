package com.ruoyi.mapping;

import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.io.DocumentWriter;

import java.io.IOException;
import java.util.List;

/**
 * @author Chen Hui
 * @since 2018/4/18
 */
public interface ReaderMappingBuilder<T> {
    void build(final DocumentWriter<T> output, List records) throws MappingException, IOException;
}
