package com.zcl.demo.model.log;

import java.io.Serializable;

public class Log implements Serializable {

    private static final long serialVersionUID = 5925249302222961923L;
    private String id;
    private String createTime;
    private String userName;
    private String action;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}
