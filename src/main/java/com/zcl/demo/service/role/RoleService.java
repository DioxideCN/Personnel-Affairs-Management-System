package com.zcl.demo.service.role;

import com.zcl.demo.model.role.Role;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**

 * @author  zcl

 * @create  2021/2/2 18:12

 * @desc  角色业务层

 **/
public interface RoleService {
    /**
     * 查询所有角色
     */
    List<Role> queryAllRole();
    /**
     * 根据用户id获取角色
     * @param id
     */
    Role queryRoleByUid(String id);

    /**
     * 动态查询
     * @param role
     * @return
     */
    List<Role> dynamicQueryRole(Role role);


    /**
     * 添加角色
     * @param role
     */
    Boolean addRole(Role role);

    /**
     * 更新角色
     * @param role
     */
    void modifyRole(Role role);

    /**
     * 根据角色id查询用户
     * @param rId
     * @return
     */
    Role queryRoleByRid(String rId);

    void deleteById(String[] rId);
}
