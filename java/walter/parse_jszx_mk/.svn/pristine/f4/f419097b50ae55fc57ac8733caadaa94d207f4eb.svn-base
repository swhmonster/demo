package com.thunisoft.parse09xml.parsing.parser;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.parsing.IXmlParser;
import com.thunisoft.parse09xml.parsing.converter.Converter;
import com.thunisoft.parse09xml.util.KeyGenerator;

/**
 * 组织机构xml解析器
 * 
 * @author ZhangMin
 * 
 */
public class OrganXmlParser implements IXmlParser {

    private static final Logger logger = LoggerFactory.getLogger(OrganXmlParser.class);

    private Map<String, TableDescriptor> tableDescs;

    private Map<String, String> xmlPath2TableName;
    private Map<String, String> xmlPath2ColName;

    private Map<String, Boolean> isMappedDataNode;

    private Map<String, Converter> converters;

    /**
     * 构造方法
     * 
     * @param configManager
     */
    public OrganXmlParser(ConfigManager configManager) {
        this.tableDescs = configManager.getTableDescs();
        this.xmlPath2TableName = configManager.getXmlPath2TableName();
        this.xmlPath2ColName = configManager.getXmlPath2ColName();
        this.isMappedDataNode = configManager.getIsMappedDataNode();
        this.converters = configManager.getConverters();
    }

    /**
     * 将一个xml文件中的数据解析成FileData的形式
     * 
     * @param fd
     * @return 解析完成的数据
     */
    public void parse(Element rootEl, FileData fd) {
        // 包括结构和人员两个表的信息
        fd.setTableData(new HashMap<String, TableData>());

        // 解析机构
        parseJgData(rootEl, fd);
        
    }

    @SuppressWarnings("unchecked")
    private TableData parseJgData(Element rootEl, FileData fd) {
        Element jgEl = rootEl.element("组织机构");
        if (jgEl == null) {
            return null;
        }
        List<Element> jgbm = rootEl.elements();
        String xmlPath = "/" + rootEl.getName();
        String jgTableName = xmlPath2TableName.get(xmlPath+"/组织机构/机构标识");
        TableDescriptor jgDesc = tableDescs.get(jgTableName);
        if (jgTableName == null) {
            logger.warn("xml节点找不到对应的数据库表和字段:[{}]", xmlPath);
        }
        TableData jgData = new TableData(jgTableName, jgDesc.getColumnSize());
        
        String ryTableName = xmlPath2TableName.get("/组织机构/组织机构/组织人员");
        TableDescriptor ryDesc = tableDescs.get(ryTableName);
        TableData ryData = new TableData(ryTableName, ryDesc.getColumnSize());
        
        for (Element el : jgbm) {
            jgData.addRow();
            jgData.setData(jgDesc.getPkIndex(), KeyGenerator.genId());
            jgData.setData(jgDesc.getIdIndex(), fd.getId());
            parseXml(jgDesc, el, xmlPath + "/" + el.getName(), jgData, ryData, fd);
        }
        fd.getTableData().put(jgTableName, jgData);
        fd.setRootTableName(jgDesc.getTableName());
        return jgData;
    }

    

    private void parseRyData(Element el, String xp, TableData rytd, FileData fd) {
        String ryTableName = xmlPath2TableName.get(xp);
        TableDescriptor ryDesc = tableDescs.get(ryTableName);
        if (ryTableName == null) {
            logger.warn("xml节点找不到对应的数据库表和字段:[{}]", xp);
        }

        rytd.addRow();
        rytd.setData(ryDesc.getPkIndex(), KeyGenerator.genId());
        parseXml(ryDesc, el, xp, rytd, fd);
        fd.getTableData().put(ryTableName, rytd);
        
    }
    
    
    private void parseXml(TableDescriptor desc, Element element, String xmlPath, TableData jgtd, TableData rytd, FileData fd) {
        @SuppressWarnings("unchecked")
        List<Element> els = element.elements();
        for (int i = 0; i < els.size(); i++) {
            Element el = els.get(i);
            String name = el.getName();
            String xp = xmlPath + "/" + name;
            String colName = xmlPath2ColName.get(xp);
            logger.trace("Parse element [{}]", xp);
            
            Boolean isData = isMappedDataNode.get(xp);
            //　是字段
            if (isData == null) {
                logger.error("找不到xml节点[{}]对应的配置, 请检查配置文件。", xp);
            } else {
                if (isData) {
                    jgtd.setData(desc.getColumnIndex(colName), translate(el.getText(), desc.getColumnType(colName),desc.getColMaxLens(colName)));
                } else { // 不是字段就是人员节点
                    parseRyData(el, xp, rytd, fd);
                }
            }
        }
    }
    
    private void parseXml(TableDescriptor desc, Element element, String xmlPath, TableData rytd, FileData fd) {
        @SuppressWarnings("unchecked")
        List<Element> els = element.elements();
        for (int i = 0; i < els.size(); i++) {
            Element el = els.get(i);
            String name = el.getName();
            String xp = xmlPath + "/" + name;
            String colName = xmlPath2ColName.get(xp);
            logger.trace("Parse element [{}]", xp);
            
            Boolean isData = isMappedDataNode.get(xp);
            //　是字段
            if (isData == null) {
                logger.error("找不到xml节点[{}]对应的配置, 请检查配置文件。", xp);
            } else {
                if (isData) {
                    rytd.setData(desc.getColumnIndex(colName), translate(el.getText(), desc.getColumnType(colName),desc.getColMaxLens(colName)));
                } else { 
                    logger.error("找不到xml节点[{}]对应的配置, 请检查配置文件。", xp);
                }
            }
        }
    }
    
    private Object translate(String data, String type,int maxLen) {
        Converter converter = converters.get(type);
        if (converter == null) {
            logger.error("Can not found Converter for data type : [{}]", type);
            return data;
        }
        return converter.convert(data,maxLen);
    }

}
