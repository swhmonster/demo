package com.thunisoft.parse09xml.parsing.parser;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.dom4j.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.DeleteAjRequest;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.parsing.IXmlParser;
import com.thunisoft.parse09xml.persistence.DataSourceManager;
import com.thunisoft.parse09xml.persistence.PersistenceDao;

/**
 * 案件删除的xml解析器
 * 
 * @author ZhangMin
 * 
 */
public class DelAjXmlParser implements IXmlParser {

	private static Logger logger = LoggerFactory.getLogger(DelAjXmlParser.class);
	
	private PersistenceDao persistenceDao;

	/**
	 * 构造方法
	 * 
	 * @param configManager
	 */
	public DelAjXmlParser(ConfigManager configManager) {
	    this.persistenceDao = new PersistenceDao(configManager);
	}

	/**
	 * 将一个xml文件中的数据解析成FileData的形式
	 * 
	 * @param fd
	 * @return 解析完成的数据
	 */
	public void parse(Element rootEl, FileData fd) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<DeleteAjRequest> drs = new ArrayList<DeleteAjRequest>();
		Map<Long,String> count = new HashMap<Long,String>();
		@SuppressWarnings("unchecked")
        List<Element> els = rootEl.elements();
		List<Long> ajbss = new ArrayList<Long>();
		for (Element el : els) {
		    Long ajbs = Long.valueOf(el.elementText("案件标识"));
		    ajbss.add(ajbs);
		}
		Connection conn = null;
        try {
            conn = DataSourceManager.getConn();
            conn.setAutoCommit(false);
            count = persistenceDao.execDelData(conn, ajbss);
            conn.commit();
            conn.setAutoCommit(true);
        } catch (SQLException e1) {
            if(conn != null) {
                try {
                    logger.error(" save faild.", e1);
                    conn.rollback();
                } catch (SQLException e) {
                    logger.error(" save faild.", e);
                }
            }
        } finally {
            if(conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.error(" save faild.", e);
                }
            }
        }
		
		for (Element el : els) {
		    DeleteAjRequest dar = new DeleteAjRequest();
		    dar.setId(Long.valueOf(el.elementText("案件标识")));
		    dar.setCaseType(count.get(Long.valueOf(el.elementText("案件标识"))));
		    dar.setSprBs(null);
		    dar.setSpr(null);
		    dar.setScyy(el.elementText("删除原因"));
		    try {
		        if(el.elementText("删除时间")!=null&&!"".equals(el.elementText("删除时间"))){
		            dar.setDelDate(new Date(sdf.parse(el.elementText("删除时间")).getTime()));
		        }
            } catch (ParseException e) {
                logger.error(e.getMessage(), e);
            }
		    drs.add(dar);
		}
		
		fd.setDelReqs(drs);
	}

}
