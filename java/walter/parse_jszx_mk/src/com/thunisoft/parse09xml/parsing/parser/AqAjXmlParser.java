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
import com.thunisoft.parse09xml.persistence.Constant;
import com.thunisoft.parse09xml.util.KeyGenerator;

/**
 * Aq 案件的xml解析器
 * AqAjXmlParser
 * @author zuoyayong
 * @version 1.0
 *
 */
@SuppressWarnings("unchecked")
public class AqAjXmlParser implements IXmlParser {

	private static Logger logger = LoggerFactory.getLogger(AqAjXmlParser.class);
	  private Map<String, String> xmlPath2TableName;
	  private Map<String, TableDescriptor> tableDescs;
	  private Map<String, String> xmlPath2ColName;
	  private Map<String, Converter> converters;
	/**
	 * 构造方法
	 * 
	 * @param configManager
	 */
	public AqAjXmlParser(ConfigManager configManager) {
	    this.xmlPath2TableName = configManager.getXmlPath2TableName();
	    this.tableDescs = configManager.getTableDescs();
	      this.xmlPath2ColName = configManager.getXmlPath2ColName();
	      this.converters = configManager.getConverters();
	}

	/**
	 * 将一个xml文件中的数据解析成FileData的形式
	 * 
	 * @param fd
	 * @return 解析完成的数据
	 */
	public void parse(Element rootEl, FileData fd) {
	    
	    fd.setTableData(new HashMap<String, TableData>());
//	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//	    AqAjRequest drs = new AqAjRequest();
		
//        List<Element> els = rootEl.elements();
		 String xmlPath = "/" + rootEl.getName() + "/案件标识";
		   String jgTableName = xmlPath2TableName.get(xmlPath);
		     fd.setRootTableName(jgTableName);
	        TableDescriptor jgDesc = tableDescs.get(jgTableName);
	        TableData jgData = new TableData(jgTableName, jgDesc.getColumnSize());
	        jgData.addRow();
	        jgData.setData(jgDesc.getPkIndex(), KeyGenerator.genId());
	        /**
	         * 添加案件标识
	         */
	        Element elajbs = rootEl.element("案件标识");	        
//	        String name = elajbs.getName();
//            String xp = xmlPath ;
            String colName = xmlPath2ColName.get(xmlPath);            
            jgData.setData(jgDesc.getColumnIndex(colName), translate(elajbs.getText(), jgDesc.getColumnType(colName),jgDesc.getColMaxLens(colName)));
    		
            String xmlJbxx =  "案件基本信息";
//            List<Element> listjbxx = rootEl.elements(xmlJbxx).get(0);
            List<Element> listjbxx = rootEl.element(xmlJbxx).elements();
            String tmppath = "/" + rootEl.getName() + "/案件基本信息/";
            for(int i=0;i<listjbxx.size();i++){   
                String tmpcolName = xmlPath2ColName.get(tmppath+listjbxx.get(i).getName());
                jgData.setData(jgDesc.getColumnIndex(tmpcolName), translate(listjbxx.get(i).getText(), jgDesc.getColumnType(tmpcolName),jgDesc.getColMaxLens(tmpcolName)));
    		    
    		}		
//            fd.setTableData(fileData);
            
            if(!checkAjbsConst(jgData, jgDesc, fd.getId())){
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
            
            
            fd.getTableData().put(jgTableName, jgData);
            
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
        return String.valueOf(ajbs).equals(String.valueOf(id));
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
