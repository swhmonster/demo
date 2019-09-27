package com.lihuijun.practice.async.controller;

import com.lihuijun.practice.async.service.MainBusinessService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor(onConstructor_ = @Autowired)
public class BusinessController {

    private final MainBusinessService mainBusinessService;


    public void execute(){
        mainBusinessService.processItem();
    }
}
