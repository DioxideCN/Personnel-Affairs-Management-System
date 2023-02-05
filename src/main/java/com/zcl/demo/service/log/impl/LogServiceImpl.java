package com.zcl.demo.service.log.impl;

import com.github.pagehelper.PageHelper;
import com.zcl.demo.common.status.LogStatus;
import com.zcl.demo.dao.log.LogDao;
import com.zcl.demo.dao.user.UserDao;
import com.zcl.demo.model.log.Log;
import com.zcl.demo.model.user.User;
import com.zcl.demo.service.log.LogService;
import com.zcl.demo.util.DateInFo;
import com.zcl.demo.vo.log.StaticSevNumVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private LogDao logDao;
    @Autowired
    private UserDao userDao;

    @Override
    public List<Log> queryAll() {
        return logDao.queryAll();
    }

    @Override
    public void addLog(Log log) {
        logDao.addLog(log);
    }

    @Override
    public User UserLogCheck(User user) {
        User user1 = userDao.queryUser(user);
        return user1;
    }

    @Override
    public int logout(HttpSession httpSession) {
        String status = (String) httpSession.getAttribute("status");
        if ("登录".equals(status)) {//退出成功
            // httpSession.invalidate();
            return 0;//
        } else {//退出失败
            return 1;
        }
    }

    @Override
    public List<Log> query(int page, int limit, String name, String date) {
        List<Log> list = new ArrayList<>();
        PageHelper.startPage(page, limit);
        if (!StringUtils.isEmpty(name) && !StringUtils.isEmpty(date)) {
            list = logDao.queryByNameAndDate(name, date);
        } else if (StringUtils.isEmpty(name) && !StringUtils.isEmpty(date)) {
            list = logDao.queryByDate(date);
        } else if (!StringUtils.isEmpty(name) && StringUtils.isEmpty(date)) {
            list = logDao.queryByName(name);
        } else {
            list = logDao.queryAll();
        }
        return list;
    }

    @Override
    public String statisNowDayPnum() {
        String s = DateInFo.dateFomart();
        String nowDate = s.substring(0, 8);
        String num = logDao.statisNowDayPnum(nowDate);
        return num;
    }

    @Override
    public List<Log> funLogQuery(int page, int limit, String userName, String createTime) {
        PageHelper.startPage(page, limit);
        List<Log> logs = logDao.funLogQuery(userName, createTime);
        return logs;
    }

    @Override
    public StaticSevNumVo staticSenvenDayLog() {
        StaticSevNumVo sevNumVo = new StaticSevNumVo();
        List<String> dates = dateBeforSenven();
        List<String> nums=new ArrayList<>();
        for (String date :
                dates) {
            String num = logDao.statisNowDayPnum(date);
            nums.add(num);
        }
        ArrayList<Integer> realdates = dates.stream().map(date -> Integer.parseInt(date)).collect(Collectors.toCollection(ArrayList::new));
        ArrayList<Integer> realnums = nums.stream().map(num -> Integer.parseInt(num)).collect(Collectors.toCollection(ArrayList::new));

        Collections.reverse(realdates);
        Collections.reverse(realnums);
        sevNumVo.setDate(realdates);
        sevNumVo.setNum(realnums);
        return sevNumVo;

    }

    //获取近七天
    public List<String> dateBeforSenven() {
        List<String> list = new ArrayList<>();
        //获取今天
        String s = DateInFo.dateFomart();
        list.add(s.substring(0,8));
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        Calendar calendar = Calendar.getInstance();
        for (int i = 0; i <6; i++) {
            calendar.setTime(new Date());
            calendar.add(Calendar.DATE, -(i+1));
            Date time = calendar.getTime();
            String day = format.format(time);
            list.add(day);
        }
        return list;
    }


}
