package com.thunisoft.parse09xml.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.bean.DeleteAjRequest;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.TableData;
import com.thunisoft.parse09xml.bean.TableDescriptor;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.util.KeyGenerator;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 用于保存数据的服务，线程安全
 * @author xiegq
 *
 */
public class SaveDataService {
    
    private static Logger logger = LoggerFactory.getLogger(SaveDataService.class);
    
    private Map<String, TableDescriptor> descs;
    
    private ConfigManager configManager;
    
    private PersistenceDao persistenceDao;
    
    private volatile boolean del = true;
    /**
     * 案件表的修改状态：修改
     */
    private final int ZLJL_ZT_UPDATE = 1;
    
    /**
     * 案件表的修改状态：删除
     */
    private final int ZLJL_ZT_DEL = 2;
    
    private boolean runAsDTC;
    /**
     * 构造方法
     * @param configManager
     */
    public SaveDataService(ConfigManager configManager) {
        this.descs = configManager.getTableDescs();
        this.configManager = configManager;
        this.persistenceDao = new PersistenceDao(configManager);
        del = "true".equalsIgnoreCase(configManager.getConfig("option.del"));
        this.runAsDTC = "true".equalsIgnoreCase(configManager.getConfig("option.runAsDTC"));
    }
    
    
    /**
     * 保存数据
     * @param zfd
     */
    public int saveData(ZipFileData zfd) {
    	if(ZipTypeUtil.isDelAjReq(zfd.getZipFileName())){
    		return deleteAjData(zfd);
    	}else{
    		return saveData2db(zfd);
    	}
    }
    

