package com.authority.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * t_d0_fund
 * @author 
 */
public class TD0Fund implements Serializable {
    /**
     * id
     */
    private Integer id;

    /**
     * 机构id
     */
    private Integer orgid;

    /**
     * 机构名称
     */
    private String orgname;

    /**
     * 机构的内部编码:行政区划9位+3位流水
     */
    private String orgno;

    /**
     * 机构代码
     */
    private String orgcode;

    /**
     * 年度
     */
    private String yearly;

    /**
     * 人员经费
     */
    private BigDecimal prefund;

    /**
     * 业务经费
     */
    private BigDecimal businessfund;

    /**
     * 公务费
     */
    private BigDecimal dutyfund;

    /**
     * 基本建设资金
     */
    private BigDecimal buildfund;

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

    public String getOrgname() {
        return orgname;
    }

    public void setOrgname(String orgname) {
        this.orgname = orgname;
    }

    public String getOrgno() {
        return orgno;
    }

    public void setOrgno(String orgno) {
        this.orgno = orgno;
    }

    public String getOrgcode() {
        return orgcode;
    }

    public void setOrgcode(String orgcode) {
        this.orgcode = orgcode;
    }

    public String getYearly() {
        return yearly;
    }

    public void setYearly(String yearly) {
        this.yearly = yearly;
    }

    public BigDecimal getPrefund() {
        return prefund;
    }

    public void setPrefund(BigDecimal prefund) {
        this.prefund = prefund;
    }

    public BigDecimal getBusinessfund() {
        return businessfund;
    }

    public void setBusinessfund(BigDecimal businessfund) {
        this.businessfund = businessfund;
    }

    public BigDecimal getDutyfund() {
        return dutyfund;
    }

    public void setDutyfund(BigDecimal dutyfund) {
        this.dutyfund = dutyfund;
    }

    public BigDecimal getBuildfund() {
        return buildfund;
    }

    public void setBuildfund(BigDecimal buildfund) {
        this.buildfund = buildfund;
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
        TD0Fund other = (TD0Fund) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getOrgid() == null ? other.getOrgid() == null : this.getOrgid().equals(other.getOrgid()))
            && (this.getOrgname() == null ? other.getOrgname() == null : this.getOrgname().equals(other.getOrgname()))
            && (this.getOrgno() == null ? other.getOrgno() == null : this.getOrgno().equals(other.getOrgno()))
            && (this.getOrgcode() == null ? other.getOrgcode() == null : this.getOrgcode().equals(other.getOrgcode()))
            && (this.getYearly() == null ? other.getYearly() == null : this.getYearly().equals(other.getYearly()))
            && (this.getPrefund() == null ? other.getPrefund() == null : this.getPrefund().equals(other.getPrefund()))
            && (this.getBusinessfund() == null ? other.getBusinessfund() == null : this.getBusinessfund().equals(other.getBusinessfund()))
            && (this.getDutyfund() == null ? other.getDutyfund() == null : this.getDutyfund().equals(other.getDutyfund()))
            && (this.getBuildfund() == null ? other.getBuildfund() == null : this.getBuildfund().equals(other.getBuildfund()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getOrgid() == null) ? 0 : getOrgid().hashCode());
        result = prime * result + ((getOrgname() == null) ? 0 : getOrgname().hashCode());
        result = prime * result + ((getOrgno() == null) ? 0 : getOrgno().hashCode());
        result = prime * result + ((getOrgcode() == null) ? 0 : getOrgcode().hashCode());
        result = prime * result + ((getYearly() == null) ? 0 : getYearly().hashCode());
        result = prime * result + ((getPrefund() == null) ? 0 : getPrefund().hashCode());
        result = prime * result + ((getBusinessfund() == null) ? 0 : getBusinessfund().hashCode());
        result = prime * result + ((getDutyfund() == null) ? 0 : getDutyfund().hashCode());
        result = prime * result + ((getBuildfund() == null) ? 0 : getBuildfund().hashCode());
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
        sb.append(", orgname=").append(orgname);
        sb.append(", orgno=").append(orgno);
        sb.append(", orgcode=").append(orgcode);
        sb.append(", yearly=").append(yearly);
        sb.append(", prefund=").append(prefund);
        sb.append(", businessfund=").append(businessfund);
        sb.append(", dutyfund=").append(dutyfund);
        sb.append(", buildfund=").append(buildfund);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}