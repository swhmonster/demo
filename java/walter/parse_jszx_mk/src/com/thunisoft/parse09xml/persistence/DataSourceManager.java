package com.thunisoft.parse09xml.persistence;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.thunisoft.parse09xml.ConfigManager;

/**
 * 数据库连接池管理器
 * @author xiegq
 *
 */
public class DataSourceManager {
    
    private static Logger logger = LoggerFactory.getLogger(DataSourceManager.class);
    
    // 数据库连接池
    private static ComboPooledDataSource cpds = null;
    
    public static Connection getConn() throws SQLException {
        return cpds.getConnection();
    }

    public static void initDatasource(ConfigManager configManager) {
        synchronized (DataSourceManager.class) {
            cpds = new ComboPooledDataSource(); 
            try {
                cpds.setDriverClass(configManager.getConfig("dataSource.driverClass"));
            } catch (PropertyVetoException e) {
                logger.error(e.getMessage(), e);
            } 
            cpds.setJdbcUrl(configManager.getConfig("dataSource.jdbcUrl")); 
            cpds.setUser(configManager.getConfig("dataSource.user")); 
            cpds.setPassword(configManager.getConfig("dataSource.password")); // the settings below are optional -- c3p0 can work with defaults 
            cpds.setInitialPoolSize(configManager.getConfigAsInt("dataSource.initialPoolSize"));
            cpds.setMinPoolSize(configManager.getConfigAsInt("dataSource.minPoolSize")); 
            cpds.setAcquireIncrement(configManager.getConfigAsInt("dataSource.acquireIncrement")); 
            cpds.setMaxPoolSize(configManager.getConfigAsInt("dataSource.maxPoolSize"));
        }
        
    }

        

}
