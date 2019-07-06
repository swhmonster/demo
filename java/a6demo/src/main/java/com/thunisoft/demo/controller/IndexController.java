package com.thunisoft.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thunisoft.artery.data.QueryManager;
import com.thunisoft.artery.data.model.ArteryPageableData;
import com.thunisoft.artery.data.model.IQueryInfo;
import com.thunisoft.artery.data.model.impl.DefaultQueryInfo;
import com.thunisoft.demo.bean.DataBean;
import com.thunisoft.demo.mapper.DataBeanMapper;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.alibaba.fastjson.JSONObject;

import com.thunisoft.artery.data.annotation.ExceptionTips;

import java.util.List;

/**
 * Index Controller 首页面Controller
 *
 * @author huayu
 * @date 2019-06-06
 */
@Controller
@RequestMapping("index")
@RequiredArgsConstructor(onConstructor_ = @Autowired)
public class IndexController {
    private final DataBeanMapper dataBeanMapper;

    @RequestMapping("/lbdata")
    @ResponseBody
    @ExceptionTips("加载问题线索列表数据出错")
    public Object getSjjbData(HttpServletResponse response, IQueryInfo qp) {
        qp = new DefaultQueryInfo();
        qp.setSplitPage(true);
        ArteryPageableData<List<DataBean>> pageData = QueryManager.datas(qp, DataBean.class, () -> dataBeanMapper.queryBh());
        return pageData;
    }

    @PutMapping("/newWsmc/{bh}/{wsmc}")
    @ResponseBody
    @ExceptionTips("更新文书出错")
    public int a6Update(@PathVariable String bh, @PathVariable String wsmc) {
        return dataBeanMapper.updataWs(bh, wsmc);
    }

    @DeleteMapping("/deleteWs/{bh}")
    @ResponseBody
    @ExceptionTips("删除文书出错")
    public int a6Delete(@PathVariable String bh) {
        return dataBeanMapper.deleteWs(bh);
    }

    /**
     * html入口
     * 注意：如直接访问到contextPath，默认走的SpringBoot的转发，不会走此方法了
     *
     * @return 'resources/templates/index.html'
     */
    @GetMapping()
    public String index(HttpServletRequest request) {
        request.setAttribute("rs1", rs1("张三", "男"));
        return "index";
    }

    /**
     * 数据源
     *
     * @param name 姓名
     * @param sex  性别
     * @return
     */
    @ResponseBody
    @RequestMapping("/rs1")
    public Object rs1(String name, String sex) {
        JSONObject json = new JSONObject();
        json.put("name", name);
        json.put("sex", sex);
        return json;
    }

    /**
     * 示例
     *
     * @return
     */
    @ExceptionTips("请求example失败")
    @ResponseBody
    @GetMapping("/example")
    public String example() {
        return "example data";
    }
}