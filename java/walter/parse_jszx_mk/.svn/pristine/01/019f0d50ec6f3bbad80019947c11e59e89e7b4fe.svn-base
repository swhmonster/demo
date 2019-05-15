package com.thunisoft.parse09xml.util;

import java.security.SecureRandom;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

import org.apache.commons.lang3.concurrent.BasicThreadFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 主键生成器
 * @author xiegq
 *
 */
public class KeyGenerator {
    
    private final static Logger logger = LoggerFactory.getLogger(KeyGenerator.class);
    
    SecureRandom numberGenerator = new SecureRandom();
    
    private static BlockingQueue<String> idqueue = new LinkedBlockingQueue<String>(1000);
    
    // makeid线程，用于生成主键id
    private static ExecutorService makeIdPool = Executors.newSingleThreadExecutor( 
            new BasicThreadFactory.Builder().namingPattern("mkid-%d").build());
    
    static {
        makeIdPool.execute(new Runnable() {
            public void run() {
                KeyGenerator.makeId();
            }
        });
    }
    
    /**
     * 利用uuid生成主键
     * @return
     */
    public static String genId() {
        try {
            if (idqueue.size() == 0) {
                return getId();
            } else {
                return idqueue.take();
            }
        } catch (InterruptedException e) {
            return getId();
        }
    }
    
    public static void makeId() {
        while (true) {
            try {
                idqueue.put(getId());
            } catch (InterruptedException e) {
                logger.error(e.getMessage(), e);
            }
        }
    }
    
    private static String getId() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

}
