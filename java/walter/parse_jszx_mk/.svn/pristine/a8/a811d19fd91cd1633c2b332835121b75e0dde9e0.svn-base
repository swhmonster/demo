package com.thunisoft.parse09xml.util;

import java.util.HashMap;
import java.util.Map;

/**
 * 用于判断数据包类型的工具类
 * @author xiegq
 *
 */
public class ZipTypeUtil {
    
    private static final Map<String, Integer> name2type = new HashMap<String, Integer>();
    
    /**
     * 数据包前缀：案件
     */
    public static final String ZIP_TYPE_AJ = "AJ";
    
    /**
     * 数据包前缀：机构
     */
    public static final String ZIP_TYPE_JG = "JG";
    
    /**
     * 数据包前缀：案件删除
     */
    public static final String ZIP_TYPE_DL = "DEL";
    /**
     * 数据包前缀：其他案件
     */
    public static final String ZIP_TYPE_AQ = "AQ";
    
    static {
        name2type.put(ZIP_TYPE_AJ, 1);
        name2type.put(ZIP_TYPE_JG, 2);
        name2type.put(ZIP_TYPE_DL, 3);
        name2type.put(ZIP_TYPE_AQ, 4);
    }

	
	   /**
     * 判断是否是案件数据
     * @param fd
     * @return
     */
    public static boolean isAjData(String zipFileName) {
        return zipFileName.startsWith(ZipTypeUtil.ZIP_TYPE_AJ);
    }
    
    /**
     * 判断是否是组织机构数据
     * @param zipFileName
     * @return
     */
    public static boolean isZzjgData(String zipFileName) {
        return zipFileName.startsWith(ZipTypeUtil.ZIP_TYPE_JG);
    }
    
    /**
     * 是否是删除案件请求
     * @param zipFileName
     * @return
     */
    public static boolean isDelAjReq(String zipFileName) {
        return zipFileName.startsWith(ZipTypeUtil.ZIP_TYPE_DL);
    }
    
    /**
     * 是否是其他案件
     * @param zipFileName
     * @return
     */
    public static boolean isAqAjReq(String zipFileName) {
        return zipFileName.startsWith(ZipTypeUtil.ZIP_TYPE_AQ);
    }
    /**
     * 获取文件类型的数字表达
     * @param zipFileName
     * @return
     */
    public static int getTypeAsInt(String zipFileName) {
        return name2type.get(zipFileName.split("_")[0]);
    }
    
    public static String getType(String zipFileName) {
        return zipFileName.split("_")[0];
    }
    
    /**
     * 
     * @param key
     * @return
     */
    public static boolean containKeyType(String key){
    	return name2type.containsKey(key);
    }
    
    
}
