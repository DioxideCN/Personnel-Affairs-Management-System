package com.zcl.demo.service.menu.impl;

import com.zcl.demo.dao.menu.MenuDao;
import com.zcl.demo.enums.menu.MenuIconEnum;
import com.zcl.demo.model.menu.Menu;
import com.zcl.demo.service.menu.MenuService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.MapperFactoryUtil;
import com.zcl.demo.util.SessionUtil;
import com.zcl.demo.vo.menu.MenuCheckVo;
import com.zcl.demo.vo.menu.MenuVo;
import ma.glasnost.orika.MapperFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class MenuServiceImpl implements MenuService {
    private MenuDao menuDao;

    MenuServiceImpl(MenuDao menuDao) {
        this.menuDao = menuDao;
    }

    /**
     * 展现树形结构
     *
     * @return
     */
    @Override
    public List<MenuVo> queryTreeAll() {
        List<Menu> menus = menuDao.queryAll();
        List<MenuVo> menuVos = changeModelToVo(menus);
        return menuVos;
    }

    /**
     * 根据id返回中文描述
     *
     * @param treeId
     * @return
     */
    @Override
    public String queryNodeNameById(String treeId) {
        return menuDao.queryNodeNameById(treeId);
    }

    /**
     * 添加url
     *
     * @param menu
     * @return
     */
    @Override
    public void addUrl(Menu menu) {
        menuDao.addUrl(menu);
    }

    /**
     * 菜单删除
     *
     * @param mId
     */
    @Override
    public void removeUrl(String mId) {
        menuDao.removeUrl(mId);
        //还需要删除中间表
        menuDao.removeBindUrl(mId);
    }

    /**
     * 根据mid查找menu
     *
     * @param mId
     * @return
     */
    @Override
    public Menu selectMenuByMid(String mId) {
        Menu menu = menuDao.selectMenuByMid(mId);
        return menu;
    }

    /**
     * 根据mid修改菜单
     *
     * @param menu
     * @return
     */
    @Override
    public void updateUrl(Menu menu) {
        String userName = (String) SessionUtil.getSessionAttribute("userName");
        menu.setUpdateTime(DateInFo.dateFomart());
        menu.setUpdateUser(userName);
        menuDao.updateUrl(menu);
    }

    /**
     * 根据rid查找角色绑定菜单,添加checked属性
     *
     * @param rId
     * @return
     */
    @Override
    public List<MenuCheckVo> queryBindMenuByRid(String rId) {
        List<Menu> menus_source = menuDao.queryAll();
        List<Menu> menus = menuDao.queryBindMenuByRid(rId);
        //两集合交集需要checked
        List<MenuCheckVo> menuCheckVos = changeModelToCheckVo(menus_source);
        menuCheckVos.stream().forEach(menuCheckVo -> {
            for (Menu m :
                    menus) {
                if (m.getmId().equals(menuCheckVo.getId())) {
                    menuCheckVo.setChecked(true);
                    break;
                }
            }
        });
        return menuCheckVos;
    }

    /**
     * 根据rid删除绑定菜单
     *
     * @param rId
     */
    @Override
    public void deleteBindMenvosByRid(String rId) {
        menuDao.deleteBindMenvosByRid(rId);
    }

    /**
     * 批量绑定菜单
     *
     * @param menuVoList
     * @param rId
     */
    @Override
    public void insertBindMenvos(String[] menuVoList, String rId) {
        for (String m :
                menuVoList) {
            menuDao.insertBindMenvo(m, rId);
        }
    }

    /**
     * 返回拼接出的html（根据rid获取展示菜单）
     *
     * @param rId
     * @return
     */
    @Override
    public String listMenuByRid(String rId) {
        //返回的html
        StringBuilder sb = new StringBuilder();
        //根据rid获取所有菜单model
        List<Menu> menus = queryMenuByRid(rId);
        if (menus.size() == 0) {
            return "";
        }
        //转换成菜单本地url格式
        menus.stream().forEach(menu -> {
            //转换icon成相对路径
            MenuIconEnum menuIconEnum = MenuIconEnum.getEnumByType(menu.getmIcon());
            switch (menuIconEnum) {
                case HOME_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case ANTH_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case BASICS_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case LOG_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case MENU_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case ROLE_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
                case USER_ICON:
                    menu.setmIcon(menuIconEnum.getPath());
                    break;
            }
        });
        //遍历出二级菜单，如果有二级菜单 就在menuCheckVos中遍历出它所有的子节点，渲染在二级菜单中
        List<Menu> menulist = menus.stream().filter(menu -> "0".equals(menu.getpMenu())).collect(Collectors.toList());
        if (menulist.size() > 0) {
            for (Menu m :
                    menulist) {
                sb.append("<li class=\"layui-nav-item layui-nav-itemed\">");
                sb.append("<a class=\"\" href=\"javascript:;\"> <img src=" + m.getmIcon() + " style=\"width: 16px;height: 16px;margin-right:8px\">" + m.getmName() + "</a>");
                //获取该二级菜单下的所有子节点，menuCheckVos是排过序的
                String sendNodeChilds = getSendNodeChilds(m.getmId(), menus);
                sb.append(sendNodeChilds);
                sb.append("</li>");
            }
        }
        return sb.toString().trim();
    }

    /**
     * 根据rId获取所有的menu实体
     *
     * @param rId
     * @return
     */
    public List<Menu> queryMenuByRid(String rId) {
        return menuDao.queryBindMenuByRid(rId);
    }

    //获取该二级菜单下的所有子节点
    private String getSendNodeChilds(String mId, List<Menu> menus) {
        StringBuilder sb = new StringBuilder();
        List<Menu> menuList = menus.stream().filter(m -> mId.equals(m.getpMenu())).collect(Collectors.toList());
        sb.append("<dl class=\"layui-nav-child\" >");
        for (Menu m :
                menuList) {
            sb.append("<dd ><a  url=\"" + m.getmUrl() + "\" onclick=\"tabshow(this)\" >  <img src=" + m.getmIcon() + " style=\"width: 16px;height: 16px\">" + m.getmName() + "</a></dd>\n");
        }
        sb.append("</dl>");
        return sb.toString().trim();
    }

    public List<MenuVo> changeModelToVo(List<Menu> menus) {
        MapperFactory mapperFactory = MapperFactoryUtil.initMapper();
        mapperFactory.classMap(Menu.class, MenuVo.class)
                .field("mId", "id")
                .field("pMenu", "pId")
                .field("mName", "name")
                .field("mIcon", "icon")
                .byDefault().register();
        List<MenuVo> menuVos = mapperFactory.getMapperFacade().mapAsList(menus, MenuVo.class);
        //转换成treenodes格式
        menuVos.stream().forEach(menuVo -> {
            //转换icon成相对路径
            MenuIconEnum menuIconEnum = MenuIconEnum.getEnumByType(menuVo.getIcon());
            switch (menuIconEnum) {
                case HOME_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case ANTH_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case BASICS_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case LOG_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case MENU_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case ROLE_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case USER_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
            }
            if ("0".equals(menuVo.getpId()) || "0".equals(menuVo.getId())) {
                menuVo.setOpen(true);
            }
        });
        return menuVos;
    }

    public List<MenuCheckVo> changeModelToCheckVo(List<Menu> menus) {
        MapperFactory mapperFactory = MapperFactoryUtil.initMapper();
        mapperFactory.classMap(Menu.class, MenuCheckVo.class)
                .field("mId", "id")
                .field("pMenu", "pId")
                .field("mName", "name")
                .field("mIcon", "icon")
                .field("mIcon", "icon")
                .byDefault().register();
        List<MenuCheckVo> menuCheckVos = mapperFactory.getMapperFacade().mapAsList(menus, MenuCheckVo.class);
        //转换成treenodes格式
        menuCheckVos.stream().forEach(menuVo -> {
            //转换icon成相对路径
            MenuIconEnum menuIconEnum = MenuIconEnum.getEnumByType(menuVo.getIcon());
            switch (menuIconEnum) {
                case HOME_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case ANTH_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case BASICS_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case LOG_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case MENU_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case ROLE_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
                case USER_ICON:
                    menuVo.setIcon(menuIconEnum.getPath());
                    break;
            }
            if ("0".equals(menuVo.getpId()) || "0".equals(menuVo.getId())) {
                menuVo.setOpen(true);
            }
        });
        return menuCheckVos;
    }
}
