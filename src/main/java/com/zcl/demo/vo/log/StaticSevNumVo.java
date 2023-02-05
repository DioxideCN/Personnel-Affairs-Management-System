package com.zcl.demo.vo.log;

import lombok.Data;

import java.util.List;

/**
 * @author zcl
 * @create 2021/7/13 21:05
 * @desc 近七日访问vo层
 **/
@Data
public class StaticSevNumVo {
    private List<Integer> date;//日期
    private List<Integer> num;//人数
}