    /**
     * 保存要删除的数到数据库
     * @param zfd
     */
    private int deleteAjData(ZipFileData zfd) {
    	List<FileData> fileData = zfd.getFileData();
        String fileName = zfd.getZipFileName();
        Connection conn = null;
        try {
            conn = DataSourceManager.getConn();
            conn.setAutoCommit(false);
            
            long start = System.nanoTime();
            
            start = System.nanoTime();
            int count = 0;
            // 填充增量信息表 每类案件不同
            for (FileData fd : fileData) {
                List<Object[]> zlDescDatas = new ArrayList<Object[]>();
                String taskid = zfd.getTaskId();
                for(DeleteAjRequest dar : fd.getDelReqs()){
                    if(StringUtils.isEmpty(dar.getCaseType())){
                        continue;
                    }
                    persistenceDao.execInsDelRec(conn, dar, taskid);
                    conn.commit();
                    // 删除案件 首页审核通过后 再统一删除
                    if (del) {
                        persistenceDao.execDelDataProc(conn, dar.getCaseType(),
                            dar.getId());
                        conn.commit();
                        String zlTableName = configManager.getIncrTab(dar.getCaseType());
                        TableDescriptor zlTableDesc = descs.get(zlTableName);
                        Object[] zlDescData = createZlDescData(dar.getId(), zlTableDesc, ZLJL_ZT_DEL);
                        zlDescDatas.clear();
                        zlDescDatas.add(zlDescData);
                        persistenceDao.save2db(conn, zlDescDatas, zlTableDesc);
                        conn.commit();
                    }
                    count++;
                }
            }
            
            logger.info("[{}], 删除请求执行完毕, 删除案件数量[{}], 增量信息更新完毕, 耗时：{}" ,
                    zfd.getZipFileName(), 
                    count, 
                    TimeUtil.format(System.nanoTime() - start));
            
            conn.setAutoCommit(true);
            return Constant.XMLLOG_STATUS_SAVE_SUCCESS;
        } catch (SQLException e1) {
        	if(conn != null) {
                try {
                    logger.error(fileName + " save faild.", e1);
                    conn.rollback();
                } catch (SQLException e) {
                    logger.error(fileName + " save faild.", e);
                }
            }
            return Constant.XMLLOG_STATUS_SAVE_FAILURE;
        } finally {
            if(conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }
    
    private int saveData2db(ZipFileData zfd) {
        Connection conn = null;
        try {
            conn = DataSourceManager.getConn();
            conn.setAutoCommit(false);
            
            // 以合并方式保存，如果失败以拆分方式重试
            boolean ret = true;
            if (!saveDataInMergeModel(conn, zfd)) {
                ret = saveDataInDividedModel(conn, zfd);
            }
            
            // 插入增量数据
            insertIncrData(conn, zfd);
            if (ret) {
                return Constant.XMLLOG_STATUS_SAVE_SUCCESS;
            } else {
                return Constant.XMLLOG_STATUS_SAVE_FAILURE;
            }
        } catch (SQLException e) {
            logger.error("[{}]-[{}/{}], 保存失败, 错误信息：{}", 
                    zfd.getZipFileName(), 
                    zfd.getPartNum(), 
                    zfd.getTotalNum(), 
                    e.getMessage());
            logger.error(e.getMessage(), e);
            return Constant.XMLLOG_STATUS_SAVE_FAILURE; 
        } finally {
            if(conn != null) {
                try {
                    conn.setAutoCommit(true);
                    conn.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }


    private boolean saveDataInMergeModel(Connection conn, ZipFileData zfd) {
        String fileName = zfd.getZipFileName();
        // 合并一个zip文件中的数据以表的方式表示
        Map<String, TableData> tableData = mergeTableData(zfd.getFileData());
        try {
            // 删除案件
            deleteData(conn, zfd);
            long start = System.nanoTime();
            int count = persistenceDao.save2db(conn, tableData.values());
            conn.commit();

            logger.info("[{}]-[{}/{}], 保存数据完毕, 表个数：{}, 记录数：{}, 耗时：{}" ,
                    fileName, 
                    zfd.getPartNum(), 
                    zfd.getTotalNum(), 
                    tableData.size(), 
                    count,
                    TimeUtil.format(System.nanoTime() - start));
            return true;
        } catch (SQLException e) {
            try {
                logger.error("[{}]-[{}/{}], 保存失败, 任务将以拆分模式重试, 错误信息：{}", 
                        zfd.getZipFileName(), 
                        zfd.getPartNum(), 
                        zfd.getTotalNum(), 
                        e.getMessage());
                conn.rollback();
            } catch (SQLException e1) {
                logger.error("[" + zfd.getZipFileName() + "], 回滚事务失败 ", e1);
            }
        }
        return false;
    }
    
    public boolean saveDataInDividedModel(Connection conn, ZipFileData zfd) {
        String fileName = zfd.getZipFileName();
        boolean success = true;
        try {
            // 删除案件
            deleteData(conn, zfd);
            long start = System.nanoTime();
            for (FileData fd : zfd.getFileData()) {
                // 文件保存的部分成功的情况
                if (!fd.isErrorOrIgnore() && !saveFileData(conn, fd)) {
                    success = false;
                }
                conn.commit();
            }
            logger.info("[{}]-[{}/{}], 分开保存数据完毕, 耗时：{}" ,
                    fileName, 
                    zfd.getPartNum(), 
                    zfd.getTotalNum(), 
                    TimeUtil.format(System.nanoTime() - start));
        } catch (SQLException e) {
            try {
                logger.error("[{}]-[{}/{}], 分开保存失败, 错误信息：{}", 
                        zfd.getZipFileName(), 
                        zfd.getPartNum(), 
                        zfd.getTotalNum(), 
                        e.getMessage());
                conn.rollback();
            } catch (SQLException e1) {
                logger.error("[" + zfd.getZipFileName() + "], 回滚事务失败 ", e1);
            }
        }
        return success;
    }


    private boolean saveFileData(Connection conn, FileData fd) {
        boolean success = true;
        for (TableData td : fd.getTableData().values()) {
            TableDescriptor desc = descs.get(td.getTableName());
            logger.debug("保存数据，表名:[{}]", desc.getTableName());
            try {
                persistenceDao.save2db(conn, td.getData(), desc);
            } catch (SQLException e) {
                success = false;
                fd.setError(true);
                String msg = String.format("数据保存失败，表名:[%s], 错误信息:%s",
                        desc.getTableName(), 
                        e.getMessage());
                String glmsg = "";
                if (null == e.getMessage()){
                	glmsg = "其他原因解析失败";
                	
                }else{
                	glmsg = "文件内容格式不符合上报标准";
                }
                fd.addErrorMessage(msg);
                fd.addGlerrorMessage(glmsg);
                fd.setStatus(Constant.XMLLOG_STATUS_SAVE_FAILURE);
                
                logger.error("[{}]-[{}]-[{}], 数据保存失败, \r\nsql:{}, \r\ndata :{}",
                        fd.getZipFileName(),
                        fd.getFileName(),
                        desc.getTableName(),
                        desc.getInsertSql(),
                        td);
                logger.error(e.getMessage(), e);
                try {
                    conn.rollback();
                } catch (SQLException e1) {
                    logger.error("[" + fd.getZipFileName() + "]-["+ fd.getFileName() +"]-["+desc.getTableName()+"], 回滚事务失败 ", e1);
                }
            }
        }
        return success;
    }
    
    private Map<String, TableData> mergeTableData(List<FileData> fileData) {
        Map<String, TableData> tableData = new HashMap<String, TableData>();
        for (FileData fd : fileData) {
            // 忽略有错的和xml冲突的
            if (fd.isErrorOrIgnore()) {
                continue;
            }
            for (Entry<String, TableData> td : fd.getTableData().entrySet()) {
                String tabelName = td.getKey();
                TableData nt = td.getValue();
                TableData t = tableData.get(tabelName);
                if (t == null) {
                    t = new TableData(nt.getTableName(), nt.getColSize());
                    tableData.put(tabelName, t);
                }
                // 合并两个tableData
                t.getData().addAll(nt.getData());
            }
        }
        return tableData;
    }


    private void deleteData(Connection conn, ZipFileData zfd) {
        long start = System.nanoTime();
//        Statement stat = null;
//        try {
//            stat = conn.createStatement();
////            stat.execute("set chained off");
//            //set nocount on
//        } catch (SQLException e) {
//            logger.error(e.getMessage(), e);
//        } finally {
//            if (stat != null) {
//                try {
//                    stat.close();
//                } catch (SQLException e) {
//                    logger.error(e.getMessage(), e);
//                }
//            }
//        }
        try {
            for (FileData fd : zfd.getFileData()) {
                if (!fd.isErrorOrIgnore()) {
                    persistenceDao.execDelDataProc(conn, fd.getType(), fd.getId());
                }
                // 每个案件/单位提交一次
                conn.commit();
            }
            
            logger.info("[{}]-[{}/{}], 删除完毕, 耗时：{}" ,
                    zfd.getZipFileName(), 
                    zfd.getPartNum(), 
                    zfd.getTotalNum(), 
                    TimeUtil.format(System.nanoTime() - start));
        } catch (SQLException e) {
            logger.info("[{}]-[{}/{}], 删除失败, 错误信息：{}" ,
                    zfd.getZipFileName(), 
                    zfd.getPartNum(), 
                    zfd.getTotalNum(), 
                    e.getMessage());
            logger.error(e.getMessage(), e);
        }
    }


    private void insertIncrData(Connection conn, ZipFileData zfd)
            throws SQLException {
        
        //非案件，不写增量记录
        if(!ZipTypeUtil.isAjData(zfd.getZipFileName()) && !ZipTypeUtil.isAqAjReq(zfd.getZipFileName())){
            return;
        }
        
        long start = System.nanoTime();
        // 填充增量信息表 每类案件不同
        for (FileData fd : zfd.getFileData()) {
            if (fd.isErrorOrIgnore()) {
                continue;
            }
            String tableName = configManager.getIncrTab(fd.getType());
            TableDescriptor zlTableDesc = descs.get(tableName);
            Object[] zlDescData = createZlDescData(fd.getId(), zlTableDesc, ZLJL_ZT_UPDATE);
            List<Object[]> zlDescDatas = new ArrayList<Object[]>(1);
            zlDescDatas.add(zlDescData);
            persistenceDao.save2db(conn, zlDescDatas, zlTableDesc);
        }
        conn.commit();
        logger.info("[{}]-[{}/{}], 增量信息更新完毕, 耗时：{}" ,
                zfd.getZipFileName(), 
                zfd.getPartNum(), 
                zfd.getTotalNum(), 
                TimeUtil.format(System.nanoTime() - start));
    }

    
    
    /**
     * 创建增量描述表的数据
     * @param fileData
     * @param ajDescriptor
     * @param recordDescriptor
     * @return
     */
    private Object[] createZlDescData(Long id, TableDescriptor zlTableDesc, Integer zt) {
        int colSize = zlTableDesc.getColumnSize();
        Object[] obj = new Object[colSize];
        obj[zlTableDesc.getColumnIndex("C_ID")] = KeyGenerator.genId();
        obj[zlTableDesc.getColumnIndex("N_AJBS")] = id;
        obj[zlTableDesc.getColumnIndex("D_UPDATETIME")] = TimeUtil.getStateTime(runAsDTC);
        obj[zlTableDesc.getColumnIndex("N_ZT")] = zt;
        return obj;
    }

    
}
