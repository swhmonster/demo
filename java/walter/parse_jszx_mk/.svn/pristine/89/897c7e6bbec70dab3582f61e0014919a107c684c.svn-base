package com.thunisoft.parse09xml;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.bean.StateTimer;
import com.thunisoft.parse09xml.persistence.DataSourceManager;
import com.thunisoft.parse09xml.receiving.ReceiverManager;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.rmfysjfxpt.dtc.Conf;

/**
 * 主要处理流程
 * MainProcess
 * @author hufafu
 * @version 1.0
 *
 */
public class MainProcess {
    private static Logger logger = LoggerFactory.getLogger(MainProcess.class);
    
    /**
     * @param args 系统调用参数
     * @param statDate 统一调度日期
     */
    public void process(String[] args, Date statDate){
        long start = System.nanoTime();
        if(statDate != null){
            StateTimer.getInstance().setStartTime(statDate);
        }
        ConfigManager configManager = new ConfigManager();
        configManager.loadPropConfigs(args);
        configManager.loadMappingConfig();
        configManager.loadSchemas(); 
        configManager.loadConvertersConfig();
        configManager.loadPropSettersConfig();
        configManager.loadDelRec();
        configManager.loadDelProcs();
        configManager.loadIncrTab();
        DataSourceManager.initDatasource(configManager);
        // 需要在数据库连接池初始化之后调用
        configManager.loadCorps();
        logger.info("加载配置完毕，耗时：{}", TimeUtil.format(System.nanoTime() - start));
        Boolean isReceiveFile = Boolean.valueOf(configManager.getConfig("config.isReceiveFile"));
        if(isReceiveFile){
             ReceiverManager re = new ReceiverManager(configManager);
             re.receiveFiles();
             re.delOrganZipBeforeOneWeek();
        }else{
            if(statDate != null){
                Executor executor = Executor.createExector(configManager);
                executor.runInitTaskPool();
                while(true){
                    if((System.nanoTime() - start) > TimeUtil.changeMmToNm(Long.valueOf(Conf.getValue("RUN_TIME")))){
                        executor.shutdown();
                        return;
                    }
                }
            }else{
                Executor executor = Executor.createExector(configManager);
                executor.runInterfaceTasks();
                executor.runTasks();
                executor.shutdown();
                System.exit(0);
            }
        }
    }
}
