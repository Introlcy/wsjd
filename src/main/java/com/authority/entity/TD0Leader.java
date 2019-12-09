package com.authority.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * t_d0_leader
 * @author 
 */
public class TD0Leader implements Serializable {
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
    private Date serdate;

    /**
     * 离职日期
     */
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

    private static final long serialVersionUID = 1L;

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

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        TD0Leader other = (TD0Leader) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getOrgid() == null ? other.getOrgid() == null : this.getOrgid().equals(other.getOrgid()))
            && (this.getLeadername() == null ? other.getLeadername() == null : this.getLeadername().equals(other.getLeadername()))
            && (this.getGender() == null ? other.getGender() == null : this.getGender().equals(other.getGender()))
            && (this.getFolk() == null ? other.getFolk() == null : this.getFolk().equals(other.getFolk()))
            && (this.getBirthdate() == null ? other.getBirthdate() == null : this.getBirthdate().equals(other.getBirthdate()))
            && (this.getPol() == null ? other.getPol() == null : this.getPol().equals(other.getPol()))
            && (this.getEdu() == null ? other.getEdu() == null : this.getEdu().equals(other.getEdu()))
            && (this.getDegree() == null ? other.getDegree() == null : this.getDegree().equals(other.getDegree()))
            && (this.getManagejob() == null ? other.getManagejob() == null : this.getManagejob().equals(other.getManagejob()))
            && (this.getJoblevel() == null ? other.getJoblevel() == null : this.getJoblevel().equals(other.getJoblevel()))
            && (this.getMemo() == null ? other.getMemo() == null : this.getMemo().equals(other.getMemo()))
            && (this.getSerdate() == null ? other.getSerdate() == null : this.getSerdate().equals(other.getSerdate()))
            && (this.getLeavedate() == null ? other.getLeavedate() == null : this.getLeavedate().equals(other.getLeavedate()))
            && (this.getYearly() == null ? other.getYearly() == null : this.getYearly().equals(other.getYearly()))
            && (this.getFormfillingman() == null ? other.getFormfillingman() == null : this.getFormfillingman().equals(other.getFormfillingman()))
            && (this.getLinktel() == null ? other.getLinktel() == null : this.getLinktel().equals(other.getLinktel()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getOrgid() == null) ? 0 : getOrgid().hashCode());
        result = prime * result + ((getLeadername() == null) ? 0 : getLeadername().hashCode());
        result = prime * result + ((getGender() == null) ? 0 : getGender().hashCode());
        result = prime * result + ((getFolk() == null) ? 0 : getFolk().hashCode());
        result = prime * result + ((getBirthdate() == null) ? 0 : getBirthdate().hashCode());
        result = prime * result + ((getPol() == null) ? 0 : getPol().hashCode());
        result = prime * result + ((getEdu() == null) ? 0 : getEdu().hashCode());
        result = prime * result + ((getDegree() == null) ? 0 : getDegree().hashCode());
        result = prime * result + ((getManagejob() == null) ? 0 : getManagejob().hashCode());
        result = prime * result + ((getJoblevel() == null) ? 0 : getJoblevel().hashCode());
        result = prime * result + ((getMemo() == null) ? 0 : getMemo().hashCode());
        result = prime * result + ((getSerdate() == null) ? 0 : getSerdate().hashCode());
        result = prime * result + ((getLeavedate() == null) ? 0 : getLeavedate().hashCode());
        result = prime * result + ((getYearly() == null) ? 0 : getYearly().hashCode());
        result = prime * result + ((getFormfillingman() == null) ? 0 : getFormfillingman().hashCode());
        result = prime * result + ((getLinktel() == null) ? 0 : getLinktel().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", orgid=").append(orgid);
        sb.append(", leadername=").append(leadername);
        sb.append(", gender=").append(gender);
        sb.append(", folk=").append(folk);
        sb.append(", birthdate=").append(birthdate);
        sb.append(", pol=").append(pol);
        sb.append(", edu=").append(edu);
        sb.append(", degree=").append(degree);
        sb.append(", managejob=").append(managejob);
        sb.append(", joblevel=").append(joblevel);
        sb.append(", memo=").append(memo);
        sb.append(", serdate=").append(serdate);
        sb.append(", leavedate=").append(leavedate);
        sb.append(", yearly=").append(yearly);
        sb.append(", formfillingman=").append(formfillingman);
        sb.append(", linktel=").append(linktel);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}