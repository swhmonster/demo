package com.thunisoft.parse09xml.receiving;

import java.util.Timer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;

public class ReceiverManager {
	
	/**
	 * 日志实例对象
	 */
	private static Logger logger = LoggerFactory.getLogger(ReceiverManager.class);
	
	/**
	 * 任务是否正在执行
	 */
	private boolean onWork = false;
	
    /**
     * 配置信息对象
     */
    private ConfigManager configManager;
	
	/**
	 * 是否轮询模式，默认否
	 */
	private boolean byPoll = false;
	
	/**
	 * 轮询模式定时任务
	 */
	private Timer pollTimer = null;
	
	/**
	 * 删除组织机构zip定时任务
	 */
	private Timer delOrganZipTimer = null;
	
	/**
	 * 轮询模式定时任务间隔时间
	 */
	private long pollPeriod = 1000;
	
	/**
	 * 删除组织机构zip定时任务间隔时间
	 */
	private long delOrganZipPeriod = 60*60*1000L;
	
	/**
	 * 无延时时间
	 */
	private static final long NO_DELAY_TIME = 0;
	
	/**
	 * 推送模式服务
	 */
	private EPFileReceiverByPush pushServer = null;
	
	/**
	 * 接收文件
	 * @param configManager
	 */
	public static void receiveFiles(ConfigManager configManager){
		ReceiverManager re = new ReceiverManager(configManager);
		re.receiveFiles();
	}
	
	/**
	 * 接收文件
	 * @param configManager
	 */
	public static void delOrganZipBefore(ConfigManager configManager){
		ReceiverManager re = new ReceiverManager(configManager);
		re.delOrganZipBeforeOneWeek();
	}

	
	/**
	 * 构造方法，默认推送模式接收文件
	 * @param configManager
	 */
	public ReceiverManager(ConfigManager configManager){
		this.configManager = configManager;
		this.byPoll = Boolean.valueOf(configManager.getConfig("config.EP.isPoll"));
		this.pollPeriod = Long.valueOf(configManager.getConfig("config.EP.poll.period")).longValue();
		this.delOrganZipPeriod = 60*1000*Long.valueOf(configManager.getConfig("config.organ.del.minPeriod")).longValue();
	}
	
	/**
	 * 接收文件
	 */
	public void receiveFiles(){
		if(byPoll){
			receiveFilesByPoll();
		}else{
			receiveFilesByPush();
		}
	}
	
	/**
	 * 开启推送模式接收文件
	 */
	private void receiveFilesByPush() {
		logger.info("开启推送模式接收文件！");
		pushServer = new EPFileReceiverByPush(configManager);
		pushServer.run();
		setOnWork(true);
		logger.info("开启推送模式接收文件成功！");
	}

	/**
	 * 开启轮询模式接收文件
	 */
	private void receiveFilesByPoll() {
		logger.info("开始添加轮询模式接收文件任务！");
		pollTimer = new Timer(false);
		// 调用EPFileReceiver，0表示任务无延迟，5*1000表示每隔5秒执行任务，60*60*1000表示一个小时。
		pollTimer.schedule(new EPFileReceiverByPoll(configManager), NO_DELAY_TIME, pollPeriod);
		setOnWork(true);
		logger.info("添加轮询模式接收文件任务成功！");
	}
	
	/**
	 * 开启删除超过一周的组织机构zip包
	 */
	public void delOrganZipBeforeOneWeek() {
		logger.info("开启删除超过一周的组织机构zip包任务！");
		delOrganZipTimer = new Timer(false);
		// 调用OrganZipDelTask，0表示任务无延迟，5*1000表示每隔5秒执行任务，60*60*1000表示一个小时。
		delOrganZipTimer.schedule(new OrganZipDelTask(configManager), NO_DELAY_TIME, delOrganZipPeriod);
		setOnWork(true);
		logger.info("添加任务:删除超过一周的组织机构zip包,成功！");
	}
	
	/**
	 * 关闭当前接收文件的任务
	 */
	public void shutdown(){
		if(byPoll){
			shutdownTaskByPoll();
		}else{
			shutdownTaskByPush();
		}
		setOnWork(false);
		logger.info("关闭当前接收文件的任务成功！");
	}
	
	/**
	 * 关闭轮询模式接收文件任务
	 */
	private void shutdownTaskByPoll(){
		if(null != pollTimer){
			pollTimer.cancel();
		}
	}
	
	/**
	 * 关闭轮询模式接收文件任务
	 */
	private void shutdownTaskByPush(){
		if(null != pushServer){
			pushServer.stopServer();
		}
	}

	/**
	 * set方法
	 * @param onWork the onWork to set
	 */
	private void setOnWork(boolean onWork) {
		this.onWork = onWork;
	}

	/**
	 * get方法
	 * @return the onWork
	 */
	public boolean isOnWork() {
		return onWork;
	}

}
