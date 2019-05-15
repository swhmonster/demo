package com.thunisoft.parse09xml;

import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.xml.namespace.QName;
import javax.xml.ws.Service;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.concurrent.BasicThreadFactory;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.bean.DeleteAjRequest;
import com.thunisoft.parse09xml.bean.FileData;
import com.thunisoft.parse09xml.bean.Task;
import com.thunisoft.parse09xml.bean.ZipFileData;
import com.thunisoft.parse09xml.parsing.AbstractParseXmlService;
import com.thunisoft.parse09xml.parsing.ParseXmlService;
import com.thunisoft.parse09xml.persistence.Constant;
import com.thunisoft.parse09xml.persistence.HbaseWriteStoreService;
import com.thunisoft.parse09xml.persistence.LogSpaceClearService;
import com.thunisoft.parse09xml.persistence.SaveDataService;
import com.thunisoft.parse09xml.persistence.SaveFileService;
import com.thunisoft.parse09xml.receiving.client.tdh6.DataTransService;
import com.thunisoft.parse09xml.receiving.client.tdh6.UnZip;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 执行一个批次的任务，建议一个批次100个zip文件
 * @author xiegq
 *
 */
public class Executor {
    
    private static Logger logger = LoggerFactory.getLogger(Executor.class);
    
    final SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
    final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    
    // 解析xml的线程池
    private ExecutorService parseXmlPool = null;
    // 保存数据到数据库的线程池
    private ExecutorService saveDataPool = null;
    //保存接口案件到本地的线程池
    private ExecutorService saveXmlPool = null;
    // 拆分任务线程池
    private ExecutorService splitTaskPool = null;
    // 用于执行清理数据库日志的线程
    private ExecutorService clearDbLogsPool = null;
    // 定时从数据库获取任务的线程   
    private ExecutorService fetchTaskPool = null;
    // 保存文件的线程
    private ExecutorService saveFilePool = null;
    //初始化任务的线程
    private ExecutorService initTaskPool = null;

    private SaveDataService saveDataService;
    private AbstractParseXmlService parseXmlTask;
    private LogSpaceClearService logSpaceClearService = new LogSpaceClearService();
    private SaveFileService saveFileService;
    
    private DbLogExecutor dbLogExecutor;
    
    // 待保存的任务数据队列
    private BlockingQueue<ZipFileData> zfdq;
    
    // 由于有重复数据导致需要延时保存的数据
    private BlockingQueue<ZipFileData> w2sq;
    
    // 正在保存的文件数据id，用于去重判断
    private Map<Long, ZipFileData> savingFileData = new ConcurrentHashMap<Long, ZipFileData>();
    
    // 总任务数
    private AtomicInteger totalTaskcount = new AtomicInteger(0);
    // 等待解析的任务数
    private AtomicInteger waitingParseTaskCount = new AtomicInteger(0);
    // 正在解析的任务数
    private AtomicInteger parsingTaskCount = new AtomicInteger(0);
    // 保存文件的任务数
    private AtomicInteger saveFileTaskCount = new AtomicInteger(0);
    // 正在保存数据库的任务数
    private AtomicInteger savingDataTaskCount = new AtomicInteger(0);
    // 已完成的任务数
    private AtomicInteger doneTaskCount = new AtomicInteger(0);
    // 一个zip拆分的份数
    private volatile int splitNum;
    
    private volatile int parseXmlPoolSize;
    private volatile int saveDataPoolSize;
    private volatile int saveXmlPoolSize;
    private volatile int waitingSaveTaskQueueSize;
    private volatile int fetchTaskCount;
    
    // 打印任务状态的周期 ，默认5s
    private int reportTaskStatusPeriod = 5 * 1000;
    // 清除数据库日志的周期，默认5分钟
    private int clearDbLogsPeriod = 5 * 1000 * 60;
    // 从数据库中获取任务的周期，默认5s
    private int fetchTaskPeriod = 5 * 1000;
    
    // 以服务方式运行，当以服务方式运行时，应用程序不会自动结束
    private boolean runAsServerModel = false;
    //以接口模式运行，执行下行接口运行可以导入指定信息
    private boolean runAsInterfaceModel = false;
    
    private boolean printTaskStatusOnConsole = false;
    // 是否保存文件
    private boolean saveFile = true;
    // 是否保存数据
    private boolean saveData = true;
    
    //定时器生效模式，不实用conf参数
    private boolean interfaceTimerValid=false;
    
    private String zipBakPath;
    
    private ConfigManager configManager;
    
    //保存实体文件（文书）到HBase服务类
    private  HbaseWriteStoreService hbaseWriteStoreService;
    
    // 隐藏构造函数
    private Executor (ConfigManager configManager) {
        this.configManager = configManager;
    }
    
