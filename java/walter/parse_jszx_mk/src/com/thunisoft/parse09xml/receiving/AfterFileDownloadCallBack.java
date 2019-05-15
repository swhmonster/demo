package com.thunisoft.parse09xml.receiving;

import java.io.File;

import com.thunisoft.exchangeplatform.epclient.client.callback.IAfterFileDownloadCallBack;
import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.persistence.DbLogService;

/**
 * 文件接收回调方法
 * @author ZhangMin
 *
 */
public class AfterFileDownloadCallBack implements IAfterFileDownloadCallBack {
	
	/**
	 * 日志信息入库处理对象
	 */
	private DbLogService dbLogService; 
	
	/**
	 * 配置信息对象
	 */
	private ConfigManager configManager;
	
	
	/**
	 * 构造方法
	 * @param configManager
	 */
	public AfterFileDownloadCallBack(ConfigManager configManager){
	    this.configManager = configManager;
	    this.dbLogService = new DbLogService(configManager);
	}

	/**
	 * 传输交换平台文件下载回调方法
	 * @see com.thunisoft.exchangeplatform.epclient.client.callback.IAfterFileDownloadCallBack
	 *   #doCallBack(java.io.File)
	 */
	public void doCallBack(File file) throws Exception {
		if(!isValidFile(file.getName())){
			return;
		}
	    String rootPath = configManager.getZipBakPath().replaceAll("\\\\", "/");
	    String absPath = file.getAbsolutePath().replaceAll("\\\\", "/");
	    dbLogService.initTask(absPath.substring(absPath.lastIndexOf(rootPath) + rootPath.length()));
	}
	

	/**
	 * 数据包是否合法
	 * @param filename
	 * @return
	 */
	private boolean isValidFile(String filename) {
		ClientHandler c = new ClientHandler();
		return c.isValidFile(filename);
	}
	
	
}
