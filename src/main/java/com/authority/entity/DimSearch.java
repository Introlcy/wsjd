package com.authority.entity;

/**
 * User: authority
 * Date: 2019/12/13
 * Time: 15:44
 */
public class DimSearch {

    String leaderName;

    String organization;

    String name;

    String org;

    Integer userid;

    Integer roleid;

    String divname;

    public String getDivname() {
        return divname;
    }

    public void setDivname(String divname) {
        this.divname = divname;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public String getLeaderName() {
        return leaderName;
    }

    public void setLeaderName(String leaderName) {
        this.leaderName = leaderName;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }
}
