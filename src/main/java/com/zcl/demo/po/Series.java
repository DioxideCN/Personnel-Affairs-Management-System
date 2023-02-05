package com.zcl.demo.po;

import lombok.Data;

import java.util.Arrays;

/**
 * @author zcl
 * @create 2021/6/6 22:17
 * @desc SeriesPO类
 **/
public class Series {
    private String name;
    private String[] data;


    public Series() {
    }

    public Series(String name, String[] data) {
        this.name = name;
        this.data = data;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getData() {
        return data;
    }

    public void setData(String[] data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Series{" +
                "name='" + name + '\'' +
                ", data=" + Arrays.toString(data) +
                '}';
    }
}
