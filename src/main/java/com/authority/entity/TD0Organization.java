package com.authority.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * t_d0_organization
 * @author 
 */
public class TD0Organization implements Serializable {
    /**
     * id
     */
    private Integer id;

    /**
     * 机构的内部编码:行政区划9位+3位流水
     */
    private String orgno;

    /**
     * 机构代码
     */
    private String orgcode;

    /**
     * 机构名称
     */
    private String orgname;

    /**
     * 行政类别1：卫生监督机构；2：行政部门；3：协作单位
     */
    private String exetype;

    /**
     * 行政区划
     */
    private String areacode;

    /**
     * 地址
     */
    private String linkadd;

    /**
     * 挂牌日期
     */
    private Date listingdate;

    /**
     * 独立运行日期
     */
    private Date standalonedate;

    /**
     * 行政区类别
     */
    private String areatype;

    /**
     * 编办批文日期
     */
    private Date zbbdocdate;

    /**
     * 机构行政级别
     */
    private String orglevel;

    /**
     * 机构性质
     */
    private String orgpro;

    /**
     * 邮政编码
     */
    private String zipcode;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getOrgname() {
        return orgname;
    }

    public void setOrgname(String orgname) {
        this.orgname = orgname;
    }

    public String getExetype() {
        return exetype;
    }

    public void setExetype(String exetype) {
        this.exetype = exetype;
    }

    public String getAreacode() {
        return areacode;
    }

    public void setAreacode(String areacode) {
        this.areacode = areacode;
    }

    public String getLinkadd() {
        return linkadd;
    }

    public void setLinkadd(String linkadd) {
        this.linkadd = linkadd;
    }

    public Date getListingdate() {
        return listingdate;
    }

    public void setListingdate(Date listingdate) {
        this.listingdate = listingdate;
    }

    public Date getStandalonedate() {
        return standalonedate;
    }

    public void setStandalonedate(Date standalonedate) {
        this.standalonedate = standalonedate;
    }

    public String getAreatype() {
        return areatype;
    }

    public void setAreatype(String areatype) {
        this.areatype = areatype;
    }

    public Date getZbbdocdate() {
        return zbbdocdate;
    }

    public void setZbbdocdate(Date zbbdocdate) {
        this.zbbdocdate = zbbdocdate;
    }

    public String getOrglevel() {
        return orglevel;
    }

    public void setOrglevel(String orglevel) {
        this.orglevel = orglevel;
    }

    public String getOrgpro() {
        return orgpro;
    }

    public void setOrgpro(String orgpro) {
        this.orgpro = orgpro;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
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
        TD0Organization other = (TD0Organization) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getOrgno() == null ? other.getOrgno() == null : this.getOrgno().equals(other.getOrgno()))
            && (this.getOrgcode() == null ? other.getOrgcode() == null : this.getOrgcode().equals(other.getOrgcode()))
            && (this.getOrgname() == null ? other.getOrgname() == null : this.getOrgname().equals(other.getOrgname()))
            && (this.getExetype() == null ? other.getExetype() == null : this.getExetype().equals(other.getExetype()))
            && (this.getAreacode() == null ? other.getAreacode() == null : this.getAreacode().equals(other.getAreacode()))
            && (this.getLinkadd() == null ? other.getLinkadd() == null : this.getLinkadd().equals(other.getLinkadd()))
            && (this.getListingdate() == null ? other.getListingdate() == null : this.getListingdate().equals(other.getListingdate()))
            && (this.getStandalonedate() == null ? other.getStandalonedate() == null : this.getStandalonedate().equals(other.getStandalonedate()))
            && (this.getAreatype() == null ? other.getAreatype() == null : this.getAreatype().equals(other.getAreatype()))
            && (this.getZbbdocdate() == null ? other.getZbbdocdate() == null : this.getZbbdocdate().equals(other.getZbbdocdate()))
            && (this.getOrglevel() == null ? other.getOrglevel() == null : this.getOrglevel().equals(other.getOrglevel()))
            && (this.getOrgpro() == null ? other.getOrgpro() == null : this.getOrgpro().equals(other.getOrgpro()))
            && (this.getZipcode() == null ? other.getZipcode() == null : this.getZipcode().equals(other.getZipcode()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getOrgno() == null) ? 0 : getOrgno().hashCode());
        result = prime * result + ((getOrgcode() == null) ? 0 : getOrgcode().hashCode());
        result = prime * result + ((getOrgname() == null) ? 0 : getOrgname().hashCode());
        result = prime * result + ((getExetype() == null) ? 0 : getExetype().hashCode());
        result = prime * result + ((getAreacode() == null) ? 0 : getAreacode().hashCode());
        result = prime * result + ((getLinkadd() == null) ? 0 : getLinkadd().hashCode());
        result = prime * result + ((getListingdate() == null) ? 0 : getListingdate().hashCode());
        result = prime * result + ((getStandalonedate() == null) ? 0 : getStandalonedate().hashCode());
        result = prime * result + ((getAreatype() == null) ? 0 : getAreatype().hashCode());
        result = prime * result + ((getZbbdocdate() == null) ? 0 : getZbbdocdate().hashCode());
        result = prime * result + ((getOrglevel() == null) ? 0 : getOrglevel().hashCode());
        result = prime * result + ((getOrgpro() == null) ? 0 : getOrgpro().hashCode());
        result = prime * result + ((getZipcode() == null) ? 0 : getZipcode().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", orgno=").append(orgno);
        sb.append(", orgcode=").append(orgcode);
        sb.append(", orgname=").append(orgname);
        sb.append(", exetype=").append(exetype);
        sb.append(", areacode=").append(areacode);
        sb.append(", linkadd=").append(linkadd);
        sb.append(", listingdate=").append(listingdate);
        sb.append(", standalonedate=").append(standalonedate);
        sb.append(", areatype=").append(areatype);
        sb.append(", zbbdocdate=").append(zbbdocdate);
        sb.append(", orglevel=").append(orglevel);
        sb.append(", orgpro=").append(orgpro);
        sb.append(", zipcode=").append(zipcode);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}