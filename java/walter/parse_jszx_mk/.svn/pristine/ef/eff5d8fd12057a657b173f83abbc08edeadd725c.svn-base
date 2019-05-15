package com.thunisoft.parse09xml.dtc;

import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import com.thunisoft.rmfysjfxpt.AppException;
import com.thunisoft.rmfysjfxpt.Const;
import com.thunisoft.rmfysjfxpt.dtc.IAppLogic;

// 模拟的APP
/**
 * 导入示例
 * 
 * 业务控制抽象类
 */
public abstract class AbstractLogic implements IAppLogic {

	Lock lock = new ReentrantLock();

	public String runingStatus = Const.STATUS_WC;// "完成" APP状态

	public void changeStatusFail() {

		lock.lock();
		@SuppressWarnings("unused")
        String status = Const.STATUS_SB;// "失败";
		lock.unlock();
	}

	public void changeStatusSucceed() {

		lock.lock();
		@SuppressWarnings("unused")
        String status = Const.STATUS_WC;// "完成";
		lock.unlock();
	}

	public void changeStatusRunning() {

		lock.lock();
		@SuppressWarnings("unused")
        String status = Const.STATUS_ZXZ;// "执行中";
		lock.unlock();
	}

	public String checkRuningStatus() {

		lock.lock();
		String status = runingStatus;
		lock.unlock();
		return status;
	}

	public void run(Date stat_date) throws AppException {

		changeStatusRunning();
		Logic(stat_date);
		changeStatusSucceed();
	}

	// 模拟的APP逻辑
	public abstract void Logic(Date stat_date) throws AppException;
}
