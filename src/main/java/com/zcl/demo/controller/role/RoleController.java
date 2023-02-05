package com.zcl.demo.controller.role;

import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.menu.Menu;
import com.zcl.demo.model.role.Role;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.menu.MenuService;
import com.zcl.demo.service.role.RoleService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.SessionUtil;
import com.zcl.demo.vo.menu.MenuCheckVo;
import com.zcl.demo.vo.menu.MenuVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.ObjectUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "/RoleController")
@Controller
public class RoleController {
    @Autowired
    private RoleService roleService;
    @Autowired
    private MenuService menuService;
    private String url = "/role";

    /**
     * 导航栏进入页面
     *
     * @return
     */
    @PointLog(id = "3",value = "角色管理")
    @RequestMapping(value = "/role_native.html", method = RequestMethod.GET)
    public String showNativeRole() {
        return url + "/list";
    }

    /**
     * 动态查询
     *
     * @param page
     * @param limit
     * @param role
     * @return
     */
    @RequestMapping(value = "/showsreach.json", method = RequestMethod.POST)
    @ResponseBody
    public Map showSreach(@RequestParam(required = false, defaultValue = "1") int page,
                          @RequestParam(required = false) int limit, Role role) {
        PageInfo<Role> rolePageInfo;
        List<Role> roles = roleService.dynamicQueryRole(role);
        rolePageInfo = new PageInfo<>(roles);
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }

    /**
     * 测试查询
     */
    @RequestMapping(value = "/showsreach2.json", method = RequestMethod.POST)
    @ResponseBody
    public Map showSreach(Role role) {
        PageInfo<Role> rolePageInfo;
        List<Role> roles = roleService.dynamicQueryRole(role);
        Map map = CommonResponse.setPageResponse(roles, null, StatusCode.SUCCESS.getName(), "成功", true);
        return map;
    }

    /**
     * 新增页面
     *
     * @param
     * @param
     * @return
     */
    @RequestMapping(value = "/add.html", method = RequestMethod.GET)
    public String addPage() {
        return url + "/add";
    }

    /**
     * 新增角色
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "/add.json", method = RequestMethod.POST)
    @ResponseBody
    public Map addRole(Role role) {
        Map map;
        boolean flag = roleService.addRole(role);
        if (flag == true) {
            map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "新增成功", true);
        } else {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "角色名重复", false);
        }
        return map;
    }

    /**
     * 修改页面
     *
     * @param model
     * @param rId
     * @return
     */
    @RequestMapping(value = "/modify.html", method = RequestMethod.GET)
    public String modifyPage(Model model, String rId) {
        Assert.hasLength(rId, "未传递rId");
        Role role = roleService.queryRoleByRid(rId);
        model.addAttribute("role", role);
        return url + "/modify";
    }

    /**
     * 修改事件
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "/modify.json")
    @ResponseBody
    public Map modifyRole(Role role) {
        Map map;
        if (ObjectUtils.isEmpty(role)) {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "更新失败：传入值为空", false);
            return map;
        }
        roleService.modifyRole(role);
        map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "更新成功", true);
        return map;
    }

    /**
     * 详情界面跳转
     *
     * @return
     */
    @RequestMapping(value = "/detail.html", method = RequestMethod.GET)
    public String detailPage(Model model, String rId) {
        Role role = roleService.queryRoleByRid(rId);
        model.addAttribute("role", role);
        return url + "/detail";
    }

    /**
     * 根据id删除角色
     *
     * @param rId
     * @return
     */
    @RequestMapping(value = "/deleteById.json", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteById(@RequestBody String[] rId) {
        try {
            roleService.deleteById(rId);
            return CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "删除成功", true);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "删除失败", false);

        }
    }

    /**
     * 跳转角色菜单绑定界面
     *
     * @param model
     * @param rId
     * @return
     */
    @RequestMapping(value = "/showBindMenuPage.html", method = RequestMethod.GET)
    public String showBindMenuPage(Model model, String rId) {
        model.addAttribute("rId", rId);
        return url + "/bindmenu";
    }

    /**
     * 根据rid查找角色绑定菜单
     *
     * @param rId
     * @return
     */
    @RequestMapping(value = "/queryBindMenuByRid.json", method = RequestMethod.GET)
    @ResponseBody
    public Map queryBindMenuByRid(String rId) {
        List<MenuCheckVo> menuVos = menuService.queryBindMenuByRid(rId);
        return CommonResponse.setResponseData(menuVos);
    }

    /**
     * 角色菜单绑定保存
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/bindMenuPage.json", method = RequestMethod.POST)
    @ResponseBody
    public Map bindMenuPage(@RequestBody String[] mIds) {
        try {
            String[] real_mid = Arrays.copyOf(mIds, mIds.length - 1);
            String rId = mIds[mIds.length - 1];
            //清除所有菜单
            menuService.deleteBindMenvosByRid(rId);
            //绑定菜单
            menuService.insertBindMenvos(real_mid, rId);
            return CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "修改成功", true);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "修改失败", false);

        }
    }
}
