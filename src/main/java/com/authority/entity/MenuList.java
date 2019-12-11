package com.authority.entity;

/**
 * User: authority
 * Date: 2019/12/11
 * Time: 13:48
 */
public class MenuList {

    Integer id;
    String resourcesName;
    String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getResourcesName() {
        return resourcesName;
    }

    public void setResourcesName(String resourcesName) {
        this.resourcesName = resourcesName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "MenuList{" +
                "id=" + id +
                ", resourcesName='" + resourcesName + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
