package com.thunisoft.parse09xml.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.bean.Task;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.util.KeyGenerator;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 用于记录数据包的入库日志
 * DB_SJB库中的相关表
 * @author ZhangMin xiegq
 *
 */
public class DbLogService {
	/**
	 * 日志对象
	 */
	private static Logger logger = LoggerFactory.getLogger(DbLogService.class);
	
    /**
     * 任务状态：成功
     */
    private final int TASK_STATUS_SUCCESS = 2; 
    /**
     * 任务状态：失败
     */
    private final int TASK_STATUS_FAILURE = 3;
    
    /**
     * 数据包的表名
     */
    private final String TABLE_NAME_SJB = "DB_SJB.T_SJB";
    
    /**
     * 案件日志表名
     */
    private final String TABLE_AJXML = "DB_SJB.T_AJXML";
    
    /**
     * 案件日志表名
     */
    private final String TABLE_AQAJXML = "DB_SJB.T_AQAJXML";
    
    /**
     * 组织机构日志表名
     */
    private final String TABLE_ZZJGXML = "DB_SJB.T_ZZJGXML";
    
    /**
     * 删除案件请求的日志表名
     */
    private final String TABLE_DLXML = "DB_SJB.T_DLXML";
    
    private final String sqlSear = "select C_ID, C_ZIP from DB_SJB.T_SJB where N_ZT = ? and N_RECEIVEID = ? order by D_DCSJ %s";


	/**
	 * 表的描述器
	 */
	private Map<String, TableDescriptor> descs;
	
	private PersistenceDao persistenceDao;
	
	private Integer receiveId = 0; 
	
	private TableDescriptor ajXmlLogDesc;
	private TableDescriptor aqajXmlLogDesc;
	private TableDescriptor jgXmlLogDesc;
	private TableDescriptor dlXmlLogDesc;
	private boolean runAsDTC;
	
    /**
     * 构造方法
     * @param configManager
     * @param list
     */
    public DbLogService(ConfigManager configManager){
    	this.descs = configManager.getTableDescs();
    	this.ajXmlLogDesc = descs.get(TABLE_AJXML);
    	this.aqajXmlLogDesc = descs.get(TABLE_AQAJXML);
    	this.jgXmlLogDesc = descs.get(TABLE_ZZJGXML);
    	this.dlXmlLogDesc = descs.get(TABLE_DLXML);
    	        
    	this.persistenceDao = new PersistenceDao(configManager);
    	this.receiveId = configManager.getConfigAsInt("config.receiveId");
    	
    	this.runAsDTC = "true".equalsIgnoreCase(configManager.getConfig("option.runAsDTC"));
    }

    /**
     * 任务文件的相对路径
     * @param filePath
     * @return
     */
	public String initTask(String filePath) {
	    return initTask(Arrays.asList(filePath)).get(filePath);
	}
	
