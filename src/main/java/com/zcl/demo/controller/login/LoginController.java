package com.zcl.demo.controller.login;

import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.LogStatus;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.log.LogService;
import com.zcl.demo.service.menu.MenuService;
import com.zcl.demo.service.notice.NoticeService;
import com.zcl.demo.service.role.RoleService;
import com.zcl.demo.service.user.UserService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.MD5Util;
import com.zcl.demo.vo.log.StaticSevNumVo;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private LogService logService;
    @Autowired
    private MenuService menuService;
    @Autowired
    private NoticeService noticeService;
    private String url = "/login";

    /**
     * 登录页面
     *
     * @return
     */
    @RequestMapping(value = "/login.html")
    public String login() {
        return url + "/login";
    }

    /**
     * 登录校验
     *
     * @param model
     * @param user
     * @return
     */
    @RequestMapping(value = "/login.form", method = RequestMethod.POST)
    public String loginChek(Model model, User user, HttpSession httpSession) {
        //使用shrio编写认证操作
        //获取Subject(当前用户)
        Subject subject = SecurityUtils.getSubject();
        //封装用户数据
        UsernamePasswordToken token = null;
        //执行登录方法
        try{
            String s = MD5Util.EncoderByMd5(user.getPassword());
            token = new UsernamePasswordToken(user.getuName(), MD5Util.EncoderByMd5(user.getPassword()));
            model.addAttribute("userDao", user);
            subject.login(token);
            User u = userService.queryUserByAllName(user.getuName());
            //展示角色拥有菜单
            String showMenus = menuService.listMenuByRid(u.getrId());
            model.addAttribute("roleMenus",showMenus);
            //设置消息通知
            Integer noticeNum=noticeService.queryNoticeNumByUid(u.getuId());
            model.addAttribute("noticeNum",noticeNum);
            //设置session 存用户当前的登录状态以及角色id
            httpSession.setAttribute("roleId", u.getuId());
            httpSession.setAttribute("userName", user.getuName());
            httpSession.setAttribute("userId", u.getuId());
            httpSession.setAttribute("status", LogStatus.LOG_IN.getName());
            httpSession.setMaxInactiveInterval(30*60);//超过30分钟
            return "/index";
        }catch(UnknownAccountException e){
              model.addAttribute("msg", "用户不存在");
              return "/login.html";
        }catch (IncorrectCredentialsException e){
            model.addAttribute("msg", "密码错误");
            return "/login.html";
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "/login.html";
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "/login.html";
        }

    }

    @RequestMapping(value = "/logout.html", method = RequestMethod.GET)
    public String logout(HttpSession httpSession) {
        int flag = logService.logout(httpSession);
        if (flag == 0) {
            return url+"/login";
        } else {
            return "fail";
        }
    }

    /**
     * 统计今日访问次数
     * @return
     */
    @RequestMapping(value = "/statisNowDayPnum.json",method = RequestMethod.GET)
    @ResponseBody
    public Map statisNowDayPnum(){
        String s = logService.statisNowDayPnum();
        return CommonResponse.setResponseData(s);
    }

    /**
     * 展示首页
     * @return
     */
    @RequestMapping(value = "/showSYpage.html",method = RequestMethod.GET)
    public String showSyPage(){
        return url+"/souye";
    }

    /**
     * 近七日用户访问统计
     * @return
     */
    @RequestMapping(value = "/staticSevenDayLog.json",method = RequestMethod.GET)
    @ResponseBody
    public Map staticSevenDayLog(){
        StaticSevNumVo staticSevNumVo = logService.staticSenvenDayLog();
        return CommonResponse.setResponseData(staticSevNumVo);
    }
}