    public static synchronized Executor createExector(ConfigManager configManager) {
        final int parseXmlPoolSize = configManager.getParseXmlPoolSize(); 
        final int splitNum = configManager.getConfigAsInt("config.splitNum");
        final int saveDataPoolSize = configManager.getConfigAsInt("thread.saveDataPoolSize");
        final int saveXmlPoolSize = configManager.getConfigAsInt("thread.saveXmlPoolSize");
        final int taskQueueSize =  configManager.getConfigAsInt("queue.zipFileData.size");
        final int delayedTaskQueueSize =  configManager.getConfigAsInt("queue.delayedZfd.size");
        
        Executor exec = new Executor(configManager);
        exec.saveDataService = new SaveDataService(configManager);
        exec.saveFileService = new SaveFileService(configManager);
        /** 如果没有配置xml解析服务类，默认为09法标导入类 modefied by chendj 2015-12-1 **/
        if (StringUtils.isBlank(configManager.getConfig("parseXmlService"))) {
            exec.parseXmlTask = new ParseXmlService(configManager);
        } else {
            String className = configManager.getConfig("parseXmlService");
            try {
                Class<?> cls = Class.forName(className);
                Object[] params = { configManager };
                Constructor<?> con = cls.getConstructor(ConfigManager.class);
                exec.parseXmlTask = (AbstractParseXmlService) con.newInstance(params);
            } catch (Exception e) {
                logger.error(
                        "Can not create parseXmlService from file : [conf.properties/parseXmlService]",
                        e);
            }
        } 
        // 文书存储
        if( Boolean.valueOf(configManager.getConfig("config.WS.saveHbase"))){
            //连接hbase数据库
            exec.hbaseWriteStoreService = new HbaseWriteStoreService(configManager);
        }
        exec.waitingSaveTaskQueueSize = taskQueueSize;
        exec.parseXmlPoolSize = parseXmlPoolSize;
        exec.saveDataPoolSize = saveDataPoolSize;
        exec.splitNum = splitNum;
        exec.reportTaskStatusPeriod = configManager.getConfigAsInt("config.period.reportTaskStatus") * 1000;
        exec.fetchTaskPeriod = configManager.getConfigAsInt("config.period.fetchTask") * 1000;
        exec.clearDbLogsPeriod = configManager.getConfigAsInt("config.period.clearDbLogs") * 60 * 1000;
        exec.fetchTaskCount = configManager.getConfigAsInt("config.fetchTaskCount");
        
        exec.zfdq = new LinkedBlockingQueue<ZipFileData>(taskQueueSize);
        exec.w2sq = new LinkedBlockingQueue<ZipFileData>(delayedTaskQueueSize);
        exec.parseXmlPool = Executors.newFixedThreadPool(parseXmlPoolSize, 
                new BasicThreadFactory.Builder().namingPattern("px-%d").build());
        exec.splitTaskPool = Executors.newFixedThreadPool(saveDataPoolSize, 
                new BasicThreadFactory.Builder().namingPattern("st-%d").build());
        exec.saveDataPool = Executors.newFixedThreadPool(saveDataPoolSize * splitNum, 
                new BasicThreadFactory.Builder().namingPattern("sd-%d").build());
        exec.saveXmlPool = Executors.newFixedThreadPool(saveXmlPoolSize * splitNum, 
            new BasicThreadFactory.Builder().namingPattern("sd-%d").build());
        exec.clearDbLogsPool = Executors.newFixedThreadPool(
                configManager.getConfigAsInt("thread.clearDbLogsPoolSize"), 
                new BasicThreadFactory.Builder().namingPattern("cl-%d").build());
        exec.fetchTaskPool = Executors.newFixedThreadPool( 
                configManager.getConfigAsInt("thread.fetchTaskPoolSize"), 
                new BasicThreadFactory.Builder().namingPattern("ft-%d").build());
        exec.saveFilePool = Executors.newFixedThreadPool( 
                configManager.getConfigAsInt("thread.saveFilePoolSize"), 
                new BasicThreadFactory.Builder().namingPattern("sf-%d").build());
        exec.initTaskPool = Executors.newSingleThreadExecutor(
            new BasicThreadFactory.Builder().namingPattern("init-%d").build());
        exec.saveFile = "true".equalsIgnoreCase(configManager.getConfig("option.saveFile"));
        exec.saveData = "true".equalsIgnoreCase(configManager.getConfig("option.saveData"));
        exec.runAsServerModel = "true".equalsIgnoreCase(configManager.getConfig("option.runAsServerModel"));
        exec.runAsInterfaceModel = "true".equalsIgnoreCase(configManager.getConfig("option.runAsInterfaceModel"));
        exec.printTaskStatusOnConsole = "true".equalsIgnoreCase(configManager.getConfig("option.printTaskStatusOnConsole"));
        File path = new File(configManager.getZipBakPath());
        if (!path.exists()) {
            path.mkdirs();
        }
        exec.zipBakPath = path.getAbsolutePath().replaceAll("\\\\", "/");
        
        exec.dbLogExecutor = new DbLogExecutor(configManager, exec.zipBakPath);
        
        exec.initSaveDataPool(saveDataPoolSize);
        exec.initClearDbLogsTaskPool();
        exec.initFetchTaskPool();
        
        String msg = String.format("初始化完成，解析线程:%d, 保存线程:%d, 队列:%d, 拆分:%d %n数据文件路径：%s", 
                parseXmlPoolSize, 
                saveDataPoolSize, 
                taskQueueSize,
                splitNum,
                configManager.getConfig("config.dataFilePath"));
        
        if (exec.printTaskStatusOnConsole) {
            logger.error(msg);
        }
        
        logger.info(msg);
        
        return exec;
    }

    private void initSaveDataPool(final int saveDbPoolSize) {
        for (int i = 0; i < saveDbPoolSize; i++) {
            splitTaskPool.execute(new Runnable() {
                public void run() {
                    while (true) {
                        try {
                            ZipFileData zfd = nextTask();
                            savingDataTaskCount.incrementAndGet();
                            try {
                                saveData(zfd);
                                clearSatus(zfd);
                            } finally {
                                savingDataTaskCount.decrementAndGet();
                                doneTaskCount.incrementAndGet();
                            }
                        } catch (InterruptedException e) {
                            logger.error(e.getMessage(), e);
                            break;
                        } catch (Exception e) {
                            logger.error(e.getMessage(), e);
                        }
                    }
                }



            });
        }
    }
    
