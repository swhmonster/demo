package com.thunisoft.parse09xml;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.concurrent.ConcurrentHashMap;

import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xml.sax.SAXException;

import com.thunisoft.parse09xml.bean.NeedTransFileColumn;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.parsing.converter.Converter;
import com.thunisoft.parse09xml.persistence.DataSourceManager;
import com.thunisoft.parse09xml.persistence.setter.PropSetter;
import com.thunisoft.parse09xml.util.ResourceLoader;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ResourceLoader.Callback;

/**
 * 配置管理，用于从配置文件加载解析程序需要的配置信息
 * 
 * @author xiegq
 * 
 */
public class ConfigManager {

    private static Logger logger = LoggerFactory.getLogger(ConfigManager.class);

    // <tableName, desc>
    private Map<String, TableDescriptor> tableDescs = new ConcurrentHashMap<String,TableDescriptor>();

    // <xmlPath, tableName>
    private Map<String, String> xmlPath2TableName = new ConcurrentHashMap<String, String>();
    
    // <xmlPath, columnName>
    private Map<String, String> xmlPath2ColName = new ConcurrentHashMap<String, String>();

    // <xmlPath, isDataNode>
    private Map<String, Boolean> isDataNode = new ConcurrentHashMap<String, Boolean>();

    // 类型转换器<类型名称, 转换器实例>
    private Map<String, Converter> converters = new ConcurrentHashMap<String, Converter>();
    
    // 类型转换器<类型名称, 转换器实例>
    private Map<String, PropSetter> propSetters = new ConcurrentHashMap<String, PropSetter>();

    // <案件类型, 存储过程sql>
    private Map<String, String> delProcs = new ConcurrentHashMap<String, String>();
    
    //<案件类型,存储过程sql>
    private Map<String,String> delRec = new ConcurrentHashMap<String, String>();
    
    
    
    // <案件类型, 增量表的表名>
    private Map<String, String> incrTabs = new ConcurrentHashMap<String, String>();

    private Map<String, byte[]> schemaDatas = new ConcurrentHashMap<String, byte[]>();
    private Map<String, List<Schema>> schemaObjs = new ConcurrentHashMap<String, List<Schema>>();

    // 资源加载器，用于加载配置文件
    private ResourceLoader resourceLoader = new ResourceLoader();

    private Map<String, String> cmdPros = new HashMap<String, String>();

    private Properties configuredProps = new Properties();

    private ResourceBundle defaultProps;
    
    private Map<String, List<NeedTransFileColumn>> needTransFileColumns = new ConcurrentHashMap<String, List<NeedTransFileColumn>>();

    // <法院id, 法标代码>
    private Map<Integer, String> corps = new ConcurrentHashMap<Integer, String>();
    
    // <法标代码, 法院id>
    private Map<String, Integer> corpsRev = new ConcurrentHashMap<String, Integer>();

    // <法标代码, 是否校验>
    private Map<String, String> corpsSfjy = new ConcurrentHashMap<String, String>();
    
    public Map<String, String> getCorpsSfjy() {
        return corpsSfjy;
    }

    public void setCorpsSfjy(Map<String, String> corpsSfjy) {
        this.corpsSfjy = corpsSfjy;
    }

