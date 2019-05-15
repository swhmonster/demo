package com.thunisoft.parse09xml.dtc;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.MainProcess;
import com.thunisoft.rmfysjfxpt.AppException;

/**
 *  导入业务实现
 *  @author huff
 *  @since 2014-07-16
 */
public class DrLogic extends AbstractLogic {
    private static Logger logger = LoggerFactory.getLogger(DrLogic.class);
	public void Logic(Date stat_date) throws AppException {
        new MainProcess().process(null,stat_date);
		try {
			Thread.sleep(1000);//
			//if (rd.nextInt() % 13 == 1) {
			//changeStatusFail();
			//throw new AppException("执行出错");
			//}
		} catch (InterruptedException e) {
			logger.error(e.getMessage(),e);
		}
	}

}
