package com.zcl.demo.vo.product;

import com.zcl.demo.po.Series;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author zcl
 * @create 2021/6/6 21:52
 * @desc Echars图标vo类
 **/
@Data
public class EcharsVo implements Serializable {
    //pName
    private String pName;
    //x轴
    private String[] xAxisData;
    //前台对象数组接收
    private List<Series> seriesList;
}
