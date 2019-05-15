package com.thunisoft.parse09xml.receiving;


import java.io.File;
import java.net.MalformedURLException;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.exchangeplatform.epclient.client.EPClient;
import com.thunisoft.exchangeplatform.epclient.client.clientcallers.ReceiveCaller;
import com.thunisoft.exchangeplatform.epclient.server.DataInfo;
import com.thunisoft.exchangeplatform.epclient.server.ServerContext;
import com.thunisoft.exchangeplatform.epclient.server.handler.IClientHandler;
import com.thunisoft.exchangeplatform.service.call.ServiceAddress;
import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;

/**
 * 推送模式下的客户端处理类
 * @author ZhangMin
 *
 */
public class ClientHandler implements IClientHandler{
	
	/**
	 * 日志实例对象
	 */
	
	private static Logger logger = LoggerFactory.getLogger(ClientHandler.class);
	
    /**
     * 配置信息对象
     */
    private ConfigManager configManager;
    
	/**
	 * 传输交换平台服务url
	 */
	private String serverUrl;
    
	/**
	 * 从传输交换平台接收的文件存放到本地的路径
	 */
	private String localfilepath;
	
	/**
	 * 交换平台客户端
	 */
	private EPClient client = null;
	
	/**
	 * 
	 * @param configManager
	 */
	public ClientHandler(){
	}
	
	/**
	 * 
	 * @param configManager
	 */
	public ClientHandler(ConfigManager configManager){
		this.configManager = configManager;
		this.serverUrl = configManager.getEPServerUrl();
		this.localfilepath = configManager.getZipBakPath();
	}

	/**
	 * 接口实现类，接收文件到本地，并把日志信息写入到数据库
	 * @see com.thunisoft.exchangeplatform.epclient.server.handler.IClientHandler
	 *   #receive(com.thunisoft.exchangeplatform.epclient.server.DataInfo,
	 *    com.thunisoft.exchangeplatform.epclient.server.ServerContext)
	 */
	public boolean receive(DataInfo data, ServerContext context) {
		try {
			client = new EPClient(ServiceAddress.valueOf(serverUrl));
		} catch (MalformedURLException me) {
			logger.error("创建传输交换平台接收客户端失败！", me);
			return false;
		}
		String filepath = getFilePath(data.getFileName(), localfilepath);
		try {
			ReceiveCaller caller = new ReceiveCaller(data.getStoreId(), filepath);
			caller.setAfterFileDownloadCallBack(new AfterFileDownloadCallBack(configManager));
			client.call(caller);
		} catch (Exception e) {
			logger.error("传输交换平台接收文件错误！", e);
			return false;
		}
		return true;
	}

	/**
	 * 获取文件路径
	 * @param filename 文件信息
	 * @param localfilepath 根目录路径
	 * @return
	 */
	public String getFilePath(String filename, String localfilepath) {
		String path;
		String date = TimeUtil.getYYYYMMDDTimeStr(new Date());
		if(isValidFile(filename)){
			String lx = filename.substring(0, 2);
			String dph = filename.substring(3, 7);
			path = localfilepath + "/" + lx + "/" + dph + "/" + date;
		}else{
			path= localfilepath + "/error" + "/"  + date;
			logger.warn("数据包的包名不合法：" + filename);
		}
		File file = new File(path);
		if(!file.exists()){
			file.mkdirs();
		}
		return path;
	}

	/**
	 * 数据包是否合法
	 * @param filename
	 * @return
	 */
	public boolean isValidFile(String filename) {
		if(!(ZipTypeUtil.isAjData(filename) || ZipTypeUtil.isZzjgData(filename)
				|| ZipTypeUtil.isDelAjReq(filename) || ZipTypeUtil.isAqAjReq(filename))){
			return false;
		}
		try{
			Integer.parseInt(filename.substring(3, 7));
			return true;
		}catch (Exception e) {
			return false;
		}
	}

}