    /**
     * 获取下一个任务，先检查是否有因为并发而阻塞的任务，然后从待解析队列中获取任务，如果没有任务可返回则阻塞
     * @return
     * @throws InterruptedException
     */
    private ZipFileData nextTask() throws InterruptedException {
        // 检查是否有因为重复而延迟的任务
        for (Iterator<ZipFileData> iter = w2sq.iterator(); iter.hasNext();) {
            ZipFileData zfd = iter.next();
            if (!isProcessing(zfd)) {
                iter.remove();
                // 被延迟的任务，需要先处理文书再返回， 保证文书的处理与数据的处理是“同时的”？？？
                extractAndAsynSaveFile(zfd);
                return zfd;
            }
        }
        // 正常流程中，文书是提前处理的
        return zfdq.take();
    }
    
    private void saveData(final ZipFileData zfd) {
        if (!saveData) {
            return;
        }
        int status = Constant.XMLLOG_STATUS_SAVE_SUCCESS;
        try {
            if (splitNum > 1) {
                // 拆分
                List<ZipFileData> zfds = splitZipFileData(zfd, splitNum);
                List<Future<Integer>> rets = new ArrayList<Future<Integer>>(zfds.size());
                for (final ZipFileData z : zfds) {
                    rets.add(saveDataPool.submit(new Callable<Integer>() {
                        public Integer call() throws Exception {
                            return saveDataService.saveData(z);
                        }

                    }));
                }
                for (Future<Integer> f : rets) {
                    try {
                        // 有失败的记录
                        if (f.get() != Constant.XMLLOG_STATUS_SAVE_SUCCESS) {
                            status = f.get();
                        }
                    } catch (ExecutionException e) {
                        logger.error(e.getMessage(), e);
                    }
                }
            } else {
                status = saveDataService.saveData(zfd);
            }
            
        } catch (Exception e) {
            // 发生异常时标记任务失败
            status = Constant.XMLLOG_STATUS_SAVE_FAILURE;
            logger.error(e.getMessage(), e);
        }
        
        dbLogExecutor.saveXmlLogs(zfd);
        // 有校验失败的记录
        if (!zfd.getErrFileData().isEmpty()) {
            dbLogExecutor.updateTaskStatus(zfd.getZipFileName(), zfd.getTaskId(), false);
        } else {
            dbLogExecutor.updateTaskStatus(zfd.getZipFileName(), zfd.getTaskId(), status == Constant.XMLLOG_STATUS_SAVE_SUCCESS);
        }
        
    }

    private void clearSatus(final ZipFileData zfd) {
        // 在保存中列表中移除已经完成的FD
        for (FileData fd : zfd.getFileData()) {
        	if(!fd.isIgnore()){
        		savingFileData.remove(fd.getId());
        	}
        }
    }

    private void initClearDbLogsTaskPool() {
        clearDbLogsPool.execute(new Runnable() {
            private Object lock = new Object();
            public void run() {
                while (true) {
                    try {
                        synchronized (lock) {
                            lock.wait(clearDbLogsPeriod);
                        }
                    } catch (InterruptedException e) {
                        logger.error(e.getMessage(), e);
                        break;
                    }
                    logSpaceClearService.clearDatabaseLogSpace();
                }
            }
        });
    }
    
    private void initFetchTaskPool() {
        fetchTaskPool.submit(new Runnable() {
            private Object lock = new Object();
            public void run() {
                // 启动时将上次运行时解析中的任务重新执行
                submitParsing(dbLogExecutor.fetchTask(1, 0));
                while (true) {
                    // 等待解析的任务 小于 解析线程池大小的2倍
                    if (waitingParseTaskCount.get() < parseXmlPoolSize * 2) {
                        // 获取待解析的任务
                        submitParsing(dbLogExecutor.fetchTask(0, fetchTaskCount));
                    }
                    try {
                        synchronized (lock) {
                            lock.wait(fetchTaskPeriod);
                        }
                    } catch (InterruptedException e) {
                        logger.error(e.getMessage(), e);
                        break;
                    }
                }
            }
        });
    }

    public void shutdown() {
        saveXmlPool.shutdown();
        parseXmlPool.shutdown();
        saveDataPool.shutdown();
        splitTaskPool.shutdownNow();
        clearDbLogsPool.shutdownNow();
        fetchTaskPool.shutdownNow();
        saveFilePool.shutdown();
        dbLogExecutor.shutdown();
        initTaskPool.shutdownNow();
    }
    
    /**
     * 一次性任务
     */
    public String runTasks() {  
        File path = new File(configManager.getConfig("config.dataFilePath"));
        if (runAsServerModel) {
            dbLogExecutor.initScanTask(path);
            reportStatusAndWait(System.nanoTime());
        }
        // 一次性任务，不移动文件到备份路径，那么将备份路径指向数据目录
        dbLogExecutor.setZipBakPath(path.getAbsolutePath().replaceAll("\\\\", "/"));
        
        long start = System.nanoTime();
        // 开始保存数据之前清除数据库日志空间，以保证日志空间不会变满
        if (printTaskStatusOnConsole) {
            logger.error("开始清理数据库日志空间：checkpoint");
        }
        
        logSpaceClearService.clearDatabaseLogSpace();
        if (printTaskStatusOnConsole) {
            logger.error(String.format("清理数据库日志空间完毕，耗时：%s", TimeUtil.format(System.nanoTime() - start)));
        }
        
        // 重新计时忽略clearlog的时间
        start = System.nanoTime();
        dbLogExecutor.initScanTask(path);
        
        // 等待任务插入数据库
        while(totalTaskcount.get() == 0) {
            try {
                synchronized (this) {
                    this.wait(200);
                }
            } catch (InterruptedException e) {
                logger.error(e.getMessage(), e);
            }
        }
        
        reportStatusAndWait(start);
        
        String msg = String.format("任务完成，解析线程:%d, 拆分:%d, 保存线程:%d, 队列:%d, 任务数:%d, 耗时：%s", 
                parseXmlPoolSize, 
                splitNum,
                saveDataPoolSize, 
                waitingSaveTaskQueueSize, 
                totalTaskcount.get(), 
                TimeUtil.format(System.nanoTime() - start));
        logger.info(msg);
        if (printTaskStatusOnConsole) {
            printStatus(start);
            logger.error(msg);
        }
        
        return msg;
    }

