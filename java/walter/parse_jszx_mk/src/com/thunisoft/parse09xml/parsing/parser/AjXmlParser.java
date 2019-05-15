package com.thunisoft.parse09xml.parsing.parser;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.lang3.StringUtils;
import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.parsing.IXmlParser;
import com.thunisoft.parse09xml.parsing.converter.Converter;
import com.thunisoft.parse09xml.persistence.Constant;
import com.thunisoft.parse09xml.util.KeyGenerator;
import com.thunisoft.parse09xml.util.TimeUtil;

/**
 * xml解析器
 * @author xiegq
 *
 */
public class AjXmlParser implements IXmlParser {

    private static Logger logger = LoggerFactory.getLogger(AjXmlParser.class);
    
    private Map<String, TableDescriptor> tableDescs;
    
    private Map<String, String> xmlPath2TableName;
    
    private Map<String, String> xmlPath2ColName;
    
    private Map<String, Boolean> isMappedDataNode;
    
    private Map<String, Converter> converters;
    
    private final String newRecordMarker = "R";
    
    private boolean runAsDTC;
    
    public AjXmlParser(ConfigManager configManager) {
        this.tableDescs = configManager.getTableDescs();
        this.xmlPath2TableName = configManager.getXmlPath2TableName();
        this.xmlPath2ColName = configManager.getXmlPath2ColName();
        this.isMappedDataNode = configManager.getIsMappedDataNode();
        this.converters = configManager.getConverters();
        this.runAsDTC = "true".equalsIgnoreCase(configManager.getConfig("option.runAsDTC"));
    }
    
    private Object translate(String data, String type,int maxLen) {
        Converter converter = converters.get(type);
        if (converter == null) {
            logger.error("Can not found Converter for data type : [{}]", type);
            return data;
        }
        return converter.convert(data,maxLen);
    }


    /**
     * 将一个xml文件中的数据解析成FileData的形式
     * @param fd 需要填充的文件对象
     * @return 解析完成的数据
     */
    public void parse(Element element, FileData fd) {
        Map<String, TableData> tablesData = new HashMap<String, TableData>();
        String xmlPath = "/" + element.getName();
        // 案件主表
        String tableName = xmlPath2TableName.get(xmlPath);
        if (StringUtils.isBlank(tableName)) {
            logger.warn("[{}]-[{}], xml节点找不到对应的数据库表和字段:[{}]", fd.getZipFileName(), fd.getFileName(), xmlPath);
            return;
        }
        
        fd.setRootTableName(tableName);
        TableDescriptor td = tableDescs.get(tableName);
        TableData tableData = tablesData.get(tableName);
        if (tableData == null) {
            tableData = new TableData(tableName, td.getColumnSize());
            tablesData.put(tableName, tableData);
        }
        tableData.addRow();
        
        String pk = KeyGenerator.genId();
        // 案件主键
        tableData.setData(td.getPkIndex(), pk);
        
        setSpecialData(fd, td, tableData);
        parseXml(element, xmlPath, tablesData, pk, fd.getId());
        if(!checkAjbsConst(tableData, td, fd.getId())){
        	String msg = String.format("[%s]-[%s], xml文件案件标识校验失败，xml文件名中的案件标识和xml解析后的案件标识不一致！",
					fd.getZipFileName(), 
					fd.getFileName());
            String glmsg = "文件内容格式不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
			fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
			return;
        }
        
        // 设置可能的序号的外键值
        setRefColumns(tablesData);
        
        fd.setTableData(tablesData);
    }

    
    
    /**
     * 检查案件标识内外的一直性，xml文件名中的案件标识和xml解析内容中的案件标识一致
     * @param tableData
     * @param td
     * @param ajbs
     * @return
     */
    private boolean checkAjbsConst(TableData tableData, TableDescriptor td, Long ajbs) {
		Object[] obj = tableData.getData().get(0);
		Object id = obj[td.getIdIndex()];
//		String tableName = td.getTableName();
/*		if(tableName.contains("DB_QJSFXZ") || tableName.contains("DB_GJSFXZ")){
		    return String.valueOf(ajbs).equals(String.valueOf(id));
		}*/
		return String.valueOf(ajbs).equals(String.valueOf(id));
	}

	private void setRefColumns(Map<String, TableData> tablesData) {
        for (Entry<String, TableData> entry : tablesData.entrySet()) {
            TableDescriptor ntd_desc = tableDescs.get(entry.getKey());
            // level从0开始，这里判断是否是三级表及以下
            if (!hasRefColumn(ntd_desc)) {
                continue;
            }
            TableData ntd = entry.getValue();
            for (Object[] ntd_row : ntd.getData()) {
                String fk = (String) ntd_row[ntd_desc.getFkIndex()];
                for (Entry<String, String> refCol : ntd_desc.getRefColumns().entrySet()) {
                    String[] refStrs = refCol.getValue().split("#");
                    TableData data = tablesData.get(refStrs[0]);
                    TableDescriptor data_desc = tableDescs.get(refStrs[0]);
                    Object[] data_row = findRefRow(fk, data, data_desc.getPkIndex());
                    if (data_row != null) {
                        ntd_row[ntd_desc.getColumnIndex(refCol.getKey())] =  
                                data_row[data_desc.getColumnIndex(refStrs[1])];
                    }
                }
            }
        }
    }