	/**
	 * 插入时把数据包放入数据库
	 * @return
	 */
	public Map<String, String> initTask(List<String> filePaths) {
		TableDescriptor des = descs.get(TABLE_NAME_SJB);
		Connection conn = null;
        try {
            conn = DataSourceManager.getConn();
            conn.setAutoCommit(false);
            
            long start = System.nanoTime();
            TableData tableData = getSjbTableData(filePaths);
            int count = persistenceDao.save2db(conn, Arrays.asList(tableData));
            conn.commit();
            conn.setAutoCommit(true);
            Map<String, String> result = new ConcurrentHashMap<String, String>();
            for(Object[] obj: tableData.getData()){
            	String uuid = obj[des.getPkIndex()].toString();
            	String filename = obj[des.getColumnIndex("C_ZIP")].toString();
            	result.put(filename, uuid);
            }
            logger.debug("任务插入数据库完毕:[{}], 记录数：{}, 耗时：{}" , 
                    tableData.getTableName(), 
                    count, 
                    TimeUtil.format(System.nanoTime() - start));
            
            return result;
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
        return null;
	}

	/**
	 * 更新zip包文件的日志状态
	 * @param taskId
	 * @param status
	 * @return
	 */
	private boolean updateTaskStatus(String taskId, int status) {
	    Connection conn = null;
        PreparedStatement ps = null;
        final String updateSql = "update DB_SJB.T_SJB set N_ZT = ?, D_RKSJ = ? where C_ID = ?";
        try {
            conn = DataSourceManager.getConn();
            ps = conn.prepareStatement(updateSql);
            ps.setInt(1, status);
            ps.setTimestamp(2, TimeUtil.getStateTime(runAsDTC));
            ps.setString(3, taskId);
            return ps.execute();
        } catch (SQLException e) {
            logger.error("更新任务状态为[" + status +  "]时失败，任务编号：[" + taskId + "]", e);
            return false;
        } finally {
            if (ps != null) {
                try {
                    ps.close();
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
	
	/**
	 * 获取数据包数据
	 * @param filePaths
	 * @return
	 */
	private TableData getSjbTableData(List<String> filePaths) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		TableDescriptor des = descs.get(TABLE_NAME_SJB);
		int colSize = des.getColumnSize();
		TableData tabledata = new TableData(TABLE_NAME_SJB, colSize);
		for(String filePath: filePaths){
		    int lastIndex = filePath.lastIndexOf("/");
		    String fileName = filePath;
		    if (lastIndex != -1) {
		        fileName = filePath.substring(lastIndex + 1);
		    }
		    String[] fileNames = fileName.split("_");
			Object[] row = new Object[colSize];
			row[des.getColumnIndex("C_ID")] = KeyGenerator.genId();
			row[des.getColumnIndex("C_ZIP")] = filePath;
			row[des.getColumnIndex("N_ZT")] = Integer.valueOf(0);
			row[des.getColumnIndex("N_FY")] = Integer.valueOf(fileNames[1]);
			row[des.getColumnIndex("N_TYPE")] = ZipTypeUtil.getTypeAsInt(fileName);
			try {
                row[des.getColumnIndex("D_DCSJ")] = new Timestamp(sdf.parse(fileNames[2]).getTime());
            } catch (ParseException e) {
                logger.error("[" + filePath + "], 导出时间解析失败", fileName, e);
            }
			row[des.getColumnIndex("N_RECEIVEID")] = this.receiveId;
			
			tabledata.getData().add(row);
		}
		return tabledata;
	}
	
	
    /**
     * 更新zip包文件的日志状态
     * @param fileName
     * @param taskId
     * @param success
     */
    public void updateTaskStatus(String fileName, String taskId, boolean success) {
        long start = System.nanoTime();
        
        if (success) {
            updateTaskStatus(taskId, TASK_STATUS_SUCCESS);
            logger.info("[{}], 任务成功, 任务编号：[{}], 耗时：{}" ,
                    fileName, 
                    taskId,
                    TimeUtil.format(System.nanoTime() - start));
        } else {
            updateTaskStatus(taskId, TASK_STATUS_FAILURE);
            logger.error("[{}], 任务失败, 任务编号：[{}], 耗时：{}" ,
                    fileName, 
                    taskId,
                    TimeUtil.format(System.nanoTime() - start));
        }
        
        
    }
    
    /**
     * 插入时0，处理中1，已处理2，处理失败3
     * TODO 将sql移动到配置文件
     * @param status
     * @return
     */
    public List<Task> fetchTask(int status, int count) {
        Connection conn = null;
        PreparedStatement queryPs = null;
        PreparedStatement updatePs = null;
        ResultSet rs = null;
        List<Task> tasks = new ArrayList<Task>();
        try {
            conn = DataSourceManager.getConn();
          //  stat.execute("set rowcount " + count);
            String sqlCond = "";
            if(status != 1){
            	sqlCond = " limit " + count;
            }
            
            queryPs = conn.prepareStatement(String.format(sqlSear, sqlCond));
            queryPs.setInt(1, status);
            queryPs.setInt(2, this.receiveId);
            // 代码质量检查规则不允许外部参数直接与执行语句相加，使用占位符
//            queryPs.setString(3, sqlCond);
            rs = queryPs.executeQuery();
            while (rs.next()) {
                tasks.add(new Task(rs.getString(1), rs.getString(2)));
            }
            
           // stat.execute("set rowcount 0");
            
            if (status == 0 && !tasks.isEmpty()) {
                StringBuilder sql = new StringBuilder("update DB_SJB.T_SJB set N_ZT = 1, D_CLSJ = ? where N_ZT = 0 and C_ID in (");
                for (int i = 0; i < tasks.size(); i++) {
                    sql.append("?,");
                }
                sql.deleteCharAt(sql.length() - 1).append(")");
                
                // 更新任务状态为处理中
                updatePs = conn.prepareStatement(sql.toString());
                updatePs.setTimestamp(1, new Timestamp(TimeUtil.getStateTime(runAsDTC).getTime()));
                for (int i = 0; i < tasks.size(); i++) {
                    updatePs.setString(i + 2, tasks.get(i).getId());
                }
                
                updatePs.execute();
            }
            
            logger.info("从数据库获取任务成功，任务数： {}", tasks.size());
            return tasks;
        } catch (SQLException e) {
            logger.error(e.getMessage(), e);
        } finally {
            
            if (queryPs != null) {
                try {
                    queryPs.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
            
            if (updatePs != null) {
                try {
                    updatePs.close();
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
        return Collections.emptyList();
    }
    
    public void saveXsdFailureXmlLogs(ZipFileData zfd) {
        long start = System.nanoTime();
        List<Object[]> xmlFileLogs = new ArrayList<Object[]>(zfd.getFileData().size());
        String logTableName = getLogTableName(zfd.getZipFileName());
        TableDescriptor xmlLogTableDesc = descs.get(logTableName);
        for (FileData fd : zfd.getErrFileData()) {
            Object[] logData = createLogData(fd, zfd.getTaskId());
            xmlFileLogs.add(logData);
        }
        saveLogs(zfd, xmlFileLogs, xmlLogTableDesc);
        logger.info("[{}], 保存xml日志完毕, 状态:[xsd校验失败], 耗时：{}" ,
                zfd.getZipFileName(), 
                TimeUtil.format(System.nanoTime() - start));
    }
    
    
    public void saveXmlLogs(ZipFileData zfd) {
        long start = System.nanoTime();
        List<Object[]> xmlFileLogs = new ArrayList<Object[]>(zfd.getFileData().size());
        String logTableName = getLogTableName(zfd.getZipFileName());
        TableDescriptor xmlLogTableDesc = descs.get(logTableName);
        for (FileData fd : zfd.getFileData()) {
            Object[] logData = createLogData(fd, zfd.getTaskId());
            xmlFileLogs.add(logData);
        }
        saveLogs(zfd, xmlFileLogs, xmlLogTableDesc);
        logger.info("[{}], 保存xml日志完毕, 耗时：{}" ,
                zfd.getZipFileName(), 
                TimeUtil.format(System.nanoTime() - start));
    }

    private void saveLogs(ZipFileData zfd, List<Object[]> xmlFileLogs, TableDescriptor xmlLogTableDesc) {
        Connection conn = null;
        try {
            conn = DataSourceManager.getConn();
            persistenceDao.save2db(conn, xmlFileLogs, xmlLogTableDesc);
        } catch (SQLException e) {
            logger.error("[{}], 保存xml日志失败, 错误信息:{}",
                    zfd.getZipFileName(),
                    e.getMessage());
            logger.error(e.getMessage(), e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }
    
    /**
     * 获取日志表名
     * @param zipFileName
     * @return
     */
    private String getLogTableName(String zipFileName) {
        if(isAjData(zipFileName) ){
            return TABLE_AJXML;
        }else if(isAqAjReq(zipFileName)){
            return TABLE_AQAJXML;
        }else if(isZzjgData(zipFileName)){
            return TABLE_ZZJGXML;
        }else{
            return TABLE_DLXML;
        }
    }

    /**
     * 创建日志数据
     * @param fileData
     * @param taskId
     * @return
     */
    private Object[] createLogData(FileData fileData, String taskId) {
        if(isAjData(fileData.getZipFileName())  ){
            return createAjLogData(fileData, taskId);
        }else if(isAqAjReq(fileData.getZipFileName())){
            return createAqajLogData(fileData, taskId);
        }else if(isZzjgData(fileData.getZipFileName())){
            return createZzjgLogData(fileData, taskId);
        }else{
            return createDlLogData(fileData, taskId);
        }
    }
    

    /**
     * 判断是否是案件数据
     * @param fd
     * @return
     */
    private boolean isAjData(String zipFileName) {
        return ZipTypeUtil.isAjData(zipFileName);
    }
    
    /**
     * 判断是否是组织机构数据
     * @param zipFileName
     * @return
     */
    private boolean isZzjgData(String zipFileName) {
        return ZipTypeUtil.isZzjgData(zipFileName);
    }
    /**
     *  判断是否是其他案件数据
     * @param zipFileName
     * @return
     */
    private boolean isAqAjReq(String zipFileName) {
        return ZipTypeUtil.isAqAjReq(zipFileName);
    }
    
    /**
     * 创建组织机构日志数据
     * @param fd
     * @param taskId
     * @param ajDescriptor
     * @param recordDescriptor
     * @return
     */
    private Object[] createZzjgLogData(FileData fd, String taskId) {
        int colSize = jgXmlLogDesc.getColumnSize();
        Object[] obj = new Object[colSize];
        obj[jgXmlLogDesc.getColumnIndex("C_ID")] = KeyGenerator.genId();
        obj[jgXmlLogDesc.getColumnIndex("C_ID_SJB")] = taskId;
        obj[jgXmlLogDesc.getColumnIndex("C_XML")] = fd.getFileName();
        obj[jgXmlLogDesc.getColumnIndex("N_FY")] = fd.getCorpId();
        obj[jgXmlLogDesc.getColumnIndex("N_ZT")] = fd.getStatus();
        if (fd.isError()) {
            if(fd.getErrorMessage().length() >900){
                obj[jgXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage().substring(0, 900);
            }else{
                obj[jgXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
            obj[jgXmlLogDesc.getColumnIndex("C_JYJGGL")] = fd.getGlerrorMessage();
        } else if(fd.isIgnore()) {
            if(fd.getIgnoreMessage().length() > 900){
                obj[jgXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getIgnoreMessage().substring(0, 900);
            }else{
                obj[jgXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
        } else {
            obj[jgXmlLogDesc.getColumnIndex("C_JYJG")] = "成功";
        }
        obj[jgXmlLogDesc.getColumnIndex("D_CLSJ")] = TimeUtil.getStateTime(runAsDTC);
        return obj;
    }
    
    private Object[] createDlLogData(FileData fd, String taskId) {
        int colSize = dlXmlLogDesc.getColumnSize();
        Object[] obj = new Object[colSize];
        obj[dlXmlLogDesc.getColumnIndex("C_ID")] = KeyGenerator.genId();
        obj[dlXmlLogDesc.getColumnIndex("C_ID_SJB")] = taskId;
        obj[dlXmlLogDesc.getColumnIndex("C_XML")] = fd.getFileName();
        obj[dlXmlLogDesc.getColumnIndex("N_FY")] = fd.getCorpId();
        obj[dlXmlLogDesc.getColumnIndex("N_ZT")] = fd.getStatus();
        if (fd.isError()) {
            if(fd.getErrorMessage().length() > 900){
                obj[dlXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage().substring(0, 900);
            }else{
                obj[dlXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
            obj[dlXmlLogDesc.getColumnIndex("C_JYJGGL")] = fd.getGlerrorMessage();
        } else if(fd.isIgnore()) {
            if(fd.getIgnoreMessage().length() > 900){
                obj[dlXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getIgnoreMessage().substring(0, 900);
            }else{
                obj[dlXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
        } else {
            obj[dlXmlLogDesc.getColumnIndex("C_JYJG")] = "成功";
        }
        obj[dlXmlLogDesc.getColumnIndex("D_CLSJ")] = TimeUtil.getStateTime(runAsDTC);
        return obj;
    }

    /**
     * 创建案件的日志数据
     * @param fd
     * @param taskId
     * @return
     */
    private Object[] createAjLogData(FileData fd, String taskId) {
        int colSize = ajXmlLogDesc.getColumnSize();
        Object[] obj = new Object[colSize];
        obj[ajXmlLogDesc.getColumnIndex("C_ID")] = KeyGenerator.genId();
        obj[ajXmlLogDesc.getColumnIndex("C_ID_SJB")] = taskId;
        obj[ajXmlLogDesc.getColumnIndex("C_XML")] = fd.getFileName();
        obj[ajXmlLogDesc.getColumnIndex("C_AJLB")] = fd.getType();
        obj[ajXmlLogDesc.getColumnIndex("N_AJBS")] = fd.getId();
        obj[ajXmlLogDesc.getColumnIndex("N_FY")] = fd.getCorpId();
        if (fd.isError()) {
            if(fd.getErrorMessage().length() > 900){
                obj[ajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage().substring(0, 900);
            }else{
                obj[ajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
            obj[ajXmlLogDesc.getColumnIndex("C_JYJGGL")] = fd.getGlerrorMessage();
        } else if(fd.isIgnore()) {
            if(fd.getIgnoreMessage().length() > 900){
                obj[ajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getIgnoreMessage().substring(0, 900);
            }else{
                obj[ajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
        } else {
            TableData aj = fd.getTableData().get(fd.getRootTableName());
            TableDescriptor ajDesc = descs.get(aj.getTableName());
            Object[] ajRow = aj.getData().get(0);
            setAjXmlColData(obj, ajRow, ajXmlLogDesc, ajDesc, "C_AH");
            setAjXmlColData(obj, ajRow, ajXmlLogDesc, ajDesc, "D_LARQ");
            setAjXmlColData(obj, ajRow, ajXmlLogDesc, ajDesc, "D_JARQ");
            setAjXmlColData(obj, ajRow, ajXmlLogDesc, ajDesc, "N_AJJZJD");
            obj[ajXmlLogDesc.getColumnIndex("C_JYJG")] = "成功";
        }
        obj[ajXmlLogDesc.getColumnIndex("N_ZT")] = fd.getStatus();
        obj[ajXmlLogDesc.getColumnIndex("D_CLSJ")] = TimeUtil.getStateTime(runAsDTC);
        return obj;
    }
    
    /**
     * 创建案件的日志数据
     * @param fd
     * @param taskId
     * @return
     */
    private Object[] createAqajLogData(FileData fd, String taskId) {
        int colSize = aqajXmlLogDesc.getColumnSize();
        Object[] obj = new Object[colSize];
        obj[aqajXmlLogDesc.getColumnIndex("C_ID")] = KeyGenerator.genId();
        obj[aqajXmlLogDesc.getColumnIndex("C_ID_SJB")] = taskId;
        obj[aqajXmlLogDesc.getColumnIndex("C_XML")] = fd.getFileName();
        obj[aqajXmlLogDesc.getColumnIndex("C_AJLB")] = fd.getType();
        obj[aqajXmlLogDesc.getColumnIndex("N_AJBS")] = fd.getId();
        obj[aqajXmlLogDesc.getColumnIndex("N_FY")] = fd.getCorpId();
        if (fd.isError()) {
            if(fd.getErrorMessage().length() > 900){
                obj[aqajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage().substring(0, 900);
            }else{
                obj[aqajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
            obj[aqajXmlLogDesc.getColumnIndex("C_JYJGGL")] = fd.getGlerrorMessage();
        } else if(fd.isIgnore()) {
            if(fd.getIgnoreMessage().length()>900){
                 obj[aqajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getIgnoreMessage().substring(0, 900);
            }else{
                obj[aqajXmlLogDesc.getColumnIndex("C_JYJG")] = fd.getErrorMessage();
            }
        } else {
            TableData aj = fd.getTableData().get(fd.getRootTableName());
            TableDescriptor ajDesc = descs.get(aj.getTableName());
            Object[] ajRow = aj.getData().get(0);
            setAjXmlColData(obj, ajRow, aqajXmlLogDesc, ajDesc, "C_AH");
            setAjXmlColData(obj, ajRow, aqajXmlLogDesc, ajDesc, "D_LARQ");
            setAjXmlColData(obj, ajRow, aqajXmlLogDesc, ajDesc, "D_JARQ");
            setAjXmlColData(obj, ajRow, aqajXmlLogDesc, ajDesc, "N_AJJZJD");
            obj[aqajXmlLogDesc.getColumnIndex("C_JYJG")] = "成功";
        }
        obj[aqajXmlLogDesc.getColumnIndex("N_ZT")] = fd.getStatus();
        obj[aqajXmlLogDesc.getColumnIndex("D_CLSJ")] = TimeUtil.getStateTime(runAsDTC);
        return obj;
    }
    
    
    
    private void setAjXmlColData(Object[] obj, Object[] ajRow, TableDescriptor ajXmlLogDesc, TableDescriptor ajDesc, String colName){
    	if(ajDesc.getColumnIndex(colName) < 0){
    		return;
    	}
    	obj[ajXmlLogDesc.getColumnIndex(colName)] = ajRow[ajDesc.getColumnIndex(colName)];
    }

}
