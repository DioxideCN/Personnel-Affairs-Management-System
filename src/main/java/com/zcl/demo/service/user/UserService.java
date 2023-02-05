package com.zcl.demo.service.user;

import com.zcl.demo.model.user.User;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public interface UserService {
    //根据条件动态查询所有
    List<User> list(int page,int limit,String name);
    //新增用户
    void addUser(User user);

    void updateUser(User user);

    void deleteUserById(String[] ids);

    User queryUserById(String id);
    //根据全匹配姓名查找用户
    User queryUserByAllName(String name);
    //重置密码
    void reloadPw(String userId);
    //查询所有用户
    List<User> queryAllUser();
}
