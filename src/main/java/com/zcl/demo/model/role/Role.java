package com.zcl.demo.model.role;

import org.springframework.context.annotation.Bean;

import java.io.Serializable;

/**

 * @author  zcl

 * @create  2021/2/2 18:14

 * @desc 角色实体类

 **/
public class Role implements Serializable {
    private static final long serialVersionUID = -1388580148376174233L;
    private String rId;
    private String rName;
    private String rDesc;
    private String createTime;
    private String updateTime;
    private String createUser;

    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public String getrDesc() {
        return rDesc;
    }

    public void setrDesc(String rDesc) {
        this.rDesc = rDesc;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rId='" + rId + '\'' +
                ", rName='" + rName + '\'' +
                ", rDesc='" + rDesc + '\'' +
                ", createTime='" + createTime + '\'' +
                ", updateTime='" + updateTime + '\'' +
                ", createUser='" + createUser + '\'' +
                '}';
    }
}
