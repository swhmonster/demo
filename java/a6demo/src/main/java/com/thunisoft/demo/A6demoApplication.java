package com.thunisoft.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
@MapperScan("com/thunisoft/demo/mapper")
public class A6demoApplication {

    public static void main(String[] args) {
        SpringApplication.run(A6demoApplication.class, args);
    }

}
