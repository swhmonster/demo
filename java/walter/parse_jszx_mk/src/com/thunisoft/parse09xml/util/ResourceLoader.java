package com.thunisoft.parse09xml.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ResourceLoader {
    
    private static Logger logger = LoggerFactory.getLogger(ResourceLoader.class);
    
    /**
     * 
     * @param configuredPath
     * @param defaultPath TODO
     * @param callback
     * @return
     */
    public String loadConfig(String configuredPath, String defaultPath, Callback callback) {
        String rootPath = "src/" + configuredPath;
        File devPath = new File(rootPath);
        if (devPath.exists()) { // eclipse中测试
            loadFromPath(rootPath, callback);
            return rootPath; 
        } else { 
            File path = new File(configuredPath);
            // 命令行指定了目录,或者存在相对目录,则这个目录中的配置文件将覆盖默认配置
            if (path.exists()) {
                loadFromPath(configuredPath, callback);
                return configuredPath;
            } else {
                // jar环境， 默认配置在jar文件中
                loadFromClasspath(defaultPath, callback);
                return defaultPath;
            }
        }
        
        
    }

    private void loadFromClasspath(String rootPath, Callback callback) {
        try {
            JarFile jarFile = JarUtil.getJarFile(rootPath);
            for (Enumeration<JarEntry> entries = jarFile.entries(); entries.hasMoreElements();) {
                JarEntry entry = (JarEntry) entries.nextElement();
                String entryPath = entry.getName();
                if (entryPath.startsWith(rootPath) && !entryPath.equals(rootPath) && !entry.isDirectory()) {
                    InputStream is = null;
                    try {
                        is = getClass().getClassLoader().getResourceAsStream(entry.getName());
                        callback.doWithInputStream(is, entryPath.substring(rootPath.length()));
                    } finally {
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e) {
                                logger.error(e.getMessage(), e);
                            }
                        }
                    }
                }
            }
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        }
    }

    private void loadFromPath(String pathname, Callback callback) {
        File path = new File(pathname);
        if (path.isDirectory()) {
            for (File file : path.listFiles()) {
                if (file.isFile()) {
                    InputStream is = null;
                    try {
                        is = new FileInputStream(file);
                        callback.doWithInputStream(is, file.getName());
                    } catch (FileNotFoundException e) {
                        logger.error(e.getMessage(), e);
                    } finally {
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e) {
                                logger.error(e.getMessage(), e);
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    public static interface Callback {
        public void doWithInputStream(InputStream is, String entryName);
    }
    
}
