package com.authority.entity;

import java.io.Serializable;

/**
 * t_d0_section
 * @author 
 */
public class TD0Section implements Serializable {
    /**
     * id
     */
    private Integer id;

    /**
     * 机构id
     */
    private Integer orgid;

    /**
     * 科室编码
     */
    private String divcode;

    /**
     * 科室名称编码
     */
    private String divnamecode;

    /**
     * CVP01004科室名称代码
     */
    private String divname;

    /**
     * 是否为分所0=否 1=是 
     */
    private String ifsub;

    /**
     * 电话号码
     */
    private String dutytel;

    /**
     * 传真号码
     */
    private String fax;

    /**
     * 门号
     */
    private String divroomno;

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

    public String getDivcode() {
        return divcode;
    }

    public void setDivcode(String divcode) {
        this.divcode = divcode;
    }

    public String getDivnamecode() {
        return divnamecode;
    }

    public void setDivnamecode(String divnamecode) {
        this.divnamecode = divnamecode;
    }

    public String getDivname() {
        return divname;
    }

    public void setDivname(String divname) {
        this.divname = divname;
    }

    public String getIfsub() {
        return ifsub;
    }

    public void setIfsub(String ifsub) {
        this.ifsub = ifsub;
    }

    public String getDutytel() {
        return dutytel;
    }

    public void setDutytel(String dutytel) {
        this.dutytel = dutytel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getDivroomno() {
        return divroomno;
    }

    public void setDivroomno(String divroomno) {
        this.divroomno = divroomno;
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
        TD0Section other = (TD0Section) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getOrgid() == null ? other.getOrgid() == null : this.getOrgid().equals(other.getOrgid()))
            && (this.getDivcode() == null ? other.getDivcode() == null : this.getDivcode().equals(other.getDivcode()))
            && (this.getDivnamecode() == null ? other.getDivnamecode() == null : this.getDivnamecode().equals(other.getDivnamecode()))
            && (this.getDivname() == null ? other.getDivname() == null : this.getDivname().equals(other.getDivname()))
            && (this.getIfsub() == null ? other.getIfsub() == null : this.getIfsub().equals(other.getIfsub()))
            && (this.getDutytel() == null ? other.getDutytel() == null : this.getDutytel().equals(other.getDutytel()))
            && (this.getFax() == null ? other.getFax() == null : this.getFax().equals(other.getFax()))
            && (this.getDivroomno() == null ? other.getDivroomno() == null : this.getDivroomno().equals(other.getDivroomno()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getOrgid() == null) ? 0 : getOrgid().hashCode());
        result = prime * result + ((getDivcode() == null) ? 0 : getDivcode().hashCode());
        result = prime * result + ((getDivnamecode() == null) ? 0 : getDivnamecode().hashCode());
        result = prime * result + ((getDivname() == null) ? 0 : getDivname().hashCode());
        result = prime * result + ((getIfsub() == null) ? 0 : getIfsub().hashCode());
        result = prime * result + ((getDutytel() == null) ? 0 : getDutytel().hashCode());
        result = prime * result + ((getFax() == null) ? 0 : getFax().hashCode());
        result = prime * result + ((getDivroomno() == null) ? 0 : getDivroomno().hashCode());
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
        sb.append(", divcode=").append(divcode);
        sb.append(", divnamecode=").append(divnamecode);
        sb.append(", divname=").append(divname);
        sb.append(", ifsub=").append(ifsub);
        sb.append(", dutytel=").append(dutytel);
        sb.append(", fax=").append(fax);
        sb.append(", divroomno=").append(divroomno);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}