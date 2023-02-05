package com.zcl.demo.service.role.impl;

import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.dao.role.RoleDao;
import com.zcl.demo.model.role.Role;
import com.zcl.demo.service.role.RoleService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> queryAllRole() {

        List<Role> roles = roleDao.queryAllRole();
        return roles;
    }

    @Override
    public Role queryRoleByUid(String id) {
        Role role = roleDao.queryRoleByUid(id);
        return role;
    }

    @Override
    public List<Role> dynamicQueryRole(Role role) {
        String name = role.getrName();
        String createTime = null;
        String time = null;
        List<Role> roles;
        if (StringUtil.isNotEmpty(role.getCreateTime())) {
            createTime=role.getCreateTime();
            time = createTime.replace("-", "");
        }
        if (StringUtil.isNotEmpty(name) && StringUtil.isNotEmpty(createTime)) {
            roles = roleDao.queryRoleByRnameAndTime(name, time);
        } else if (StringUtil.isNotEmpty(name) && StringUtil.isEmpty(createTime)) {
            roles = roleDao.queryRoleByRname(name);
        } else if (StringUtil.isEmpty(name) && StringUtil.isNotEmpty(createTime)) {
            roles = roleDao.queryRoleByCreateTime(time);
        } else {
            roles = roleDao.queryAllRole();
        }
        return roles;
    }

    @Override
    public Boolean addRole(Role role) {
        Role role_after = roleDao.queryRoleByAllName(role.getrName());
        boolean flag = false;
        if (role_after == null) {
            String now_time = DateInFo.dateFomart();
            String userName = (String) SessionUtil.getSessionAttribute("userName");
            role.setCreateTime(now_time);
            role.setCreateUser(userName);
            roleDao.addRole(role);
            flag = true;
        }
        return flag;
    }

    @Override
    public void modifyRole(Role role) {
        String s = DateInFo.dateFomart();
        role.setUpdateTime(s);
        roleDao.modifyRole(role);
    }

    @Override
    public Role queryRoleByRid(String rId) {
        return roleDao.queryRoleByRid(rId);
    }

    @Override
    public void deleteById(String[] rId) {
        for (String id:
             rId) {
            roleDao.deleteById(id);
        }
    }

}
