package com.thunisoft.parse09xml.bean;

/**
 * 需要转换为文件的哪些列的描述类
 * @author xiegq
 *
 */
public class NeedTransFileColumn {
    // 表名
    private String tableName;
    // 字段名
    private String columnName;
    // 字段中文名，对应xml node的名称
    private String columnCnName;
    public String getTableName() {
        return tableName;
    }
    public String getColumnName() {
        return columnName;
    }
    public String getColumnCnName() {
        return columnCnName;
    }
    public NeedTransFileColumn(String tableName, String columnName, String columnCnName) {
        super();
        this.tableName = tableName;
        this.columnName = columnName;
        this.columnCnName = columnCnName;
    }
    
}
