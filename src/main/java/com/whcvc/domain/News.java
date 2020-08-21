package com.whcvc.domain;

import java.io.Serializable;

public class News implements Serializable {
    private String id;
    private String name;
    private String creator;
    private String createTime;
    private String detail;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    @Override
    public String toString() {
        return "News{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", creator='" + creator + '\'' +
                ", createTime='" + createTime + '\'' +
                ", detail='" + detail + '\'' +
                '}';
    }
}
