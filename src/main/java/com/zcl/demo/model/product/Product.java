package com.zcl.demo.model.product;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author zcl
 * @create 2021/6/5 16:46
 * @desc 商品实体类
 **/

public class Product implements Serializable {
    private static final long serialVersionUID = -2423000273249137729L;

    private String pId;
    private String pName;//商品名称
    private BigDecimal pMoney;//商品价格
    private String sId;//销量id
    private String pnId;//产量id

    public Product() {
    }

    public Product(String pId, String pName, BigDecimal pMoney, String sId, String pnId) {
        this.pId = pId;
        this.pName = pName;
        this.pMoney = pMoney;
        this.sId = sId;
        this.pnId = pnId;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public BigDecimal getpMoney() {
        return pMoney;
    }

    public void setpMoney(BigDecimal pMoney) {
        this.pMoney = pMoney;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public String getPnId() {
        return pnId;
    }

    public void setPnId(String pnId) {
        this.pnId = pnId;
    }
}
