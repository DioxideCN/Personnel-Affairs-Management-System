package com.zcl.demo.model.email;

import lombok.Data;

import java.io.Serializable;

/**

 * @author  zcl

 * @create  2021/7/3 21:39

 * @desc 信件实体类

 **/

public class Email implements Serializable {
    private static final long serialVersionUID = -1388580148346274233L;

    private String eId;
    private String eTopic;
    private String eUrl;
    private String eContent;
    private String createUser;
    private String createTime;

    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId;
    }

    public String geteTopic() {
        return eTopic;
    }

    public void seteTopic(String eTopic) {
        this.eTopic = eTopic;
    }

    public String geteUrl() {
        return eUrl;
    }

    public void seteUrl(String eUrl) {
        this.eUrl = eUrl;
    }

    public String geteContent() {
        return eContent;
    }

    public void seteContent(String eContent) {
        this.eContent = eContent;
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
}
