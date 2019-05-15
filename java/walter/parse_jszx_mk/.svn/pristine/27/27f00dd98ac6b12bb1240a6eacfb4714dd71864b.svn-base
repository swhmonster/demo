package com.thunisoft.parse09xml.persistence;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.DeleteAjRequest;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.persistence.setter.PropSetter;
import com.thunisoft.parse09xml.util.KeyGenerator;

public class PersistenceDao {
    
    private static final Logger logger = LoggerFactory.getLogger(PersistenceDao.class);
    
    private Map<String, PropSetter> propSettes;
    
    private Map<String, TableDescriptor> descs;
    
    private ConfigManager configManager;
    
    public PersistenceDao(ConfigManager configManager) {
        this.propSettes = configManager.getPropSetters();
        this.descs = configManager.getTableDescs();
        this.configManager = configManager;
    }

    public int save2db(Connection conn, Collection<TableData> data) throws SQLException {
        int count = 0;
        for (TableData td : data) {
            TableDescriptor desc = descs.get(td.getTableName());
            logger.debug("保存数据，表名:[{}]", desc.getTableName());
            count += save2db(conn, td.getData(), desc);
        }
        return count;
    }

    public int save2db(Connection conn, List<Object[]> datas, TableDescriptor desc) throws SQLException {
        int count = 0;
//        logger.info("conn support batch update : {}", conn.getMetaData().supportsBatchUpdates());
        PreparedStatement ps = conn.prepareStatement(desc.getInsertSql());
        logger.trace("sql:{}" , desc.getInsertSql());
        for (Object[] objs : datas) {
            for (int i = 0; i < objs.length; i++) {
                if (objs[i] != null) {
                    ps.setObject(i + 1, objs[i]);
                } else {
                    String type = desc.getColumnType(i);
                    PropSetter setter = propSettes.get(type);
                    if (setter == null) {
                        logger.error("找不到对应的PropSetter，表名:[{}], 列名[{}], 类型：[{}]",
                                desc.getTableName(),
                                desc.getColumnCnNames().get(i),
                                type);
                    } else {
                        setter.setObject(ps, i + 1, objs[i]);
                    }
                }
            }
            count++;
            logger.trace("data:{}" , Arrays.toString(objs));
            try {
                ps.execute();
            } catch (SQLException e) {
                logger.error("数据保存失败, 表名:[{}], \r\nsql:{}, \r\ndata :{}",
                        desc.getTableName(),
                        desc.getInsertSql(),
                        Arrays.toString(objs));
                throw e;
            }
//            ps.addBatch();
            
            // 每个表提交一次
//            conn.commit();
        }
//        ps.executeBatch();
        ps.close();
        return count;
    }
    
    /**
     * 执行对应的删除数据的存储过程
     * @param conn 数据库连接
     * @param type 类型，对于案件来讲是案件类型，组织机构是JG，与配置文件delProcs.xml中的type列对应
     * @param id 案件标识或法院编号
     * @return
     * @throws SQLException
     */
    public int execDelDataProc(Connection conn, String type, long id) throws SQLException {
        CallableStatement cs = null;
        try {
            cs = conn.prepareCall(configManager.getDelSql(type));
            cs.setLong(1, id);
            cs.execute();
        } finally {
            if (cs != null) {
                cs.close();
            }
        }
        return 0;
    }
    
    /**
     * 执行对应的查找及添加的存储过程
     * @param conn 数据库连接
     * @param dar DeleteAjRequest对象
     * @param zipname 
     * @return
     * @throws SQLException
     */
    public int execInsDelRec(Connection conn,DeleteAjRequest dar, String taskid)throws SQLException{
    	CallableStatement cs =null;
    	try {
    	    cs = conn.prepareCall(configManager.getDelRecSql(dar.getCaseType()));
            cs.setString(1, KeyGenerator.genId());
            cs.setLong(2, dar.getId());
            cs.setDate(3, dar.getDelDate());
            cs.setString(4, dar.getScyy());
            cs.setString(5, dar.getSprBs());
            cs.setString(6, dar.getSpr());
            cs.setString(7, taskid);
            cs.execute();   
    	}catch (Exception e){
    		logger.error("执行插入的存储过程错误,casetype:[{}], AJBS:[{}], taskid[{}]", 
    				dar.getCaseType(),
    				dar.getId(),
    				taskid);
    		e.printStackTrace();
    	}finally{
			if(cs!=null){
				cs.close();
			}
		}
    	return 0;
    }
    
    
    /**
     * 查询删除案件的案件类型
     * @param conn 数据库连接
     * @param id 案件标识
     * @return
     * @throws SQLException
     */
    public Map<Long,String> execDelData(Connection conn, List<Long> ids) throws SQLException {
        ResultSet rs = null; 
        Map<Long,String> datas = new HashMap<Long,String>(); 
        String sql = buildSql(ids);
        PreparedStatement ps = conn.prepareStatement(sql);
        for(int i =1 ; i<= ids.size(); i++){
            ps.setObject(i, ids.get(i-1));
        }
        
        try {
            rs = ps.executeQuery();
            ResultSetMetaData rsmd = rs.getMetaData();//元数据信息  
            int count = rsmd.getColumnCount();//字段数量  
            String[] colNames = new String[count];  
              
            for(int i=1; i<=count; i++){  
                colNames[i-1] = rsmd.getColumnName(i);//字段名称  
            }  
               
            while(rs.next()){  
//                Map<Long,String> item = new HashMap<Long,String>();  
                Object a = (Object)rs.getObject(colNames[0]);
//                item.put(Long.parseLong(a.toString()), (String)rs.getObject(colNames[1]));    
                datas.put(Long.parseLong(a.toString()), (String)rs.getObject(colNames[1]));  
            }           
        }catch(SQLException e){  
            System.out.println(e.getMessage());  
        }  
        ps.close();
        return datas;    

    }
    
    public String buildSql(List<Long> ids){
        StringBuilder select = new StringBuilder("SELECT DISTINCT N_AJBS, C_AJLB FROM DB_SJB.T_AJXML WHERE n_ajbs IN (");
        StringBuilder values = new StringBuilder(3 * ids.size());
        values.append(") AND C_AJLB!='999'");
        for (Long col : ids) {
            select.append("?, ");
        }
        if (ids.size() > 0) {
            select.deleteCharAt(select.length() - 2);
        }
        return select.append(values).toString();
    }

}
