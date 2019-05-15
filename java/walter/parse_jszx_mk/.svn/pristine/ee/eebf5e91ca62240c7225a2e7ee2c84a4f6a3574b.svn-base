package com.thunisoft.parse09xml.receiving;

import java.net.MalformedURLException;
import java.util.List;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.exchangeplatform.epclient.callers.v_1_x.GetDataListCaller;
import com.thunisoft.exchangeplatform.epclient.callers.v_1_x.GetDataNameCaller;
import com.thunisoft.exchangeplatform.epclient.client.EPClient;
import com.thunisoft.exchangeplatform.epclient.client.clientcallers.ReceiveCaller;
import com.thunisoft.exchangeplatform.service.call.ServiceAddress;
import com.thunisoft.parse09xml.ConfigManager;

/**
 * 以轮询方式从传输交换平台文件接收类
 * @author ZhangMin
 *
 */
public class EPFileReceiverByPoll extends TimerTask{

	/**
	 * 日志实例对象
	 */
	private static Logger logger = LoggerFactory.getLogger(EPFileReceiverByPoll.class);
	
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
	 * 从传输交换平台接收的文件存放到本地的路径
	 */
	private String localfilepath;
	
	/**
	 * 是否正在接收
	 */
	private boolean isReceiving = false;
	
	/**
	 * 构造方法
	 * @param configManager
	 */
	public EPFileReceiverByPoll(ConfigManager configManager){
		this.configManager = configManager;
		this.receiver = configManager.getEPReceiver();
		this.serverUrl = configManager.getEPServerUrl();
		this.localfilepath = configManager.getZipBakPath();
	}

	/**
	 * 接收所有文件
	 * @return
	 */
	public void receiveFiles() {

		if(isReceiving){
			return;
		}
		
		GetDataListCaller datacaller = new GetDataListCaller(receiver);
		
		

		EPClient client = null;
		try {
			client = new EPClient(ServiceAddress.valueOf(serverUrl));
		} catch (MalformedURLException me) {
			logger.error("创建传输交换平台接收客户端失败！", me);
			return;
		}
		
		try{
			client.call(datacaller);
		}catch (Exception e) {
			logger.error("传输交换平台调用客户端接口失败！", e);
			return;
		}
		
		List<String> datalist = datacaller.getDataList();
		if(null == datalist || 0 == datalist.size()){
			return;
		}
		setIsReceiving(true);
		int count = 0;
		logger.info("开始接收文件,文件个数：[" + datalist.size() + "]" + "]个！");
		String path = "";
		for (String storeId : datalist) {
			GetDataNameCaller nameCaller = new GetDataNameCaller(storeId);
			try {
				client.call(nameCaller);
				path = getFilePath(nameCaller.getDataName(), localfilepath);
			
				ReceiveCaller caller = new ReceiveCaller(storeId, path);
				caller.setAfterFileDownloadCallBack(new AfterFileDownloadCallBack(configManager));
				client.call(caller);
				count ++;
			} catch (Exception e) {
				logger.error("传输交换平台接收文件错误！storeId：" + storeId, e);
			}
		}
		setIsReceiving(false);
		logger.info("接收文件完成，共接受文件个数：[" + count + "]个！");
		return;

	}
	
	/**
	 * 获取文件路径
	 * @param filename 文件信息
	 * @param localfilepath 根目录路径
	 * @return
	 */
	private String getFilePath(String filename, String localfilepath) {
		ClientHandler ch = new ClientHandler();
		return ch.getFilePath(filename, localfilepath);
	}
	

	/**
	 * 任务执行方法
	 * @see java.util.TimerTask#run()
	 */
	@Override
	public void run() {
		receiveFiles();
	}
	
	private void setIsReceiving(boolean isReceive){
		this.isReceiving = isReceive;
	}
	
}
