package com.zcl.demo.model.menu;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author zcl
 * @create 2021/4/17 20:13
 * @desc 功能菜单树实体类
 **/
public class Menu implements Serializable {
    private static final long serialVersionUID = 2893331776391116670L;
    /**
     * 自定义主键生成策略
     */
    private String mId;

    /**
     * 菜单功能名
     */
    private String mName;


    /**
     * 上级功能编号
     */
    private String pMenu;

    /**
     * 是否用于导航（0：是 1：否）
     */
    private String isNavigtion;

    /**
     * 菜单URL
     */
    private String mUrl;

    /**
     * 菜单图标
     */
    private String mIcon;

    /**
     * 菜单顺序
     */
    private Integer mSort;

    /**
     * 菜单描述
     */
    private String mDesc;

    /**
     * 创建人
     */
    private String createUser;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 修改人
     */
    private String updateUser;

    /**
     * 修改时间
     */
    private String updateTime;

    public String getmId() {
        return mId;
    }

    public void setmId(String mId) {
        this.mId = mId;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getpMenu() {
        return pMenu;
    }

    public void setpMenu(String pMenu) {
        this.pMenu = pMenu;
    }

    public String getIsNavigtion() {
        return isNavigtion;
    }

    public void setIsNavigtion(String isNavigtion) {
        this.isNavigtion = isNavigtion;
    }

    public String getmUrl() {
        return mUrl;
    }

    public void setmUrl(String mUrl) {
        this.mUrl = mUrl;
    }

    public String getmIcon() {
        return mIcon;
    }

    public void setmIcon(String mIcon) {
        this.mIcon = mIcon;
    }

    public Integer getmSort() {
        return mSort;
    }

    public void setmSort(Integer mSort) {
        this.mSort = mSort;
    }

    public String getmDesc() {
        return mDesc;
    }

    public void setmDesc(String mDesc) {
        this.mDesc = mDesc;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }
}