    private Object[] findRefRow(String fk, TableData data, int pkIndex) {
        for (Object[] row : data.getData()) {
            if (fk.equals(row[pkIndex])) {
                return row;
            }
        }
        return null;
    }

    private boolean hasRefColumn(TableDescriptor desc) {
        return desc.getLevel() > 1;
    }

    private void setSpecialData(FileData fd, TableDescriptor td, TableData tableData) {
        // 案件-经办法院
        if (td.getColumnIndex("N_JBFY") != -1) {
            tableData.setData(td.getColumnIndex("N_JBFY"), fd.getCorpId());
        }
        
        // 案件-修改时间
        if (td.getColumnIndex("D_XGSJ") != -1) {
            tableData.setData(td.getColumnIndex("D_XGSJ"),TimeUtil.getStateTime(runAsDTC));
        }
    }
    
    
    private void parseXml(Element element, String xmlPath, Map<String, TableData> tablesData, String fk, Long id) {
        @SuppressWarnings("unchecked")
        List<Element> els = element.elements();
        for (int i = 0; i < els.size(); i++) {
            Element el = els.get(i);
            String name = el.getName();
            String xp = xmlPath + "/" + name;
            String colName = xmlPath2ColName.get(xp);
            logger.trace("Parse element [{}]", xp);
            String tableName = xmlPath2TableName.get(xp);
            if (tableName == null) {
                logger.warn("xml节点找不到对应的数据库表和字段:[{}]", xp);
                continue;
            }
            TableDescriptor td = tableDescs.get(tableName);
            List<Element> eles = el.elements();
            Boolean IsSame = false;
            if(eles != null && eles.size()>0 && !xp.equals("/文书/文书")){
                if (element.getName().equals(name) || (element.getParent()!= null && element.getName().equals(element.getParent().getName()))
                        || name.equals("拍卖标的物优先购买情况")){
                    IsSame = true;
                }
//                for(Element e :eles){
//                    if(e.getName().startsWith("序号")||e.getName().startsWith("流水号")
//                            ||e.getName().startsWith("委托ID")||e.getName().startsWith("编号")){
//                        IsR = true;
//                        break;
//                    }
//                }
            }
            if (newRecordMarker.equals(name) || IsSame) { // 一条记录
                TableData tableData = tablesData.get(tableName);
                if (tableData == null) {
                    tableData = new TableData(tableName, td.getColumnSize());
                    tablesData.put(tableName, tableData);
                }
                tableData.addRow();
                String pk = KeyGenerator.genId();
                tableData.setData(td.getPkIndex(), pk);
                tableData.setData(td.getFkIndex(), fk);
                if (td.getIdIndex() > -1) {
                    tableData.setData(td.getIdIndex(), id);
                }
                parseXml(el, xp, tablesData, pk, id);
            } else {
                TableData tableData = tablesData.get(tableName);
                
                // 如果是字段 就不应该出现tableData为空的情况
                if (isMappedDataNode.get(xp)) { //　是字段
                    tableData.setData(td.getColumnIndex(colName), translate(el.getText(), td.getColumnType(colName),td.getColMaxLens(colName)));
                } else { 
                    // 不是字段的特殊节节点，标识一个新表
                    if (tableData == null) {
                        tableData = new TableData(tableName, td.getColumnSize());
                        tablesData.put(tableName, tableData);
                        
                        // 新表有子记录且子记录没有用R表示，那么是一对一的子表形式
                        if (!el.elements().isEmpty() && el.element("R") == null) {
                            Element e = (Element)el.elements().get(0);
                            if (el.getParent()==el.getDocument().getRootElement() && !e.getName().equals(name)) {
                                tableData.addRow();
                                String pk = KeyGenerator.genId();
                                tableData.setData(td.getPkIndex(), pk);
                                tableData.setData(td.getFkIndex(), fk);
                                if (td.getIdIndex() > -1) {
                                    tableData.setData(td.getIdIndex(), id);
                                }
                                // 产生子表数据后需要切换外键的设置
                                parseXml(el, xp, tablesData, pk, id);
                            } else {
                             // 新表是用R表示的多条记录, 那么再产生一条R对应的数据后再切换外键设置
                                parseXml(el, xp, tablesData, fk, id);
                            }
                        } else {
                            // 新表是用R表示的多条记录, 那么再产生一条R对应的数据后再切换外键设置
                            parseXml(el, xp, tablesData, fk, id);
                        }
                    } else { // 不是字段的普通节点，仅仅是简单分段
                        parseXml(el, xp, tablesData, fk, id);
                    }
                }
            }
        }
    }
    
}
