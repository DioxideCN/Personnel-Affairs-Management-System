package com.zcl.demo.dao.role;

import com.zcl.demo.model.role.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

/**

 * @author  zcl

 * @create  2021/2/2 18:23

 * @desc  角色dao层

 **/
@Component
public interface RoleDao {
    /**
     * 查找所有角色
     */
    public List<Role> queryAllRole() ;
    /**
     * 根据用户id获取角色
     * @param id
     */
    public Role queryRoleByUid(String id);

    /**
     * 根据名称查找角色名
     * @param rName
     * @return
     */
    public List<Role> queryRoleByRname(String rName);

    /**
     * 根据名称、创建时间查找角色
     * @param rName
     * @param createTime
     * @return
     */
    List<Role> queryRoleByRnameAndTime(@Param("rName") String rName, @Param("createTime") String createTime);

    /**
     * 根据创建时间查找角色
     * @param createTime
     * @return
     */
    List<Role> queryRoleByCreateTime(String createTime);

    /**
     * 全匹配角色名查找
     * @return
     */
    Role queryRoleByAllName(String name);

    /**
     * 新增角色
     * @param role
     */
    void addRole(Role role);

    /**
     * 修改角色
     */
    void modifyRole(Role role);

    /**
     * 根据角色id查找用户
     * @return
     */
    Role queryRoleByRid(String rId);

    /**
     * 根据角色ID删除角色
     * @param rId
     */
    void deleteById(String rId);
}
