package com.lihuijun.practice.async;

import com.lihuijun.practice.async.controller.BusinessController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class AsyncApplicationTests {
	@Autowired
	private  BusinessController business;
	@Test
	public void contextLoads() {
		business.execute();
	}

}
