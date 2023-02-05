package com.zcl.demo.controller.log;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.log.Log;
import com.zcl.demo.service.log.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2020/11/23 20:52
 * @desc 日志控制层
 **/
@RequestMapping("/LogController")
@Controller
public class LogController {
    @Autowired
    private LogService logService;

    /**
     * 登录日志管理界面
     *
     * @return
     */
    @PointLog(id = "2", value = "日志管理")
    @RequestMapping(value = "/hello.html", method = RequestMethod.GET)
    public String hello() {
        return "/log/list";
    }

    /**
     * 功能日志管理界面
     *
     * @return
     */
    @RequestMapping(value = "/functionLog.html", method = RequestMethod.GET)
    public String functionLogPage() {
        return "/funlog/list";
    }

    /**
     * 登录日志查询
     *
     * @param userName
     * @param createTime
     * @return
     */
    @RequestMapping(value = "/list.json", method = RequestMethod.POST)
    @ResponseBody
    public Map query(@RequestParam(required = false, defaultValue = "1") int page,
                     @RequestParam(required = false) int limit, String userName, String createTime) {
        List<Log> list = logService.query(page, limit, userName, createTime);
        // 使用pageInfo包装查询
        PageInfo<Log> rolePageInfo = new PageInfo<>(list);//
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }

    /**
     * 功能日志查询
     * @param page
     * @param limit
     * @param userName
     * @param createTime
     * @return
     */
    @RequestMapping(value = "/funLogQuery.json",method = RequestMethod.POST)
    @ResponseBody
    public Map funLogQuery(@RequestParam(required = false, defaultValue = "1") int page,
                           @RequestParam(required = false) int limit, String userName, String createTime) {
        List<Log> list = logService.funLogQuery(page, limit, userName, createTime);
        // 使用pageInfo包装查询
        PageInfo<Log> pageInfo = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(pageInfo.getList(), pageInfo.getTotal(), StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }


}
