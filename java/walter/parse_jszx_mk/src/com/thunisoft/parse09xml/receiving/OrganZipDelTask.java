package com.thunisoft.parse09xml.receiving;

import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.ConfigManager;
import com.thunisoft.parse09xml.util.TimeUtil;
import com.thunisoft.parse09xml.util.ZipTypeUtil;
import com.thunisoft.summer.component.dataexchange.core.util.FileUtil;

/**
 * 组织机构zip包删除任务
 * @author ZhangMin
 *
 */
public class OrganZipDelTask extends TimerTask {
	
	/**
	 * 日志实例对象
	 */
	
	private static Logger logger = LoggerFactory.getLogger(OrganZipDelTask.class);
	
	/**
	 * 组织机构zip包删除的延时天数
	 */
	private int delDelayDays = 7;
	
	/**
	 * 接收文件存放路径
	 */
	private String localfilepath = "zipbak";
	
	/**
	 * 构造方法
	 * @param configManager 配置文件信息
	 */
	public OrganZipDelTask(ConfigManager configManager){
		this.delDelayDays = configManager.getConfigAsInt("config.organ.delDelayDays");
		this.localfilepath = configManager.getZipBakPath();
	}

	/**
	 * 实现定时任务父类的方法
	 * @see java.util.TimerTask#run()
	 */
	@Override
	public void run() {
		delOrganFiles();
	}
	
	/**
	 * 删除组织机构文件
	 */
	private void delOrganFiles(){
		//获取组织机文件构存放的路径
		String path = getOrganFilePath();
		//遍历存放路径的各个子目录，删除超过一定天数的目录
		File file = new File(path);
		//路径不存在，返回
		if(!file.exists())return;
		File[] fyfiles = file.listFiles();
		//没有子文件夹，返回
		if(null == fyfiles)return;
		for(File fyfile: fyfiles){
			delFileBeforeCertainDaysByFy(fyfile);
		}
	}

	/**
	 * 返回组织机构的文件存放路径
	 * @return
	 */
	private String getOrganFilePath() {
		return this.localfilepath + "\\" + ZipTypeUtil.ZIP_TYPE_JG;
	}

	/**
	 * 删除法院大排行目录下的时间超过一定天数的组织机构zip
	 * @param fyfile
	 */
	private void delFileBeforeCertainDaysByFy(File file) {
		if(!file.isDirectory()){
			return;
		}
		File[] datefiles = file.listFiles();
		for(File datefile: datefiles){
			//不是文件夹，跳过
			if(!file.isDirectory()){
				continue;
			}
			String filedate = datefile.getName();
			if(needToDelete(filedate)){
				boolean result = deleteFolder(datefile);
				if(!result){
					logger.error("组织机构文件夹：{" + datefile.getAbsolutePath() + "} 删除失败");
				}
			}
		}
	}

	/**
	 * 删除文件夹
	 * @param file
	 */
	private boolean deleteFolder(File file) {
		return FileUtil.deleteDirectory(file);
	}

	/**
	 * 判断是否需要删除文件夹
	 * @param yyyymmdd_date 20140312 这种格式的日期
	 * @return
	 */
	private boolean needToDelete(String yyyymmdd_date) {
		String year = yyyymmdd_date.substring(0, 4);
		String month = yyyymmdd_date.substring(4, 6);
		String day = yyyymmdd_date.substring(6, 8);
		Calendar ca = Calendar.getInstance();
		ca.set(Integer.valueOf(year), Integer.valueOf(month) - 1, Integer.valueOf(day));
		int daysBetween = TimeUtil.getDays(ca.getTime(), new Date());
		return (daysBetween >= delDelayDays);
	}

}
