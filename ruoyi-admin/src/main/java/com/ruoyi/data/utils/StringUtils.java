package com.ruoyi.data.utils;


/**
 * 字符串工具类
 */
public class StringUtils {

    /**
     * 清除空白字符
     * @param source 原字符串
     * @return 清除后字符串
     */
    public static String clearBlank(String source){
        return source.replaceAll("\\s*", "");
    }

}
