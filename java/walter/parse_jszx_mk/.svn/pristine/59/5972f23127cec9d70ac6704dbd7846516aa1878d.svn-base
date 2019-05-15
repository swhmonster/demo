package com.thunisoft.parse09xml.bean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/**
 * 解析一个xml所得到的一个表的数据
 * @author xiegq
 *
 */
public class TableData {
    
    // 表名
    private String tableName;
    
    // 列数量
    private int colSize;
    
    // 一个表的数据，可能有多行，一个数组是一行
    private List<Object[]> data = new ArrayList<Object[]>();

    public TableData(String tableName, int colSize) {
        this.tableName = tableName;
        this.colSize = colSize;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    /**
     * 在最后一行的特定位置设置对象
     * @param index 列索引
     * @param obj 对象
     */
    public void setData(int index, Object obj) {
        data.get(data.size() - 1)[index] = obj;   
    }
    
    /**
     * 添加一行
     */
    public void addRow(){
        data.add(new Object[colSize]);
    }

    public List<Object[]> getData() {
        return data;
    }
    
    public int getRowSize() {
        return data.size();
    }
    
    public int getColSize() {
        return colSize;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder(1024);
        sb.append("TableData [tableName=")
          .append(tableName)
          .append(", data=[\r\n");
        for (Object[] obj : data) {
            sb.append("    ");
            sb.append(Arrays.asList(obj));
            sb.append(",\r\n");
        }
        return sb.append("]").toString();
    }
    
}
