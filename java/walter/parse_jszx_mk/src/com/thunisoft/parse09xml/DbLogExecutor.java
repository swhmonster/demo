package com.thunisoft.parse09xml;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.commons.lang3.concurrent.BasicThreadFactory;
import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.Task;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.persistence.DbLogService;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 将dblog相关表的操作封装起来（DB_SJB中的相关操作）
 * @author xiegq
 *
 */
public class DbLogExecutor {
    
    private static final Logger logger = LoggerFactory.getLogger(DbLogExecutor.class);

    // 具体的业务实现类
    private final DbLogService dbLogService;
    
    // 记录日志的线程池
    private final ExecutorService saveLogPool;
    
    // 记录日志的任务个数
    private final AtomicInteger logTaskCount = new AtomicInteger(0);
    
    private final boolean runAsServerModel;
    
    private final long dataPathScanPeriod;
    
    private volatile String zipBakPath;
    
    private final String errXmlPath;
    
    public DbLogExecutor(ConfigManager configManager, String zipBakPath) {
        super();
        this.saveLogPool = Executors.newFixedThreadPool(
                configManager.getConfigAsInt("thread.saveLogPoolSize"), 
                new BasicThreadFactory.Builder().namingPattern("log-%d").build());
        this.dbLogService = new DbLogService(configManager);
        this.dataPathScanPeriod = (long)configManager.getConfigAsInt("config.period.scanDataPath") * 1000; 
        this.zipBakPath = zipBakPath;
        this.errXmlPath = configManager.getConfig("config.errXmlPath");
        this.runAsServerModel = "true".equalsIgnoreCase(configManager.getConfig("option.runAsServerModel"));
    }

    public int getLogTaskCount() {
        return this.logTaskCount.get();
    }
    
    public void setZipBakPath(String zipBakPath) {
        this.zipBakPath = zipBakPath;
    }

    public void updateTaskStatus(final String zipFileName, final String taskId, final boolean success) {
        logTaskCount.incrementAndGet();
        saveLogPool.execute(new Runnable() {
            public void run() {
                try {
                    dbLogService.updateTaskStatus(zipFileName, taskId, success);
                } catch (Exception e) {
                    logger.error(e.getMessage(), e);
                } finally {
                    logTaskCount.decrementAndGet();
                }
            }
        });
    }
    