    public void runInitTaskPool(){
        initTaskPool.execute(new Runnable(){
            public void run() {
                File path = new File(configManager.getConfig("config.dataFilePath"));
                dbLogExecutor.initScanTask(path);
                reportStatusAndWait(System.nanoTime());
            }
        });
    }
	private void submitParsing(List<Task> tasks) {
        totalTaskcount.addAndGet(tasks.size());
        waitingParseTaskCount.addAndGet(tasks.size());
        for (Task t : tasks) {
            try {
                final File task = new File(zipBakPath + t.getPath());
                final String dbId = t.getId();
                parseXmlPool.execute(new Runnable() {
                    public void run() {
                        parsing(task, dbId);
                    }
                });
                
            } catch (Exception e) {
                logger.error(e.getMessage(), e);
            }
        }
    }
    
    /**
     * 解析一个zip文件
     * @param taskFile 文件,要解析的zip文件
     * @param dbId 数据库中对应的日志记录的主键
     */
    private void parsing(final File taskFile, final String dbId) {
        waitingParseTaskCount.decrementAndGet();
        if (!taskFile.exists()) {
            logger.error("[{}], 解析失败, 错误信息:[{}]-[{}]", taskFile.getName(), "文件不存在", taskFile.getAbsolutePath());
            // 解析失败，记录状态和错误信息
            dbLogExecutor.updateTaskStatus(taskFile.getName(), dbId, false);
            doneTaskCount.incrementAndGet();
            return;
        }
        
        parsingTaskCount.incrementAndGet();
        try {
            final ZipFileData zfd = parseXmlTask.parseZipFile(taskFile, dbId);
            
            // 如果有失败的解析记录，尽快保存到数据库, 不阻塞解析任务
            if (!zfd.getErrFileData().isEmpty()) {
                dbLogExecutor.saveXsdFailureXmlLogs(zfd);
            }
            // zip文件中的所有xml都解析失败了
            if (zfd.getFileData().isEmpty()){
                dbLogExecutor.updateTaskStatus(zfd.getZipFileName(), zfd.getTaskId(), false);
                doneTaskCount.incrementAndGet();
            } else {
                // 加入重复XML去重的功能， 如果有重复的xml将放到延时更新队列中
                if (isProcessing(zfd)) {
                    w2sq.put(zfd);
                } else {
                    extractAndAsynSaveFile(zfd);
                    zfdq.put(zfd);
                }
                
            }
        } catch (Exception e) {
            logger.error("[{}], 解析失败, 错误信息:[{}]", taskFile.getName(), e.getMessage());
            logger.error(e.getMessage(), e);
            // 解析失败，记录状态和错误信息
            dbLogExecutor.updateTaskStatus(taskFile.getName(), dbId, false);
            doneTaskCount.incrementAndGet();
        } finally {
            parsingTaskCount.decrementAndGet();
        }
    }

    private void extractAndAsynSaveFile(final ZipFileData zfd) {
        if (ZipTypeUtil.isAjData(zfd.getZipFileName())) {
            //  可以将抽取文件的工作移动到解析过程
            final ZipFileData z = saveFileService.extractFile(zfd);
            if (saveFile) {
                // 文件单独保存，不阻塞数据保存到数据库
                saveFileTaskCount.incrementAndGet();
                saveFilePool.execute(new Runnable() {
                    public void run() {
                        /**增加文书保存到HBase数据**/
                        if(Boolean.valueOf(configManager.getConfig("config.WS.saveHbase"))){
                            hbaseWriteStoreService.saveFileDate2HBase(z);
                        }
                        saveFileService.saveFile(z);
                        saveFileTaskCount.decrementAndGet();
                    }
                });
            }
        }
    }

