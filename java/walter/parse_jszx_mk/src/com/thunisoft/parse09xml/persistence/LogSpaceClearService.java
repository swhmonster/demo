package com.thunisoft.parse09xml.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.thunisoft.parse09xml.util.TimeUtil;

public class LogSpaceClearService {
    
    private static final Logger logger = LoggerFactory.getLogger(LogSpaceClearService.class);

    /**
     * 清理数据库日志空间
     */
    public void clearDatabaseLogSpace() {
        logger.info("开始清理数据库日志,执行：checkpoint");
        long start = System.nanoTime();
        Connection conn = null;
//        PreparedStatement stat = null;
        try {
            conn = DataSourceManager.getConn();
            //stat = conn.createStatement();
            conn.prepareCall("checkpoint");
//            stat.execute("checkpoint");
            //TODO 是否需要按照库来执行？？
//            stat.execute("dump transaction DB_MSYS with truncate_only");
        } catch (SQLException e) {
            logger.error(e.getMessage(), e);
        } finally {
//            if (stat != null) {
//                try {
//                    stat.close();
//                } catch (SQLException e) {
//                    logger.error(e.getMessage(), e);
//                }
//            }
            
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }
        
        logger.info("清理数据库日志完毕,耗时 :{}", TimeUtil.format(System.nanoTime() - start));
    }

}
