package com.zcl.demo.vo.menu;

import lombok.Data;

/**

 * @author  zcl

 * @create  2021/4/18 14:44

 * @desc 菜单vo层

 **/
@Data
public class MenuCheckVo {
    /**
     * 菜单id
     */
    private String id;
    /**
     * 父级菜单id
     */
    private String pId;
    /**
     * 菜单名称
     */
    private String name;
    /**
     * 是否默认展开
     */
    private boolean open;

    /**
     * icon图标
     * @return
     */
    private String icon;

    /**
     * 是否选中
     * @return
     */
    private Boolean checked;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isOpen() {
        return open;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }
}