    // 需要保证同一个zip中的fd一同更新到集合中
    private synchronized boolean isProcessing(ZipFileData zfd) {
        //add by huff 2014-07-15
        //判断zfd是否是删除案件的包
        if (ZipTypeUtil.isDelAjReq(zfd.getZipFileName())) {
            //得到zfd所有的fd
            for (FileData fd : zfd.getFileData()) {
                //得到fd中所有的要删除案件的数据
                for (DeleteAjRequest delAj : fd.getDelReqs()) {
                    //如果正在保存的案件中包含当前要删除的案件，则当前的zip放入延迟队列
                    if (savingFileData.containsKey(delAj.getId())) {
                        ZipFileData zfd2 = savingFileData.get(fd.getId());
                        logger.info("[{}], 推迟保存数据库, 冲突XML:[{}], 冲突zip:[{}]",
                            zfd.getZipFileName(), fd.getFileName(), 
                            zfd2!=null?zfd2.getZipFileName():"");
                        // 当前的zip为后导出的,放入延迟队列
                        return true;
                    }
                }
            }
        }else{
            for (FileData fd : zfd.getFileData()) {
                if (savingFileData.containsKey(fd.getId())){
                    ZipFileData zfd2 = savingFileData.get(fd.getId());
                    if (zfd.getExportTime().before(zfd2.getExportTime())) {
                        // 当前处理的zip包是先导出的，将相应的FD标记为失败
                        fd.setIgnore(true);
                        fd.addIgnoreMessage("因为在" + zfd2.getZipFileName() + "]中有重复而被忽略");
                        logger.warn("[{}], 因为重复而被忽略, 冲突XML:[{}], 冲突zip:[{}]", 
                                zfd.getZipFileName(), 
                                fd.getFileName(), 
                                zfd2!=null?zfd2.getZipFileName():"");
                    } else {
                        logger.info("[{}], 推迟保存数据库, 冲突XML:[{}], 冲突zip:[{}]", 
                                zfd.getZipFileName(), 
                                fd.getFileName(), 
                                zfd2!=null?zfd2.getZipFileName():"");
                        // 当前的zip为后导出的,放入延迟队列
                        return true;
                    }
                }
            }
        }
        for (FileData fd : zfd.getFileData()) {
            savingFileData.put(fd.getId(), zfd);
        }
        return false;
    }

    // 拆分任务，用于控制任务的大小，影响事务的大小，拆分的多少会影响性能
    private List<ZipFileData> splitZipFileData(ZipFileData zfd, int num) {
        
        List<ZipFileData> zfds = new ArrayList<ZipFileData>();
        
        List<FileData> data = zfd.getFileData();
        int tpt = data.size() / num;
        // 如果小于10个，则直接返回，这样拆分是没法提高性能的。
        if (tpt < 1) {
            return Arrays.asList(zfd);
        }
        for (int i = 0; i < num - 1; i++) {
            ZipFileData z = new ZipFileData(zfd.getZipFilePath(), zfd.getTaskId(), data.subList(i * tpt, (i + 1)*tpt));
            z.setPartNum(i + 1);
            z.setTotalNum(num);
            zfds.add(z);
        }
        
        ZipFileData z = new ZipFileData(zfd.getZipFilePath(), zfd.getTaskId(), data.subList(tpt * (num - 1), data.size()));
        z.setPartNum(num);
        z.setTotalNum(num);
        zfds.add(z);
        return zfds;
    }
    

    private void reportStatusAndWait(long start) {
        int count = 30;
        while(doneTaskCount.get() < totalTaskcount.get() 
                || runAsServerModel 
                || getLogTaskCount() != 0 
                || saveFileTaskCount.get() !=0) {
            if (printTaskStatusOnConsole) {
                if (count >= 30) {
                    printTitle();
                    count = 0;
                }
                printStatus(start);
                count++;
            }
            
            logger.info("任务状态: {}/{}/{}/{}/{}/{}/{}/{}/{} (总计/等待解析/解析中/等待保存文件/推迟入库/等待入库/入库中/已完成入库/写日志), 已耗时:{}", 
                    totalTaskcount.get(), 
                    waitingParseTaskCount.get(), 
                    parsingTaskCount.get(),
                    saveFileTaskCount.get(),
                    w2sq.size(),
                    zfdq.size(), 
                    savingDataTaskCount.get(), 
                    doneTaskCount.get(), 
                    getLogTaskCount(),
                    TimeUtil.format(System.nanoTime() - start));
            try {
                synchronized (this) {
                    this.wait(reportTaskStatusPeriod);
                }
            } catch (InterruptedException e) {
                logger.error(e.getMessage(), e);
                break;
            }
        }
    }

    private int getLogTaskCount() {
        return dbLogExecutor.getLogTaskCount();
    }

    int lastDone[] = new int[10];
    long lastTime[] = new long[10];
    int index = 0;
    
