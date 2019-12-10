package com.authority.entity.vo;

import com.authority.entity.TD0Organization;

import java.math.BigDecimal;

/**
 * User: Introlcy
 * Date: 2019/12/10
 * Time: 15:13
 */
public class TD0OrgAndFund {

    private Integer id;
    private Integer orgid;
    private String orgname;
    private String orgno;
    private String orgcode;
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

    private TD0Organization td0Organization;

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

    public TD0Organization getTd0Organization() {
        return td0Organization;
    }

    public void setTd0Organization(TD0Organization td0Organization) {
        this.td0Organization = td0Organization;
    }

    public String getYearly() {
        return yearly;
    }

    public void setYearly(String yearly) {
        this.yearly = yearly;
    }
}
