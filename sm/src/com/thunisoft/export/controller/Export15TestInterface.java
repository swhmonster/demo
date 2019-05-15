package com.thunisoft.export.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

@Controller
public class Export15TestInterface {
    @RequestMapping("/test")
    @ResponseBody
    public void getXml(Map<String, String[]> map) {
        JSONObject json = new JSONObject();
       
    }
}