    private void printStatus(long start) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        NumberFormat nf = new DecimalFormat("0.00");
        long time = System.nanoTime() - start;
        int done = doneTaskCount.get();
        double speed1 = done * 1000 * 60 / (time * 1.0 / 1000 / 1000);
        double speed2 = (done - lastDone[index]) * 1000 * 60 / ((time - lastTime[index]) * 1.0 / 1000 / 1000);
        String msg = String.format("%8d|%8d|%8d|%8d|%8d|%8d|%8d|%8d|%8d|%8s|%8s|%22s|%22s|",
                totalTaskcount.get(), 
                waitingParseTaskCount.get(), 
                parsingTaskCount.get(),
                saveFileTaskCount.get(),
                w2sq.size(),
                zfdq.size(), 
                savingDataTaskCount.get(), 
                doneTaskCount.get(),
                getLogTaskCount(),
                nf.format(speed1),
                nf.format(speed2),
                TimeUtil.format(System.nanoTime() - start),
                sdf.format(new Date(System.currentTimeMillis())));
        logger.error(msg);
        lastDone[index] = done;
        lastTime[index] = time;
        index++;
        if (index >= lastDone.length) {
            index = 0;
        }
    }

    private void printTitle() {
        String title = String.format("%8s|%8s|%8s|%8s|%8s|%8s|%8s|%8s|%8s|%8s|%8s|%22s|%22s",
                "total", "wp", "p", "sf", "dsd", "wsd", "sd", "done", "log", "n/m", "n/m", "elapsed time", "datetime");
        logger.error(title);
        StringBuilder sb = new StringBuilder(200);
        for (int i = 0; i < 16; i++) {
            sb.append("----------");
        }
        logger.error(sb.toString());
    }

    /**
     * 通达海执行下行接口
     */
    public void runInterfaceTasks() {
        final File path = new File(configManager.getConfig("config.interface.dataPath"));
        if (!path.exists()) {
            path.mkdirs();
        }
        
        String urlstr = configManager.getConfig("config.webserviceUrl");
        URL url = null;
        try {
            url = new URL(urlstr);
        } catch (MalformedURLException e) {
            logger.error(e.getMessage(), e);
        }
        if (runAsInterfaceModel) {
            String timeSwitch = configManager.getConfig("config.interface.timeSwitch");
            String startTime = configManager.getConfig("config.interface.startTime");
            String intervalTime = configManager.getConfig("config.interface.intervalTime");
            
            QName qname = new QName("http://sjzh.swap.tdh/", "DataTransServiceService");
            Service service = Service.create(url, qname);
            final DataTransService ds = service.getPort(DataTransService.class);
            
            obtainInterfaceTask(ds, path,this.interfaceTimerValid);
            //定时任务
            if (StringUtils.equals("true", timeSwitch) && StringUtils.isNoneBlank(startTime) && 
                    StringUtils.isNoneBlank(intervalTime)) {
                this.interfaceTimerValid=true;
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date startDate = null;
                try {
                    startDate = sdf.parse(startTime);
                } catch (ParseException e) {
                    logger.error(e.getMessage(), e);
                }
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(startDate);
                calendar.add(Calendar.DAY_OF_MONTH, 1);
                long timeInterval = Long.parseLong(intervalTime);
                
                Timer t = new Timer();
                t.schedule(new TimerTask() {
                    public void run() {
                        // 定时器主要执行的代码块
                        obtainInterfaceTask(ds, path,interfaceTimerValid);
                    }
                }, calendar.getTime(), timeInterval); 
            }
            
        }
        
    }
    
    /**
     * 接口获取任务
     * @param ds 
     * @param path 
     */
    private void obtainInterfaceTask(final DataTransService ds, final File path,boolean timerValid) {
        if (!path.exists()) {
            path.mkdirs();
        }
        String organSwitch = configManager.getConfig("config.interface.organ");
        String delSwitch = configManager.getConfig("config.interface.del");
        String caseSwitch = configManager.getConfig("config.interface.case");
        final String jbfystr = configManager.getConfig("config.interface.jbfy");
        if(StringUtils.isNotBlank(jbfystr)) {
            final String[] jbfys = jbfystr.split(",");
            for(int i = 0; i<jbfys.length; i++) {
                if(!path.exists()){
                    path.mkdirs();
                }
                final String jbfy = jbfys[i];
              //只有第一次启动时更新日期从配置文件中取
                String gxrq = dateFormat.format(new Date()).replace("-", "");
                if(!timerValid) {
                    String confGxrq = configManager.getConfig("config.daily.gxrq");
                    //如果未配置更新日期，默认获取当天更新案件
                    gxrq = StringUtils.isBlank(confGxrq) ? gxrq : confGxrq;
                }
                
                long start = System.nanoTime();
                
                if(StringUtils.equals("true", organSwitch) && StringUtils.isNotBlank(jbfy)) {
                    getZzjgZip(ds,path,jbfy);
                }
                
                if(StringUtils.equals("true", caseSwitch) 
                        && StringUtils.isNotBlank(jbfy) && StringUtils.isNotBlank(gxrq)) {
                    logger.error("案件接口");
                    List<String> ajbsli =new ArrayList<String>();
                    if(timerValid) {
                        ajbsli=getDailyXml(ds,jbfy,gxrq);
                    }else{
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
                        Long ksrq=0l;
                        Long jsrq=0l;
                        try {
                            ksrq=sdf.parse(configManager.getConfig("config.daily.gxrq")).getTime();
                            jsrq=sdf.parse(configManager.getConfig("config.daily.jsrq")).getTime();
                        } catch (ParseException e) {
                            logger.error("日期转换出错");
                        }
//                        Long oneDay = 1000 * 60 * 60 * 24l;
//                        while(ksrq<=jsrq){
//                        Date date=new Date(ksrq);
//                        gxrq=sdf.format(date);
                        logger.error("---------当前法院--------------"+jbfy);
                        logger.error("---------当前日期--------------"+gxrq);
//                        ajbsli=getDailyXml(ds,jbfy,gxrq);
                        ajbsli=getAllXml(ds,jbfy,gxrq);
                        logger.error("--------------案件信息列表"+ajbsli);
                            //单线程
                           /* for(String ajbs : ajbsli) {
                                getAjZip(ds,path,jbfy,ajbs); 
                            }*/
//                            final File datePath = new File(path.toString()+File.separator+gxrq);
                        final File datePath = new File(path.toString());
                        if(!datePath.exists()){
                            datePath.mkdirs();
                        }
                            //多线程
                        List<Future<Integer>> rets=new ArrayList<Future<Integer>>();
                            
                        for(final String ajbs : ajbsli) {
                            rets.add(saveXmlPool.submit(new Callable<Integer>() {

                                public Integer call() throws Exception {
                                    return getAjZip(ds,datePath,jbfy,ajbs);
                                }
                            }));
                        }
                        
                        logger.error("------------总数："+ajbsli.size()+"------------完成："+rets.size());
                        for (int j = 0; j<rets.size(); j++) {
                            try {
                                rets.get(j).get();
                            } catch (InterruptedException e) {
                                logger.error("多线程保存zip出问题了"+e+"。案件标识index为"+j);
                            } catch (ExecutionException e) {
                                logger.error("多线程保存zip出问题了"+e+"。案件标识index为"+j);
                            }
                        }
                        synchronized (Executor.class) {
                            dbLogExecutor.scanAndInitTask(path);
                        }
                        if(!path.exists()){
                            path.mkdirs();
                        }    
//                        ksrq+=oneDay;
                    }
                    logger.error("执行案件总数："+ajbsli.size()+",开始保存到本地");
                }
                if(StringUtils.equals("true", delSwitch) && StringUtils.isNotBlank(gxrq)) {
                    getDelZip(ds,path,gxrq);
                }
                dbLogExecutor.scanAndInitTask(path);
                
                String msg = String.format("任务完成，解析线程:%d, 拆分:%d, 保存线程:%d, 队列:%d, 任务数:%d, 耗时：%s", 
                        parseXmlPoolSize, 
                        splitNum,
                        saveDataPoolSize, 
                        waitingSaveTaskQueueSize, 
                        totalTaskcount.get(), 
                        TimeUtil.format(System.nanoTime() - start));
                logger.info(msg);
                if (printTaskStatusOnConsole) {
                    printStatus(start);
                    logger.error(msg);
                }
            }
        }
//        return msg;
    }
    
    /**
     * 获取删除包
     * @param ds 
     * @param path 
     * @param deldate
     */
    private void getDelZip(DataTransService ds, File path, String deldate) {
        String delInput = new String();
        try {
            deldate = new String(Base64.encodeBase64(deldate.getBytes()),"UTF-8");
            delInput = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<request>\r\n  <scrq>"+
                    deldate+"</scrq>\r\n</request>");
            delInput = new String(Base64.encodeBase64(delInput.getBytes()),"UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        }

        String delZip = ds.getDelZip(delInput);
        try {
            delZip = new String(Base64.decodeBase64(delZip), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            logger.error(e.getMessage(), e);
        }
        Document doc = stringToXml(delZip);
        Element root = doc.getRootElement(); 
        String data = root.elementText("data");
        logger.error("输出xml数据："+data);
        byte[] databt = Base64.decodeBase64(data);   
        UnZip.releaseCompression(databt, path.toString());
/*        if (databt != null) {     
            String filepath ="D:\\datai.zip";     
            File file  = new File(filepath);     
            if(file.exists()){     
               file.delete();     
            }
            try{
                FileOutputStream fos = new FileOutputStream(filepath);
                fos.write(databt);     
                fos.flush();     
                fos.close(); 
                UnZip.unzip("D:\\datai.zip", path.toString(), false);
                if(file.exists()){     
                    file.delete();     
                 }
            }catch(Exception e) {
                logger.error(e.getMessage(), e);
            }     
        } */   
    }

    /**
     * 获取案件包
     * @param ds 
     * @param path 
     * @param dailyjbfy
     * @param ajbs
     */
    private int getAjZip(DataTransService ds, File path, String dailyjbfy, String ajbs) {
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String now = df.format(new Date());
        String filename = "AJ_"+String.format("%04d", Integer.valueOf(dailyjbfy))+"_"+ajbs+"_"+now+".zip";
        String caseInput = new String();
        try {
            String jbfy = new String(Base64.encodeBase64(dailyjbfy.getBytes()),"UTF-8");
            String najbs = new String(Base64.encodeBase64(ajbs.getBytes()),"UTF-8");
            caseInput = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<request>\r\n  <jbfy>"+
                    jbfy+"</jbfy>\r\n  <ajbs>"+najbs+"</ajbs>\r\n</request>");
            caseInput = new String(Base64.encodeBase64(caseInput.getBytes()),"UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        }
        
        String ajZip ="";
        
        
        try{
            ajZip=ds.getCaseZip(caseInput);
        }catch (Exception e1) {
            logger.error("接口获取案件失败,忽略此案件"+ajbs);
            logger.error(e1.getMessage(),e1);
            return 0;
        }
        if(StringUtils.isBlank(ajZip)){
            return 0;
        }
        
        try {
            
            ajZip = new String(Base64.decodeBase64(ajZip), "UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        } 
        
        Document doc = stringToXml(ajZip);
        Element root = doc.getRootElement(); 
        String messageele = root.elementText("message");
        String message = "";
        
        try {
            message = new String(Base64.decodeBase64(messageele), "UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        }
        
        if (StringUtils.equals("成功", message)) {
            String data = root.elementText("data");
            
            byte[] databt = Base64.decodeBase64(data);   
            
            if (databt != null) {     
                String filepath = path + "/" +filename;     
                File file  = new File(filepath);     
                if (file.exists()) {     
                   file.delete();     
                }
                FileOutputStream fos =null;
                try{
                    fos= new FileOutputStream(filepath);
                    fos.write(databt);     
                    fos.flush();     
                }catch(IOException e) {
                    logger.error(e.getMessage(), e);
                }finally{
                    IOUtils.closeQuietly(fos);
                }
            }
        } else if (StringUtils.startsWith(message, "当前时间段不允许调用接口")) {
            try {
                logger.error("当前时间段不允许调用接口,案件标识："+ajbs+",等待重新调用");
                Thread.currentThread().sleep(600000);
                this.getAjZip(ds, path, dailyjbfy, ajbs);
            } catch (InterruptedException e2) {
                logger.error(e2.getMessage(), e2);
            }
        } else {
            logger.error("接口获取案件失败,案件标识："+ajbs);
        }
        
        return 1;
    }

    /**
     * 获取每日更新的案件列表
     * @param ds 
     * @param dailyjbfy
     * @param dailydate
     */
    private List<String> getDailyXml(DataTransService ds, String dailyjbfy, String dailydate) {
        List<String> ajbsli = new ArrayList<String>();
        ajbsli.addAll(getCaseListByType(ds, dailyjbfy, dailydate, null));
        return ajbsli;
    }
    /**
     * 获取时间段内的案件列表
     * @param ds 
     * @param jbfy
     * @param startDate
     */
    private List<String> getAllXml(DataTransService ds, String jbfy, String startDate) {
//        String caseType = configManager.getConfig("config.interface.caseType");
        List<String> ajbsli = new ArrayList<String>();
//        if(StringUtils.equals("SA", caseType) || StringUtils.equals("JA", caseType)) {
//            ajbsli.addAll(getCaseListByType(ds, jbfy, startDate,caseType));
//        }
        ajbsli.addAll(getCaseListByType(ds, jbfy, startDate,"SA"));
        ajbsli.addAll(getCaseListByType(ds, jbfy, startDate,"JA"));
        return ajbsli;
    }

    /**
     * 
     * @param ds
     * @param jbfy
     * @param startDate
     * @param type 案件数据类型
     * @return
     */
    private List<String> getCaseListByType(DataTransService ds, String jbfy,
            String startDate,String type) {
        List<String> allAjbs = new ArrayList<String>();
        String allInput ="";
        try {
            jbfy = new String(Base64.encodeBase64(jbfy.getBytes()),"UTF-8");
            if(StringUtils.isNotBlank(type)){
                type = new String(Base64.encodeBase64(type.getBytes()),"UTF-8");
                startDate=startDate+"-"+configManager.getConfig("config.daily.jsrq");
            }
            logger.error("生成参数xml"+startDate);
            startDate = new String(Base64.encodeBase64(startDate.getBytes()),"UTF-8");
            allInput = getParamXml(jbfy, startDate,type);
//            logger.error("------------xml参数"+allInput);
            allInput = new String(Base64.encodeBase64(allInput.getBytes()),"UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        }
        String allXml="";
        if(interfaceTimerValid){
            allXml= ds.getDailyUpdateCaseList(allInput);
        }else{
//            allXml= ds.getDailyUpdateCaseList(allInput);
            allXml= ds.getCaseList(allInput);
        }
        if(StringUtils.isBlank(allXml)){
            return allAjbs;
        }
        try {
            allXml = new String(Base64.decodeBase64(allXml), "UTF-8");
//            logger.error("返回值："+allXml);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Document doc = stringToXml(allXml);
        
        Element root = doc.getRootElement();  
        String data = root.elementText("data");
//        logger.error(data);
        if(StringUtils.isBlank(data)){
            return allAjbs;
        }
        try {
            data = new String(Base64.decodeBase64(data), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            logger.error(e.getMessage(), e);
        }
        Document dataxml = stringToXml(data);
        Element dataroot = dataxml.getRootElement();
        
        @SuppressWarnings("unchecked")
        List<Element> ajxxs = dataroot.elements("案件信息");
        for(Element ele : ajxxs){
            String ajbs = ele.elementText("案件标识");
            allAjbs.add(ajbs);
        }
        return allAjbs;
    }
    
    /**
     * 
     * @param jbfy
     * @param startDate
     * @param type 收案    SA 结案    JA

     * @return
     */
    private String getParamXml(String jbfy, String startDate,String type) {
        String allInput="";
        if(StringUtils.isNotBlank(type)){
            allInput = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<request>\r\n  <jbfy>"+
                jbfy+"</jbfy>\r\n  <lx>"+type+"</lx>\r\n  <rq>"+startDate+"</rq>\r\n</request>");
        }else{
            allInput = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<request>\r\n  <jbfy>"+
                jbfy+"</jbfy>\r\n  <rq>"+startDate+"</rq>\r\n</request>");
        }
        return allInput;
    }

    /**
     * 获取组织机构zip包
     * @param ds 
     * @param path 
     * @param organjbfy
     */
    private void getZzjgZip(DataTransService ds, File path, String organjbfy) {
        String organInput = new String();
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
        String now = df.format(new Date());
        String filename = "JG_"+String.format("%04d", Integer.parseInt(organjbfy))+"_"+now+".zip";
        String xmlName = "JG_"+String.format("%04d", Integer.parseInt(organjbfy))+"_"+now+".xml";
        try {
            organjbfy = new String(Base64.encodeBase64(organjbfy.getBytes()),"UTF-8");
            organInput = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<request>\r\n  <jbfy>"+
                    organjbfy+"</jbfy>\r\n</request>");
            organInput = new String(Base64.encodeBase64(organInput.getBytes()),"UTF-8");
        } catch (UnsupportedEncodingException e1) {
            logger.error(e1.getMessage(), e1);
        }
        
        String zzjgXml = ds.getZzjg(organInput);
        if(StringUtils.isBlank(zzjgXml)){
            return;
        }
        try {
            zzjgXml = new String(Base64.decodeBase64(zzjgXml), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Document doc = stringToXml(zzjgXml);
        Element root = doc.getRootElement(); 
        String data = root.elementText("data");
        
        try {
            ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(path+"/"+filename));
            zos.putNextEntry(new ZipEntry(xmlName));
            DataOutputStream dataOs = new DataOutputStream(zos);
            dataOs.write(Base64.decodeBase64(data));
            dataOs.close();
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
    }

    /**
     * String转Document
     * @param xml形状的str串
     * @return Document 对象
     */
    public static Document stringToXml(String str) {

        Document doc = null;
        SAXReader saxReader = new SAXReader();   
        try {
            doc = saxReader.read(new ByteArrayInputStream(str.getBytes("utf-8")));
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }  
        return doc;
    }
    
}
