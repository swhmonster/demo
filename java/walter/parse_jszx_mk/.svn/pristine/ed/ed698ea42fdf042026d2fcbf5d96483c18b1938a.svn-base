package com.thunisoft.parse09xml.dtc;

import java.util.List;

import com.thunisoft.rmfysjfxpt.Const;
import com.thunisoft.rmfysjfxpt.dtc.InterfaceUtil;
import com.thunisoft.rmfysjfxpt.pojo.SubTaskStatus;
import com.thunisoft.rmfysjfxpt.pojo.TaskStatus;
@SuppressWarnings("rawtypes")
public class DR implements InterfaceUtil {

	/**
	 * 新加任务在任务开始时间后开始执行。
	 */
	
    public boolean haveTaskToRun(List status) {
		boolean tmp = false;
		if (status.size() > 0) {
			for (int i = 0; i < status.size(); i++) {
				if (status.get(i) instanceof TaskStatus) {
					i++;
					if (status.get(i) instanceof SubTaskStatus) {
						SubTaskStatus sts = (SubTaskStatus) status.get(i);
						if (sts.C_SUBTASK_STATUS.equals(Const.STATUS_XJ)
								&& sts.D_BEGIN_TIME.before(sts.D_END_TIME))
							// Const.STATUS_XJ "新加"
							tmp = true;
					}
				}
			}
		}
		return tmp;
	}

    public String getTaskDate(List status) {

		String rs = null;
		if (status.size() > 0) {
			for (int i = 0; i < status.size(); i++) {
				if (status.get(i) instanceof TaskStatus) {
					TaskStatus ts = (TaskStatus) status.get(i);
					i++;
					if (status.get(i) instanceof SubTaskStatus) {
						SubTaskStatus sts = (SubTaskStatus) status.get(i);
						if (sts.C_SUBTASK_STATUS.equals(Const.STATUS_XJ))// Const.STATUS_XJ;//
							// "新加"
							return ts.C_STAT_DATE;
					}
				}
			}
			return rs;
		} else {
			return null;
		}
	}

    public Integer getTaskID(List status) {
		Integer rs = null;
		if (status.size() > 0) {
			for (int i = 0; i < status.size(); i++) {
				if (status.get(i) instanceof TaskStatus) {
					TaskStatus ts = (TaskStatus) status.get(i);
					i++;
					if (status.get(i) instanceof SubTaskStatus) {
						SubTaskStatus sts = (SubTaskStatus) status.get(i);
						if (sts.C_SUBTASK_STATUS.equals(Const.STATUS_XJ))// Const.STATUS_XJ;//
							// "新加"
							return ts.N_ID;
					}
				}
			}
			return rs;
		} else {
			return null;
		}
	}

    public SubTaskStatus getSubTaskStatusByTaskID(List status, int TaskID) {
		SubTaskStatus rs = null;
		if (status.size() > 0) {
			for (int i = 0; i < status.size(); i++) {
				if (status.get(i) instanceof TaskStatus) {
					i++;
					if (status.get(i) instanceof SubTaskStatus) {
						SubTaskStatus sts = (SubTaskStatus) status.get(i);
						if (sts.N_TASK_ID.intValue() == TaskID)
							return sts;
					}
				}
			}
			return rs;
		} else {
			return null;
		}
	}

}
