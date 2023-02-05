package com.zcl.demo.controller.user;

import com.github.pagehelper.PageInfo;
import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.role.Role;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.role.RoleService;
import com.zcl.demo.service.user.UserService;
import com.zcl.demo.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2020/12/5 19:04
 * @desc 用户管理、默认主界面
 **/
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    private String url = "/user";

    /**
     * 主界面
     *
     * @return
     */
    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public String showIndex2() {
        return "/index";
    }

    /**
     * 默认展示界面（商品透视图）
     *
     * @return
     */
    @PointLog(id = "8",value = "商品透视图")
    @RequestMapping(value = "/showChars.html", method = RequestMethod.GET)
    public String showChars() {
        return "chars";
    }

    /**
     * 默认展示界面
     *
     * @return
     */
    @RequestMapping(value = "/showDeafult.html", method = RequestMethod.GET)
    public String showDeafult() {
        return "showdefault";
    }

    /**
     * 用户管理界面
     *
     * @return
     */
    @PointLog(id = "3",value = "用户管理")
    @RequestMapping(value = "/userlist.html", method = RequestMethod.GET)
    public String showUsers() {
        return url + "/list";
    }

    /**
     * 动态查询
     *
     * @param page
     * @param limit
     * @param
     * @return
     */
    @RequestMapping(value = "/userlist.json", method = RequestMethod.POST)
    @ResponseBody
    public Map list(@RequestParam(required = false, defaultValue = "1") int page,
                    @RequestParam(required = false) int limit, String uName) {
        List<User> list = userService.list(page, limit, uName);
        // 使用pageInfo包装查询
        PageInfo<User> rolePageInfo = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }


    /**
     * 新增界面
     */
    @RequestMapping(value = "/userController/add.html", method = RequestMethod.GET)
    public String addHtml(Model model) {
        List<Role> roles = roleService.queryAllRole();
        model.addAttribute("roledao", roles);
        return url + "/add";
    }

    /**
     * 新增
     */
    @RequestMapping(value = "/userController/save.form", method = RequestMethod.POST)
    @ResponseBody
    public Map addUser(User user) {
        Map map;
        //判断账户名是否存在
        User users = userService.queryUserByAllName(user.getuName());
        if (users == null) {
            userService.addUser(user);
            map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "新增成功", true);
        } else {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "账号名重复", false);
        }
        return map;
    }

    /**
     * 修改界面
     */
    @RequestMapping(value = "/userController/modify.html", method = RequestMethod.GET)
    public String modifyHtml(String id, Model model) {
        Assert.hasLength(id, "未传递id！");
        User user = userService.queryUserById(id);
        List<Role> roles = roleService.queryAllRole();
        Role now_role = roleService.queryRoleByUid(id);
        model.addAttribute("now_role", now_role);
        model.addAttribute("roledao", roles);
        model.addAttribute("user", user);
        return url + "/update";
    }

    /**
     * 修改
     */
    @RequestMapping(value = "/userController/update.json", method = RequestMethod.POST)
    @ResponseBody
    public Map updateUser(User user) {
        User user_ = userService.queryUserById(user.getuId());
        userService.updateUser(user);
        Map map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "修改成功", true);
        return map;
    }

    /**
     * 详情界面
     */
    @RequestMapping(value = "/userController/detail.html", method = RequestMethod.GET)
    public String detailHtml(Model model, String uId) {
        uId = (String) SessionUtil.getSessionAttribute("userId");
        Assert.hasLength(uId, "未传递uId！");
        User userById = userService.queryUserById(uId);
        List<Role> roles = roleService.queryAllRole();
        Role now_role = roleService.queryRoleByUid(uId);
        model.addAttribute("now_role", now_role);
        model.addAttribute("roledao", roles);
        model.addAttribute("user", userById);
        return url + "/detail";
    }


    /**
     * 删除
     */
    @RequestMapping(value = "/userController/deleteById.json", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteUser(@RequestBody String[] ids) {
        userService.deleteUserById(ids);
        Map map = CommonResponse.setResponseData(null);
        return map;
    }


    /**
     * 重置密码
     *
     * @return
     */
    @RequestMapping(value = "/userController/reloadPw.json", method = RequestMethod.GET)
    @ResponseBody
    public Map reloadPw() {
        String userId = (String) SessionUtil.getSessionAttribute("userId");
        try {
            userService.reloadPw(userId);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "重置失败！", false);

        }
        return CommonResponse.setResponseData(null);
    }
}
