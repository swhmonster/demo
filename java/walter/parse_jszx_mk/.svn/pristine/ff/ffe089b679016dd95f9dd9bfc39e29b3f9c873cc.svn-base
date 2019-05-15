package com.thunisoft.parse09xml.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用于描述一个表的结构信息，这些信息是从配置文件加载的
 * @author xiegq
 *
 */
public class TableDescriptor {
    
    // 表名
    private String tableName;
    
    // 列名称集合
    private List<String> columnNames = new ArrayList<String>();
    
    private List<String> colTypes = new ArrayList<String>();
    
    // 列中文名称集合 顺序与@columnNames 对应
    private List<String> columnCnNames = new ArrayList<String>();
    
    // 列数量
    private int columnSize;

    // 列对应在insert语句中的索引 <列中文名, 顺序>
    private Map<String, Integer> cnColumnIndexs = new HashMap<String, Integer>();

    private Map<String, Integer> columnIndexs = new HashMap<String, Integer>();
    
    // 列对应的类型  <列中文名, 类型>
    private Map<String, String> columnTypes = new HashMap<String, String>();
    // 列对应类型<列中文名，类型长度>
    private Map<String,Integer> colMaxLens = new HashMap<String,Integer>();
    // <本表的字段名, 关联字段的表名#字段名> 如 <N_XH, DB_XSYS..T_XSYSBGR#N_XH>
    private Map<String, String> refColumns = new HashMap<String, String>();
    
    // 主键中文名
    private String pkName;
    // 外键中文名
    private String fkName;
    // 此表相对于主表的层级，主表是0
    private int level = -1;
    
    private String insertSql; 
    
    public TableDescriptor(String tableName) {
        super();
        this.tableName = tableName;
    }
    
    public Map<String, String> getRefColumns() {
        return refColumns;
    }

    public void addRefColumn(String colName, String refColumn) {
        refColumns.put(colName, refColumn);
    }

    public void setPkName(String pkName) {
        this.pkName = pkName;
    }

    public void setFkName(String fkName) {
        this.fkName = fkName;
    }
    
    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getColumnSize() {
        return columnSize;
    }
    
    public String getTableName() {
        return tableName;
    }
    
    public String getInsertSql() {
        return insertSql;
    }
    
    public Map<String, String> getColumnTypes() {
        return columnTypes;
    }
    
    public String getColumnType(int index) {
        return colTypes.get(index);
    }
    
    public int getColumnIndex(String colName) {
        if (columnIndexs.containsKey(colName)) {
            return columnIndexs.get(colName);
        }
        return -1;
    }
    
    public String getColumnType(String colName) {
        return columnTypes.get(colName);
    }
    
    public List<String> getColumnCnNames() {
        return columnCnNames;
    }
    
    public List<String> getColumnNames() {
        return columnNames;
    }

    public void setColumnNames(List<String> columnNames) {
        this.columnNames = columnNames;
    }

    public void addColumn(String xmlNodeName, String colName, String type,int colMaxLen) {
        columnIndexs.put(colName, columnSize);
        cnColumnIndexs.put(xmlNodeName, columnSize);
        columnTypes.put(colName, type);
        colTypes.add(type);
        columnNames.add(colName);
        columnCnNames.add(xmlNodeName);
        colMaxLens.put(colName,colMaxLen);
        columnSize++;
    }
    
    public int getPkIndex() {
        return cnColumnIndexs.get(pkName);
    }
    
    public int getFkIndex() {
        if (fkName != null && cnColumnIndexs.containsKey(fkName)) {
            return cnColumnIndexs.get(fkName); 
        }
        return -1;
    }
    
    public int getIdIndex() {
        // AJ的xml
        if (columnIndexs.containsKey("N_AJBS")) {
            return getColumnIndex("N_AJBS");
        }
        // JG的xml
        if (columnIndexs.containsKey("N_FYDM")) {
            return getColumnIndex("N_FYDM");
        }
        return -1;
    }
    
    public void buildSql(){
        StringBuilder insert = new StringBuilder("insert into " + tableName + "(");
        StringBuilder values = new StringBuilder(3 * columnSize);
        values.append(") values (");
        for (String col : columnNames) {
            insert.append(col).append(", ");
            values.append("?, ");
        }
        if (columnNames.size() > 1) {
            insert.deleteCharAt(insert.length() - 2);
            values.deleteCharAt(values.length() - 2);
        }
        insertSql = insert.append(values).append(")").toString();
    }
    public Map<String, Integer> getColMaxLens() {
        return colMaxLens;
    }
    public int getColMaxLens(String colName) {
        return colMaxLens.get(colName);
    }
    @Override
    public String toString() {
        return "TableDescriptor [tableName=" + tableName + ", columnNames=" + columnNames
                + ", insertSql=" + insertSql + "]";
    }
}
