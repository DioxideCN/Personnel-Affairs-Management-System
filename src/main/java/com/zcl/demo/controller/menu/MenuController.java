package com.zcl.demo.controller.menu;

import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.model.menu.Menu;
import com.zcl.demo.service.menu.MenuService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.SessionUtil;
import com.zcl.demo.vo.menu.MenuVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * @author zcl
 * @create 2020/12/27 19:31
 * @desc 菜单管理
 **/
@Controller
@RequestMapping(value = "/menuController")
public class MenuController {
    /**
     * 构造器方式注入，官方推荐
     */
    private MenuService menuService;

    MenuController(MenuService menuService) {
        this.menuService = menuService;
    }

    private String prief = "/menu";

    /**
     * 菜单管理主界面
     */
    @PointLog(id = "6",value = "菜单管理")
    @RequestMapping(value = "/showindex.html", method = RequestMethod.GET)
    public String showIndex() {
        return prief + "/index";
    }

    /**
     * 查询所有菜单
     *
     * @return
     */
    @RequestMapping(value = "/queryTreeAll.json", method = RequestMethod.GET)
    @ResponseBody
    public Map queryTreeAll() {
        List<MenuVo> menuVos = menuService.queryTreeAll();
        return CommonResponse.setResponseData(menuVos);
    }

    /**
     * 菜单树添加页面
     *
     * @return
     */
    @RequestMapping(value = "/addpage.html", method = RequestMethod.GET)
    public String showAddPage(Model model, String treeId) {
        //根据id返回中文描述
        String nodeName = menuService.queryNodeNameById(treeId);
        model.addAttribute("nodeName", nodeName);
        model.addAttribute("treeId", treeId);
        return prief + "/add";
    }

    /**
     * 添加url
     *
     * @param menu
     * @return
     */
    @RequestMapping(value = "/addUrl.json", method = RequestMethod.POST)
    @ResponseBody
    public Map addUrl(Menu menu) {
        String userName = (String) SessionUtil.getSessionAttribute("userName");
        menu.setCreateTime(DateInFo.dateFomart());
        menu.setCreateUser(userName);
        menuService.addUrl(menu);
        return CommonResponse.setResponseData(null);
    }

    /**
     * 菜单删除
     *
     * @param mId
     * @return
     */
    @RequestMapping(value = "/removeUrl.json", method = RequestMethod.GET)
    @ResponseBody
    public Map removeUrl(String mId) {
        menuService.removeUrl(mId);
        return CommonResponse.setResponseData(null);
    }

    /**
     * 修改菜单页面跳转
     *
     * @param model
     * @param mId
     * @return
     */
    @RequestMapping(value = "/updatemnupage.html", method = RequestMethod.GET)
    public String updateMenuPage(Model model, String mId) {
        Menu menu = menuService.selectMenuByMid(mId);
        //根据id查找上级菜单名称
        Menu p_menu = menuService.selectMenuByMid(menu.getpMenu());
        model.addAttribute("menuDao", menu);
        model.addAttribute("p_menu", p_menu);
        return prief + "/update";
    }

    /**
     * 根据mid编辑菜单
     *
     * @param menu
     * @return
     */
    @RequestMapping(value = "/updateUrl.json", method = RequestMethod.POST)
    @ResponseBody
    public Map updateUrl(Menu menu) {
        menuService.updateUrl(menu);
        Map map = CommonResponse.setResponseData(null);
        return map;
    }

    /**
     * 单个节点点击展示详情界面
     *
     * @param model
     * @param mId
     * @return
     */
    @RequestMapping(value = "showSignleNode.html", method = RequestMethod.GET)
    public String showSignleNode(Model model, String mId) {
        Menu menu = menuService.selectMenuByMid(mId);
        Menu p_menu = menuService.selectMenuByMid(menu.getpMenu());
        model.addAttribute("menuDao", menu);
        model.addAttribute("p_menu", p_menu.getmName());
        return prief+"/detail";
    }
}
