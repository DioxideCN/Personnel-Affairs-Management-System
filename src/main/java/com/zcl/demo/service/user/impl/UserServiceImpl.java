package com.zcl.demo.service.user.impl;

import com.github.pagehelper.PageHelper;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.LogStatus;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.dao.user.UserDao;
import com.zcl.demo.model.log.Log;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.log.LogService;
import com.zcl.demo.service.user.UserService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    @Override
    public List<User> list(int page, int limit, String name) {
        List<User> users = null;
        PageHelper.startPage(page, limit);
        if (StringUtils.isEmpty(name)) {
            users = userDao.queryAll();
        } else {
            users = userDao.queryUserByName(name);
        }
        return users;
    }

    @Override
    public void  addUser(User user) {
        try{
            String password = user.getPassword();
            String pwByMd5 = MD5Util.EncoderByMd5(password);
            String time = DateInFo.dateFomart();
            user.setPassword(pwByMd5);
            user.setCreateTime(time);
            user.setStatus("0");
             userDao.addUser(user);
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    @Override
    public void updateUser(User user) {
        //获取当前时间
        String date = DateInFo.dateFomart();
        user.setUpdateTime(date);
        try{
            userDao.updateById(user);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void deleteUserById(String[] ids) {
        userDao.deleteUserById(ids);
    }

    @Override
    public User queryUserById(String id) {
      return   userDao.queryUserById(id);
    }

    @Override
    public User queryUserByAllName(String name) {
        User users = userDao.queryUserByAllName(name);
        return users;
    }

    @Override
    public void reloadPw(String userId) {
    userDao.reloadPw(userId);
    }

    @Override
    public List<User> queryAllUser() {
        return userDao.queryAllUser();
    }
}
