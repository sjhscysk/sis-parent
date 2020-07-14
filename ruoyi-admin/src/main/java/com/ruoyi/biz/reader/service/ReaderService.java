package com.ruoyi.biz.reader.service;

import com.ruoyi.biz.reader.domain.Teacher;
import com.ruoyi.mapping.ReaderMappingParser;
import com.ruoyi.mapping.domain.DocumentParseResult;
import com.ruoyi.mapping.exception.RecordException;
import com.ruoyi.mapping.io.DocumentReader;
import com.ruoyi.mapping.io.csv.CSVReader;
import com.ruoyi.mapping.io.excel.XLSReader;
import com.ruoyi.mapping.io.excel.XLSXReader;
import com.ruoyi.mapping.io.jdkAdapter.DocumentBufferReader;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

@Service
public class ReaderService {

	/**
	 * @param args
	 */
	public static final String XLSX_FILE = "reader/testImport.xlsx";
	public static final String XLS_FILE = "reader/testImport.xls";
	public static final String CSV_FILE = "reader/testImport.csv";
	public static final String TXT_FILE = "reader/testImport.txt";
	public static final String NO_HEADER_FILE = "reader/testImportWithoutHeader.csv";
	public static final String ADVANCED_IMPORT_FILE = "reader/advancedImport.xlsx";

	private void testParseCSV(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testCsvStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(CSV_FILE);
			DocumentReader<String[]> csvReader =  new CSVReader(new BufferedReader(new InputStreamReader(testCsvStream)));

			/***3. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStrArr(csvReader);
			
			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				Teacher tc = (Teacher)resultList.get(i);
				System.out.println(tc.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
	private void testParseXLS(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testExcelStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(XLS_FILE);
			DocumentReader<String[]> excelReader =  new XLSReader(testExcelStream);

			/***4. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStrArr(excelReader);
			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				Teacher tc = (Teacher)resultList.get(i);
				System.out.println(tc.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	private void testParseXLSX(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testExcelStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(XLSX_FILE);
			DocumentReader<String[]> excelReader =  new XLSXReader(testExcelStream);

			/***4. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStrArr(excelReader);
			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				Teacher tc = (Teacher)resultList.get(i);
				System.out.println(tc.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	private void testAdvancedParser(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testExcelStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(ADVANCED_IMPORT_FILE);
			DocumentReader<String[]> excelReader =  new XLSXReader(testExcelStream);

			/***4. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStrArr(excelReader);
			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				System.out.println(resultList.get(i).toString());
			}

		}catch(RecordException e){
			System.err.println("record:"+e.getIdentifier()+" reason:"+e.getMessage());
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	private void testParseNoHeaderFile(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testCsvStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(NO_HEADER_FILE);
			DocumentReader<String[]> csvReader =  new CSVReader(new BufferedReader(new InputStreamReader(testCsvStream)));

			/***4. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStrArr(csvReader);

			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				Teacher tc = (Teacher)resultList.get(i);
				System.out.println(tc.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	private void testParseTXT(ReaderMappingParser docMappingPaser){
		try{

			/****2. Adapter IO**/
			InputStream testCsvStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(TXT_FILE);
			DocumentReader<String> txtReader =  new DocumentBufferReader(new BufferedReader(new InputStreamReader(testCsvStream)));

			/***4. parse and getBeans***/
			DocumentParseResult result = docMappingPaser.parseDocReaderStr(txtReader);

			List resultList = result.getRecords();
			System.out.println("the record size:"+resultList.size());
			for(int i=0;i<resultList.size();i++){
				Teacher tc = (Teacher)resultList.get(i);
				System.out.println(tc.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:/reader-mapper.xml");
		ReaderMappingParser baseImport= (ReaderMappingParser)applicationContext.getBean("baseImport");
		ReaderMappingParser importWithoutColumnName= (ReaderMappingParser)applicationContext.getBean("importWithoutColumnName");
		ReaderMappingParser advancedImport= (ReaderMappingParser)applicationContext.getBean("advancedImport");
		ReaderMappingParser importTextFile= (ReaderMappingParser)applicationContext.getBean("importTextFile");
		//测试没有header的文件解析
		System.out.println("================测试没有header的文件解析==============");
		new ReaderService().testParseNoHeaderFile(importWithoutColumnName);
		//测试包含header的文件解析
		System.out.println("================测试包含header的CSV文件解析==============");
		new ReaderService().testParseCSV(baseImport);
		System.out.println("================测试包含header的XLSX文件解析==============");
		new ReaderService().testParseXLSX(baseImport);
		System.out.println("================测试包含header的XLS文件解析==============");
		new ReaderService().testParseXLS(baseImport);
		System.out.println("================测试包含各个类型字段的XLSX文件解析==============");
		new ReaderService().testAdvancedParser(advancedImport);
		//测试列名表示成字符位置的文件
		System.out.println("================测试列名表示成字符位置的TXT文件解析==============");
		new ReaderService().testParseTXT(importTextFile);
	}

}
