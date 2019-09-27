package com.lihuijun.practice.async.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Service;

import java.util.concurrent.Future;

@Service
@Slf4j
public class TimeLimitService {

    /**
     * 异步调用无返回值
     */
    @Async
    public void start(){
        log.info(Thread.currentThread().getName()+"在外面异步开启时限");
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {

        }
        log.info("在外面开始时限完成");
    }

    /**
     * 异步调用返回值
     * @param time
     * @return
     */
    @Async
    public Future<String> startWithReturn(long time){
        log.info(Thread.currentThread().getName()+"这是个有返回值的异步调用");
        try {
            Thread.sleep(time);
            return new AsyncResult<String>("async return result sucessfully -----"+time);
        } catch (InterruptedException e) {
            e.printStackTrace();
            return new AsyncResult<String>("async return result failure -----"+time);
        }
    }
}
