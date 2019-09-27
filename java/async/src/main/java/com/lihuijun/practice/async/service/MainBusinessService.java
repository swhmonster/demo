package com.lihuijun.practice.async.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

@Service
@Slf4j
@RequiredArgsConstructor(onConstructor_ = @Autowired)
public class MainBusinessService {

    private final TimeLimitService timeLimitService;


    public void processItem(){
        long start= System.currentTimeMillis();
        log.info(Thread.currentThread().getName()+"这是我处理的主要业务");

        log.info(Thread.currentThread().getName()+"接下来我要开启时限");

        //内部
//        startTimelimitMySelf();
        //外部无返回值
//         timeLimitService.start();
        //外部有返回值
        List<Future<String>> results=new ArrayList<>();
        for (int i=1;i<4;i++){
            results.add(timeLimitService.startWithReturn(i*1000));
        }

        for (Future<String> result : results) {

            try {
                log.info(result.get());
            } catch (Exception e) {}
        }


        long end = System.currentTimeMillis();

        log.info(Thread.currentThread().getName()+"耗时："+(end-start));
    }


//    @Async("myExecutor")
    @Async
    public void startTimelimitMySelf(){
        log.info(Thread.currentThread().getName()+"想在我自己里面开启时限");

        log.info(Thread.currentThread().getName()+"开启时限完成");
    }



}
