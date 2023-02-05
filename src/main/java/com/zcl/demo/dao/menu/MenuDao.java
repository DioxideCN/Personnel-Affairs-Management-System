package com.zcl.demo.dao.menu;

import com.zcl.demo.model.menu.Menu;
import com.zcl.demo.vo.menu.MenuVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author zcl
 * @create 2021/4/17 21:24
 * @desc 菜单管理持久层
 **/

@Component
public interface MenuDao {
    /**
     * 查询所有菜单
     *
     * @return
     */
    List<Menu> queryAll();

    /**
     * 根据id查名称
     *
     * @param treeId
     */
    String queryNodeNameById(String treeId);

    /**
     * 添加菜单
     *
     * @param menu
     */
    void addUrl(Menu menu);

    /**
     * 删除菜单
     * @param mId
     */
    void removeUrl(String mId);

    Menu selectMenuByMid(String mId);

    void updateUrl(Menu menu);

    /**
     * 根据rid查找角色绑定菜单
     * @param rId
     */
    List<Menu> queryBindMenuByRid(String rId);

    /**
     * 根据rid删除绑定菜单
     * @param rId
     */
    void deleteBindMenvosByRid(String rId);

    /**
     * 绑定菜单
     * @param mId
     * @param rId
     */
    void insertBindMenvo(@Param("mId") String mId,@Param("rId") String rId);

    /**
     * 删除绑定菜单根据mid
     * @param mId
     */
    void removeBindUrl(String mId);
}