    public void saveXmlLogs(final ZipFileData zfd) {
        logTaskCount.incrementAndGet();
        saveLogPool.execute(new Runnable() {
            public void run() {
                dbLogService.saveXmlLogs(zfd);
                logTaskCount.decrementAndGet();
            }
        });
        
        // 单独存放出错的文件
        try {
			bakErrFile(zfd);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    public void saveXsdFailureXmlLogs(final ZipFileData zfd) {
        logTaskCount.incrementAndGet();
        saveLogPool.execute(new Runnable() {
            public void run() {
                dbLogService.saveXsdFailureXmlLogs(zfd);
                logTaskCount.decrementAndGet();
            }
        });
        
        // 单独存放出错的文件
        try {
			bakErrFile(zfd);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    private void bakErrFile(final ZipFileData zfd) throws IOException{
        // 单独存放出错的文件
        logTaskCount.incrementAndGet();
        saveLogPool.execute(new Runnable() {
            public void run() {
                ZipFile zipFile = null;
                try {
                    zipFile = new ZipFile(zfd.getZipFilePath());
                    File errPath = new File(errXmlPath + "/err/" + TimeUtil.getYYYYMMDDTimeStr(new Date()) + "/"+ zfd.getCorpId() + "/" + zfd.getZipFileName());
                    File ignorePath = new File(errXmlPath + "/ignore/" + TimeUtil.getYYYYMMDDTimeStr(new Date()) + "/"+ zfd.getCorpId() + "/" + zfd.getZipFileName());
                    
                    // 校验失败
                    if (!zfd.getErrFileData().isEmpty()) {
                        if (!errPath.exists()) {
                            errPath.mkdirs();
                        }
                        for (FileData fd : zfd.getErrFileData()) {
                            ZipEntry zipEntry = zipFile.getEntry(fd.getFileName());
                            copy(zipFile, zipEntry, errPath);
                        }
                    }
                    // 因为xml相同导致冲突
                    for (FileData fd : zfd.getFileData()) {
                        if (fd.isIgnore()) {
                            if (!ignorePath.exists()) {
                                ignorePath.mkdirs();
                            }
                            ZipEntry zipEntry = zipFile.getEntry(fd.getFileName());
                            copy(zipFile, zipEntry, ignorePath);
                        }
                    }
                    
                    // 保存失败
                    for (FileData fd : zfd.getFileData()) {
                        if (fd.isError()) {
                            if (!errPath.exists()) {
                                errPath.mkdirs();
                            }
                            ZipEntry zipEntry = zipFile.getEntry(fd.getFileName());
                            copy(zipFile, zipEntry, errPath);
                        }
                    }
                    
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                } finally {
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                        } catch (IOException e) {
                            logger.error(e.getMessage(), e);
                        }
                    }
                }
                logTaskCount.decrementAndGet();
            }
        });
    }
    
    private void copy(ZipFile zipFile, ZipEntry zipEntry, File path) {
        InputStream is = null;
        OutputStream os = null;
        try {
            is = zipFile.getInputStream(zipEntry);
            os = new FileOutputStream(path.getAbsolutePath() + "/" + zipEntry.getName());
            byte[] b = new byte[8192];
            int len = is.read(b);
            while (len != -1) {
                os.write(b, 0, len);
                len = is.read(b);
            }
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }
    
    public void initScanTask(final File path) {
        // 执行之前需要先将任务任务信息写入数据库
        logTaskCount.incrementAndGet();
        saveLogPool.execute(new Runnable() {
            public void run() {
                while (true) {
                    scanAndInitTask(path);
                    if (!runAsServerModel) {
                        break;
                    }
                    // 如果是服务模式，则周期性搜索数据文件路径
                    try {
                        Thread.sleep(dataPathScanPeriod);
                    } catch (InterruptedException e) {
                        logger.error(e.getMessage(), e);
                        break;
                    }
                }
                logTaskCount.decrementAndGet();
            }
        });
    }
    

    // 递归扫描所有的文件路径
    public void scanAndInitTask(final File path) {
        if (!path.exists()) {
            path.mkdirs();
            return;
        }
        for (final File file : path.listFiles()) {
            if (file.isDirectory()) {
                scanAndInitTask(file);
            }
            if (file.isFile()) {
                initTask(file.getAbsolutePath());
            }
            if (runAsServerModel) {
                if (path.listFiles().length == 0) {
                    path.delete();
                }
            }
        }
    }
    
    private boolean copy(File zipFile, String path) {
        OutputStream os = null;
        InputStream is = null;
        try {
            is = new FileInputStream(zipFile);
            os = new FileOutputStream(path);
            byte[] b = new byte[8192];
            int len = is.read(b);
            while (len != -1) {
                os.write(b, 0, len);
                len = is.read(b);
            }
            return true;
        } catch (IOException e) {
            logger.error("拷贝文件失败, 文件：[{}], 目标位置:[{}]", zipFile.getAbsolutePath(), path);
            logger.error(e.getMessage(), e);
            return false;
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
            if (os != null) {
                try {
                    os.close();
                } catch (IOException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
    }

    /**
     * 获取文件路径
     * @param zipName 文件信息
     * @return
     */
    private String getFileBakPath(String zipName) {
        // zip包类型
        String lx = ZipTypeUtil.getType(zipName);
        // 所在单位大排行
        // 使用拆分来获取路径，兼容前缀不为两位的案件包
        String dph = zipName.split("_")[1];
        String date = TimeUtil.getYYYYMMDDTimeStr(new Date());
        String path = zipBakPath + "/" + lx + "/" + dph + "/" + date;
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        return path  + "/" + zipName;
    }
    
    private String getErrorZipPath(String zipName){
    	String date = TimeUtil.getYYYYMMDDTimeStr(new Date());
    	String path = zipBakPath + "/" + "error"  + "/" + date;
        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        return path  + "/" + zipName;
    }

    private void initTask(String filePath) {
        
    	File f = new File(filePath);
        if(isNotRightFile(filePath)){
            logger.warn("zip包不合法：" + filePath);
            filePath = getErrorZipPath(f.getName());
            if (!copy(f, filePath)) {
                return;
            }
            if (!f.delete()) {
                logger.error("删除文件[{}]失败，", f.getAbsolutePath());
            }
            return;
        }
        if (runAsServerModel) {
            // 移动文件
            filePath = getFileBakPath(f.getName());
            if (!copy(f, filePath)) {
                return;
            }
            if (!f.delete()) {
                logger.error("删除文件[{}]失败，", f.getAbsolutePath());
            }
        }

        String absPath = filePath.replaceAll("\\\\", "/");
        String path = absPath.substring(zipBakPath.length());
        if (!path.startsWith("/")) {
            path = "/" + path;
        }
        dbLogService.initTask(path);
    }

    /**
     * 根据文件名判断是否需要做处理
     * @param filePath
     * @return
     */
    private boolean isNotRightFile(String filePath) {
        String absPath = filePath.replaceAll("\\\\", "/");
        String name = absPath.substring(absPath.lastIndexOf("/") + 1);
        if(name.length() < 8){
            return true;
        }
        String lx = name.split("_")[0];
        if(!ZipTypeUtil.containKeyType(lx)){
            return true;
        }
        return false;
    }
    
    public List<Task> fetchTask(int status, int count) {
        return dbLogService.fetchTask(status, count);
        
    }

    public void shutdown() {
        this.saveLogPool.shutdownNow();
    }
    

}
