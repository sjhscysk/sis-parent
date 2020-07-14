package com.ruoyi.mapping;

import com.ruoyi.mapping.domain.DocumentParseResult;
import com.ruoyi.mapping.exception.MappingException;
import com.ruoyi.mapping.io.DocumentReader;

import java.io.IOException;

/**
 * @author Chen Hui
 * @since 2018/4/18
 */
public interface ReaderMappingParser {
    DocumentParseResult parseDocReaderStrArr(DocumentReader<String[]> reader) throws MappingException;
    DocumentParseResult parseDocReaderStr(DocumentReader<String> reader) throws MappingException;
}
