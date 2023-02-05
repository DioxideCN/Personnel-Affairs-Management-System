package com.zcl.demo.dao.user;

import com.zcl.demo.model.user.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface UserDao {
    //根据密码，名称查找用户
    User queryUser(User user);
    //查找所有用户
    List<User> queryAll();
    //根据用户名查找用户
    List<User>  queryUserByName(String name);
    //新增用户
    void addUser(User user);
    //根据id更新用户
    void updateById(User user);
    //根据id删除用户(软删除)
    void deleteUserById(@Param("ids") String[] ids);
    //根据id查找用户
    User queryUserById(String id);
    //根据姓名全匹配查找用户
    User queryUserByAllName(String name);
    //重置密码
    void reloadPw(String uId);
    //查询所有用户
    List<User> queryAllUser();
}
