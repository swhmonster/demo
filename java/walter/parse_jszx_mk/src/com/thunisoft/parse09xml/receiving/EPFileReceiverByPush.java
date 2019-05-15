package com.thunisoft.parse09xml.receiving;

import java.net.MalformedURLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.exchangeplatform.epclient.server.IClientServerController;
import com.thunisoft.exchangeplatform.epclient.server.impl.ClientThreadController;
import com.thunisoft.exchangeplatform.service.call.ServiceAddress;
import com.thunisoft.parse09xml.ConfigManager;

/**
 * 以推送方式从传输交换平台文件接收类
 * @author ZhangMin
 *
 */
public class EPFileReceiverByPush {
	/**
	 * 日志实例对象
	 */
	private static Logger logger = LoggerFactory.getLogger(EPFileReceiverByPush.class);
	
	/**
     * 配置信息对象
     */
    private ConfigManager configManager;

	/**
	 * 传输交换平台文件接收标识
	 */
	private String receiver;

	/**
	 * 传输交换平台服务url
	 */
	private String serverUrl;
	
	/**
	 * 推送模式占用的端口
	 */
	private int port;
	
	/**
	 * 并发线程数
	 */
	private int threadPoolNum = 5;
	
	/**
	 * 注册等待时间，每隔一分钟注册一次
	 */
	private long registWaitTime = 60*1000L;
	
	/**
	 * 推送客户端
	 */
	private IClientServerController controller = null;

	
	/**
	 * 构造方法
	 * @param configManager
	 */
	public EPFileReceiverByPush(ConfigManager configManager){
		this.configManager = configManager;
		this.receiver = configManager.getEPReceiver();
		this.serverUrl = configManager.getEPServerUrl();
		this.port = Integer.valueOf(configManager.getConfig("config.EP.push.port")).intValue();
		this.threadPoolNum = Integer.valueOf(configManager.getConfig("config.EP.push.threadPoolNum")).intValue();
		this.registWaitTime = Integer.valueOf(configManager.getConfig("config.EP.push.registWaitTime")).intValue();
	}
	
	/**
	 * 开启推送模式下接收文件的服务
	 */
	public void run(){
		try {
			controller = new ClientThreadController(
					receiver, ServiceAddress.valueOf(serverUrl),
					new ClientHandler(this.configManager), port, registWaitTime);
		} catch (MalformedURLException me) {
			logger.error("创建传输交换平台接收客户端失败！", me);
			return;
		} catch (Exception e) {
			logger.error("创建传输交换平台接收客户端失败！", e);
			return;
		}
		controller.getContext().setThreadPoolNum(Integer.valueOf(this.threadPoolNum));
		controller.startServer();
	}
	
	/**
	 * 关闭推送模式
	 */
	public void stopServer(){
		if(null != controller){
			controller.stopServer();
		}
	}
}
