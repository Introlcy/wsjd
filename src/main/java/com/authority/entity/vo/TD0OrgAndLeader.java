package com.authority.entity.vo;

import com.authority.entity.TD0Organization;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * User: Introlcy
 * Date: 2019/12/12
 * Time: 16:54
 */
public class TD0OrgAndLeader {

    /**
     * id
     */
    private Integer id;

    /**
     * 机构id
     */
    private Integer orgid;

    /**
     * 领导姓名
     */
    private String leadername;

    /**
     * 性别
     */
    private String gender;

    /**
     * 民族
     */
    private String folk;

    /**
     * 出生年月
     */
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthdate;

    /**
     * 政治面貌
     */
    private String pol;

    /**
     * 学历
     */
    private String edu;

    /**
     * 学位
     */
    private String degree;

    /**
     * 职务
     */
    private String managejob;

    /**
     * 职级
     */
    private String joblevel;

    /**
     * 备注
     */
    private String memo;

    /**
     * 任职日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date serdate;

    /**
     * 离职日期
     */
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date leavedate;

    /**
     * 年份
     */
    private String yearly;

    /**
     * 填表人
     */
    private String formfillingman;

    /**
     * 填报人联系电话
     */
    private String linktel;

    private  String orgname;

    private TD0Organization td0Organization;

    public String getOrgname() {
        return td0Organization.getOrgname();
    }

    public void setOrgname(String orgname) {
        this.orgname = td0Organization.getOrgname();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrgid() {
        return orgid;
    }

    public void setOrgid(Integer orgid) {
        this.orgid = orgid;
    }

    public String getLeadername() {
        return leadername;
    }

    public void setLeadername(String leadername) {
        this.leadername = leadername;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFolk() {
        return folk;
    }

    public void setFolk(String folk) {
        this.folk = folk;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getPol() {
        return pol;
    }

    public void setPol(String pol) {
        this.pol = pol;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getManagejob() {
        return managejob;
    }

    public void setManagejob(String managejob) {
        this.managejob = managejob;
    }

    public String getJoblevel() {
        return joblevel;
    }

    public void setJoblevel(String joblevel) {
        this.joblevel = joblevel;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Date getSerdate() {
        return serdate;
    }

    public void setSerdate(Date serdate) {
        this.serdate = serdate;
    }

    public Date getLeavedate() {
        return leavedate;
    }

    public void setLeavedate(Date leavedate) {
        this.leavedate = leavedate;
    }

    public String getYearly() {
        return yearly;
    }

    public void setYearly(String yearly) {
        this.yearly = yearly;
    }

    public String getFormfillingman() {
        return formfillingman;
    }

    public void setFormfillingman(String formfillingman) {
        this.formfillingman = formfillingman;
    }

    public String getLinktel() {
        return linktel;
    }

    public void setLinktel(String linktel) {
        this.linktel = linktel;
    }

    public TD0Organization getTd0Organization() {
        return td0Organization;
    }

    public void setTd0Organization(TD0Organization td0Organization) {
        this.td0Organization = td0Organization;
    }
}
