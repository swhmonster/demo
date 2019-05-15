package com.thunisoft.parse09xml.parsing;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.xml.XMLConstants;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;

import org.apache.commons.lang3.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.persistence.AJConsts;
import com.thunisoft.parse09xml.persistence.Constant;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * xml验证实现，校验的同时读取xml，减少一次I/O
 * @author xiegq
 *
 */
public class XmlValidator {
    
    private static final Logger logger = LoggerFactory.getLogger(XmlValidator.class);
    
    private Map<String, byte[]> schemaDatas;
    
    private Map<String, List<Schema>> schemaObjs;
    
    private boolean loadSchemaAsObject = true;
    
    private final int parseXmlPoolSize;
    
    public XmlValidator (ConfigManager configManager) {
        this.schemaDatas = configManager.getSchemaDatas();
        this.schemaObjs = configManager.getSchemaObjs();
        this.loadSchemaAsObject = configManager.isLoadSchemaAsObject();
        this.parseXmlPoolSize = configManager.getParseXmlPoolSize();
    }
    
    /**
     * 先校验xml文件的合法性，然后解析成FileData的形式
     * @param is 对应文件的文件流
     * @param fd 
     * @return 解析完成的数据
     */
    public Element validateAndReadXml(InputStream is, FileData fd) {
        String zipFileName = fd.getZipFileName(); 
        String xmlFileName = fd.getFileName();
        String schemaType = fd.getType();
        
        if (ZipTypeUtil.isZzjgData(zipFileName)) {
            schemaType = "0B_";
        } 
        else if (ZipTypeUtil.isDelAjReq(zipFileName)) {
            schemaType = "0D_";
//            if(fd.getType().equals("B1") || fd.getType().equals("B2")){
//                schemaType = "_SFXZ";
//            }
        }
        if(StringUtils.equals(schemaType,AJConsts.WENSHU_INDEX )) {
            schemaType = "文书_";
        }
        
        SAXReader reader = null;
        Schema schema = loadSchema(schemaType);
        if (schema == null) {
            String msg = String.format("[%s]-[%s], 加载对应的校验文件(xsd)失败, 类型:[%s]", 
                    zipFileName, 
                    xmlFileName, 
                    schemaType);
            String glmsg = "文件内容格式不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
            logger.error(msg);
            return null;
        }
        try {
            SAXParserFactory factory = SAXParserFactory.newInstance();
            factory.setSchema(schema);
            SAXParser parser = factory.newSAXParser();
            reader = new SAXReader(parser.getXMLReader());
            reader.setValidation(false);
        } catch (Exception e) {
            String msg = String.format("[%s]-[%s], 获取SAXReader时出错, 错误信息:%s", 
                    zipFileName, 
                    xmlFileName, 
                    e.getMessage());
            String glmsg = "文件内容格式不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
            logger.error(msg, e);
        }

        Document doc = null;
        try {
            if (loadSchemaAsObject) {
                synchronized (schema) {
                    doc = reader.read(is);
                }
            } else {
                doc = reader.read(is);
            }
        } catch (DocumentException e) {
            String msg = String.format("[%s]-[%s], xsd校验失败, xml不符合xsd标准, 类型:[%s], 错误信息:%s", 
                    zipFileName, 
                    xmlFileName,
                    schemaType,
                    e.getMessage());
            String glmsg = "文件内容格式不符合上报标准";
            fd.setError(true);
            fd.addErrorMessage(msg);
            fd.addGlerrorMessage(glmsg);
            fd.setStatus(Constant.XMLLOG_STATUS_XSD_FAILURE);
            logger.error(msg, e);
            return null;
        }
        
        return doc.getRootElement();
    }

    private Schema loadSchema(String schemaType) {
        if (loadSchemaAsObject) {
            return schemaObjs.get(schemaType).get(new Random().nextInt(parseXmlPoolSize));
        }
        
        byte[] schema = schemaDatas.get(schemaType);
        if (schema == null) {
            return null;
        }
        
        try {
            // 建立schema工厂
            SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
            schemaFactory.setFeature("http://apache.org/xml/features/honour-all-schemaLocations", true);
            schemaFactory.setFeature("http://apache.org/xml/features/validation/schema-full-checking", true);
            // 利用schema工厂，接收验证文档文件对象生成Schema对象
            return schemaFactory.newSchema(new StreamSource(new ByteArrayInputStream(schema)));
        } catch (SAXException e) {
            logger.error("xsd load faild, name : [" + schemaType + "]", e);
            return null;
        }
        
    }
    
    public static void main(String[] args) {
        for (int i = 0 ; i < 100; i++) {
            System.out.println(new Random().nextInt(4));
        }
    }
}