    public void loadPropConfigs(String[] cmdArgs) {
        if(cmdArgs != null){
            if (cmdArgs.length >= 1) {
                cmdPros.put("config.dataFilePath", cmdArgs[0]);
            }

            if (cmdArgs.length >= 2) {
                cmdPros.put("thread.parseXmlPoolSize", cmdArgs[1]);
            }

            if (cmdArgs.length >= 3) {
                cmdPros.put("thread.saveDataPoolSize", cmdArgs[2]);
            }

            if (cmdArgs.length >= 4) {
                cmdPros.put("option.splitNum", cmdArgs[3]);
            }
        }
        defaultProps = ResourceBundle.getBundle("conf");

        File file = new File("conf.properties");
        if (file.exists()) {
            Reader reader = null;
            try {
                reader = new InputStreamReader(new FileInputStream(file), "UTF-8");
                configuredProps.load(reader);
            } catch (FileNotFoundException e) {
                logger.error(e.getMessage(), e);
            } catch (IOException e) {
                logger.error(e.getMessage(), e);
            } finally {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e) {
                        logger.error(e.getMessage(), e);
                    }
                }
            }
        }
    }

    public int getConfigAsInt(String key) {
        return Integer.valueOf(getConfig(key));
    }

    public String getConfig(String key) {
        String value = cmdPros.get(key);
        if (null != value) {
            return value;
        }

        value = configuredProps.getProperty(key);
        if (null != value) {
            return value;
        }

        return defaultProps.getString(key);
    }
    
    /**
     * 加载xml的映射配置文件，xml路径映射到表名、字段名
     */
    public void loadMappingConfig() {
        String pathname = getConfig("config.tabledescFilePath");
        long start = System.nanoTime();
        logger.info("Start load xml mapping config");
        String path = resourceLoader.loadConfig(pathname, "config/tabledesc/", new Callback() {
            public void doWithInputStream(InputStream is, String entryName) {
                logger.debug("load xml config [{}]", entryName);
                loadMappingFile(is);
            }
        });
        logger.info("Load xml mapping config from {} end, cost : {}", path, TimeUtil.format(System.nanoTime() - start));
    }

    // 加载xml映射配置
    private void loadMappingFile(InputStream is) {
        SAXReader reader = new SAXReader();
        try {
            Document document = reader.read(is);
            @SuppressWarnings("unchecked")
            List<Element> props = document.getRootElement().elements();
            for (Element prop : props) {
                String name = prop.element("Name").getText();
                String tableName = prop.element("stdTableName").getText();
                String fieldName = prop.element("stdFieldName").getText();
                String type = prop.element("stdType").getText();
                String xmlPath = prop.element("XMLNode").getText();
                String transType = prop.element("TranslateType").getText();
                String pk = prop.element("IsKey").getText();
                String fk = prop.element("Key").getText();
                String level = prop.element("Level").getText();
                String stdLen = prop.element("stdLength").getText();
                int stdLength = 0;
                if(!"".equals(stdLen)&&stdLen!=null)
                    stdLength = Integer.parseInt(prop.element("stdLength").getText());

                if ("文书内容转换".equals(transType)) {
                    List<NeedTransFileColumn> cols = needTransFileColumns.get(tableName);
                    if (cols == null) {
                        cols = new ArrayList<NeedTransFileColumn>();
                        needTransFileColumns.put(tableName, cols);
                    }
                    cols.add(new NeedTransFileColumn(tableName, fieldName, name));
                }

                // String defValue = prop.element("DefaultValue").getText();
                String transCond = prop.element("TranslateCondition").getText();
                // String preCond = prop.element("PreCondition").getText();

                if (xmlPath != null) {
                    xmlPath = "/" + xmlPath.replaceAll("\\\\", "/");
                    xmlPath2TableName.put(xmlPath, tableName);
                    xmlPath2ColName.put(xmlPath, fieldName);
                    isDataNode.put(xmlPath, true);
                    int lastIndex = xmlPath.lastIndexOf("/");

                    if (lastIndex != 0) {
                        String parentPath = xmlPath.substring(0, lastIndex);
                        while (parentPath != null) {
                            if (!xmlPath2TableName.containsKey(parentPath)) {
                                xmlPath2TableName.put(parentPath, tableName);
                                isDataNode.put(parentPath, false);
                            }
                            lastIndex = parentPath.lastIndexOf("/");
                            if (lastIndex != 0) {
                                parentPath = parentPath.substring(0, lastIndex);
                            } else {
                                parentPath = null;
                            }
                        }
                    }
                }

                TableDescriptor td = tableDescs.get(tableName);
                if (td == null) {
                    td = new TableDescriptor(tableName);
                    tableDescs.put(tableName, td);
                }

                // 关联字段
                if ("ref".equals(transType) && StringUtils.isNotBlank(transCond)) {
                    td.addRefColumn(fieldName, transCond);
                }

                if (StringUtils.isNotBlank(transType) && !"ref".equals(transType)) {
                    type = transType;
                }
                td.addColumn(name, fieldName, type,stdLength);
                if ("1".equals(pk)) {
                    td.setPkName(name);
                }
                if (StringUtils.isNotBlank(fk)) {
                    td.setFkName(fk);
                }
                if (StringUtils.isNotBlank(level)) {
                    td.setLevel(Integer.valueOf(level));
                }
            }

            for (TableDescriptor td : tableDescs.values()) {
                td.buildSql();
            }

        } catch (DocumentException e) {
            logger.error(e.getMessage(), e);
        }
    }

    /**
     * 加载校验xml文件的xsd文件
     * 
     * @param pathname
     */
    public void loadSchemas() {
        logger.info("Start load xsd file...");
        String pathname = getConfig("config.xsdFilePath");
        long start = System.nanoTime();
        String path = "";
        // 按照解析线程数将配置文件加载多份，避免多线程竞争
        for (int i = 0, len = getParseXmlPoolSize(); i < len; i++){
            String p = resourceLoader.loadConfig(pathname, "config/xsd/merged/", new Callback() {
                public void doWithInputStream(InputStream is, String entryName) {
                    logger.debug("load xsd file [{}]", entryName);
                    if (isLoadSchemaAsObject()) {
                        loadSchemaAsObject(is, entryName);
                    } else {
                        loadSchemaAsByte(is, entryName);
                    }
                }
            });
            if (StringUtils.isBlank(path)) {
                path = p;
            }
        }
        logger.info("Load xsd file from {} end, cost : {}", path, TimeUtil.format(System.nanoTime() - start));
    }

    public boolean isLoadSchemaAsObject() {
        return BooleanUtils.toBoolean(getConfig("option.loadSchemaAsObject"));
    }

    private void loadSchemaAsByte(InputStream is, String entryName) {
        try {
            ByteArrayOutputStream baos = new ByteArrayOutputStream(is.available());
            byte[] buf = new byte[8192];
            int len = 0;
            String key = entryName.substring(0, 2);
            while ((len = is.read(buf)) != -1) {
                baos.write(buf, 0, len);
            }
            schemaDatas.put(key, baos.toByteArray());
        } catch (IOException e) {
            logger.error("Load xsd file faild, name:[" + entryName + "]", e);
        }
    }

    private void loadSchemaAsObject(InputStream is, String entryName) {
        SchemaFactory schemaFactory = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");

        String key = entryName.substring(3, 6);;
        if(entryName.startsWith("_")){
            key = entryName.substring(1, 4);
        }
        try {
            schemaFactory.setFeature("http://apache.org/xml/features/honour-all-schemaLocations", true);
            schemaFactory.setFeature("http://apache.org/xml/features/validation/schema-full-checking", true);

            Schema schema = schemaFactory.newSchema(new StreamSource(is));
            List<Schema> ss = schemaObjs.get(key);
            if (ss == null) {
                ss = new ArrayList<Schema>();
                schemaObjs.put(key, ss);
            }
            ss.add(schema);
        } catch (SAXException e) {
            logger.error("xsd load faild, name : [" + entryName + "]", e);
        }
    }

    public Map<String, TableDescriptor> getTableDescs() {
        return tableDescs;
    }

    public Map<String, String> getXmlPath2TableName() {
        return xmlPath2TableName;
    }
    
    public Map<String, String> getXmlPath2ColName() {
        return xmlPath2ColName;
    }

    public Map<String, Converter> getConverters() {
        return converters;
    }

    public Map<String, Boolean> getIsMappedDataNode() {
        return isDataNode;
    }

    public Map<String, PropSetter> getPropSetters() {
        return propSetters;
    }

    public void loadConvertersConfig() {
        logger.info("Loadding Converters from converts.xml");
        long start = System.nanoTime();
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(getClass().getClassLoader().getResourceAsStream("config/converts.xml"));
            @SuppressWarnings("unchecked")
            List<Element> els = doc.getRootElement().elements();
            for (Element el : els) {
                String type = el.attribute("type").getValue();
                String className = el.attribute("class").getValue();
                Converter convert = (Converter) Class.forName(className).newInstance();
                converters.put(type, convert);
            }
            logger.info("Load Converters end, cost : " + TimeUtil.format(System.nanoTime() - start));
        } catch (DocumentException e) {
            logger.error("Can not load converters config from file : [config/converts.xml]", e);
        } catch (InstantiationException e) {
            logger.error("Can not load converters config from file : [config/converts.xml]", e);
        } catch (IllegalAccessException e) {
            logger.error("Can not load converters config from file : [config/converts.xml]", e);
        } catch (ClassNotFoundException e) {
            logger.error("Can not load converters config from file : [config/converts.xml]", e);
        }
    }

    public void loadPropSettersConfig() {
        logger.info("Loadding propSetters from propSetters.xml");
        long start = System.nanoTime();
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(getClass().getClassLoader().getResourceAsStream("config/propSetters.xml"));
            @SuppressWarnings("unchecked")
            List<Element> els = doc.getRootElement().elements();
            for (Element el : els) {
                String type = el.attribute("type").getValue();
                String className = el.attribute("class").getValue();
                propSetters.put(type, (PropSetter) Class.forName(className).newInstance());
            }
            logger.info("Load propSetters end, cost : " + TimeUtil.format(System.nanoTime() - start));
        } catch (DocumentException e) {
            logger.error("Can not load propSetters config from file : [config/propSetters.xml]", e);
        } catch (InstantiationException e) {
            logger.error("Can not load propSetters config from file : [config/propSetters.xml]", e);
        } catch (IllegalAccessException e) {
            logger.error("Can not load propSetters config from file : [config/propSetters.xml]", e);
        } catch (ClassNotFoundException e) {
            logger.error("Can not load propSetters config from file : [config/propSetters.xml]", e);
        }
    }

    public void loadDelProcs() {
        logger.info("Loadding delProcs from delProcs.xml");
        long start = System.nanoTime();
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(getClass().getClassLoader().getResourceAsStream("config/delProcs.xml"));
            @SuppressWarnings("unchecked")
            List<Element> els = doc.getRootElement().elements();
            for (Element el : els) {
                String type = el.attribute("type").getValue();
                String sql = el.attribute("sql").getValue();
                delProcs.put(type, sql);
            }
            logger.info("Load delProcs end, cost : " + TimeUtil.format(System.nanoTime() - start));
        } catch (DocumentException e) {
            logger.error("Can not load delProcs config from file : [config/delProcs.xml]", e);
        }

    }
    
    
    /**
     * 加载delRec.xml
     */
    public void loadDelRec() {
        logger.info("Loadding insDelProcs from insDelProcs.xml");
        long start = System.nanoTime();
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(getClass().getClassLoader().getResourceAsStream("config/insDelProcs.xml"));
            @SuppressWarnings("unchecked")
            List<Element> els = doc.getRootElement().elements();
            for (Element el : els) {
                String type = el.attribute("type").getValue();
                String sql = el.attribute("sql").getValue();
                delRec.put(type, sql);
            }
            logger.info("Load insDelProcs end, cost : " + TimeUtil.format(System.nanoTime() - start));
        } catch (DocumentException e) {
            logger.error("Can not load delRec config from file : [config/insDelProcs.xml]", e);
        }

    }

    public String getDelSql(String type) {
        return delProcs.get(type);
    }
    
    public String getDelRecSql(String type){
    	return delRec.get(type);
    }
    /**
     * 加载增量表的表名
     */
    public void loadIncrTab() {
        logger.info("Loadding loadIncrTab from incrTables");
        long start = System.nanoTime();
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(getClass().getClassLoader().getResourceAsStream("config/incrTables.xml"));
            @SuppressWarnings("unchecked")
            List<Element> els = doc.getRootElement().elements();
            for (Element el : els) {
                String type = el.attribute("type").getValue();
                String sql = el.attribute("table").getValue();
                incrTabs.put(type, sql);
            }
            logger.info("Load loadIncrTab end, cost : " + TimeUtil.format(System.nanoTime() - start));
        } catch (DocumentException e) {
            logger.error("Can not load incrTables config from file : [config/incrTables.xml]", e);
        }
    }

    /**
     * 根据类型获取增量表的表名
     * 
     * @param type
     * @return
     */
    public String getIncrTab(String type) {
        return incrTabs.get(type);
    }

    public String getEntityFileSavePath() {
        return getConfig("config.entityFileSavePath");
    }

    public String getZipBakPath() {
        return getConfig("config.zipBakPath");
    }

    public String getEPServerUrl() {
        return getConfig("config.EP.serverUrl");
    }

    public String getEPReceiver() {
        return getConfig("config.EP.receiver");
    }

    public Map<String, byte[]> getSchemaDatas() {
        return schemaDatas;
    }

    public Map<String, List<Schema>> getSchemaObjs() {
        return schemaObjs;
    }

    public Map<String, List<NeedTransFileColumn>> getNeedTransFileColumns() {
        return needTransFileColumns;
    }

    public Map<Integer, String> getCorps() {
        return corps;
    }
    
    public Map<String, Integer> getCorpsRev() {
    	return corpsRev;
    }

    public void loadCorps() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DataSourceManager.getConn();
            ps = conn.prepareStatement("select N_FY, C_FBDM,N_SFJY from DB_FY.T_FYPZ");
            rs = ps.executeQuery();
            while (rs.next()) {
                corps.put(rs.getInt(1), rs.getString(2));
                corpsRev.put(rs.getString(2), rs.getInt(1));
                corpsSfjy.put(rs.getString(2), rs.getString(3));
            }
        } catch (SQLException e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }
    
    public int getParseXmlPoolSize() {
        String pxps = getConfig("thread.parseXmlPoolSize");
        final int parseXmlPoolSize; 
        if ("auto".equals(pxps)) {
            parseXmlPoolSize = Runtime.getRuntime().availableProcessors();
        } else {
            parseXmlPoolSize = Integer.valueOf(pxps);
        }
        return parseXmlPoolSize;
    }

    /**
     * just for test
     * 
     * @return
     */
    Map<String, String> getCmdPros() {
        return cmdPros;
    }
}
