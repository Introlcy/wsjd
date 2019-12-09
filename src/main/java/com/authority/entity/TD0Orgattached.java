package com.authority.entity;

import java.io.Serializable;

/**
 * t_d0_orgattached
 * @author 
 */
public class TD0Orgattached implements Serializable {
    /**
     * id
     */
    private Integer id;

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
     * 在职人数
     */
    private Integer onworkernum;

    /**
     * 卫生监督员数
     */
    private Integer supervisornum;

    /**
     * 编制人数
     */
    private Integer zbbnum;

    /**
     * 是否参公管理
     */
    private String ifpublicmanage;

    /**
     * 离退休人数
     */
    private Integer retirenum;

    /**
     * 办公用房建筑面积
     */
    private Integer officebuildarea;

    /**
     * 房屋所有权
     */
    private String buildingownership;

    /**
     * 办公用房在建面积
     */
    private Integer officebuildingarea;

    /**
     * 业务科室数
     */
    private Integer businessdivcount;

    /**
     * 职能科室数
     */
    private Integer fundivcount;

    /**
     * 派出机构数
     */
    private Integer orgcount;

    /**
     * 1万元～10万元监测仪器设备台数
     */
    private Integer equ3count;

    /**
     * ≥10万元监测仪器设备台数
     */
    private Integer equ2count;

    /**
     * ＜1万元监测仪器设备台数
     */
    private Integer equ1count;

    /**
     * 汽车数
     */
    private Integer buscount;

    /**
     * 快速检测车数
     */
    private Integer rapidtestvehiclecount;

    /**
     * 摩托车数
     */
    private Integer motorcount;

    /**
     * 照相机数
     */
    private Integer cameracount;

    /**
     * 摄像机数
     */
    private Integer videocount;

    /**
     * 复印机数
     */
    private Integer copycatnum;

    /**
     * 台式电脑数
     */
    private Integer computernum;

    /**
     * 笔记本电脑数
     */
    private Integer notepadnum;

    /**
     * 服务器数
     */
    private Integer servercount;

    /**
     * 交换机数
     */
    private Integer pbxcount;

    /**
     * 传真机数
     */
    private Integer faxcount;

    /**
     * 投影仪数
     */
    private Integer ohpcount;

    /**
     * 年份
     */
    private String yearly;

    /**
     * 录音笔数
     */
    private Integer vrcount;

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

    public Integer getOnworkernum() {
        return onworkernum;
    }

    public void setOnworkernum(Integer onworkernum) {
        this.onworkernum = onworkernum;
    }

    public Integer getSupervisornum() {
        return supervisornum;
    }

    public void setSupervisornum(Integer supervisornum) {
        this.supervisornum = supervisornum;
    }

    public Integer getZbbnum() {
        return zbbnum;
    }

    public void setZbbnum(Integer zbbnum) {
        this.zbbnum = zbbnum;
    }

    public String getIfpublicmanage() {
        return ifpublicmanage;
    }

    public void setIfpublicmanage(String ifpublicmanage) {
        this.ifpublicmanage = ifpublicmanage;
    }

    public Integer getRetirenum() {
        return retirenum;
    }

    public void setRetirenum(Integer retirenum) {
        this.retirenum = retirenum;
    }

    public Integer getOfficebuildarea() {
        return officebuildarea;
    }

    public void setOfficebuildarea(Integer officebuildarea) {
        this.officebuildarea = officebuildarea;
    }

    public String getBuildingownership() {
        return buildingownership;
    }

    public void setBuildingownership(String buildingownership) {
        this.buildingownership = buildingownership;
    }

    public Integer getOfficebuildingarea() {
        return officebuildingarea;
    }

    public void setOfficebuildingarea(Integer officebuildingarea) {
        this.officebuildingarea = officebuildingarea;
    }

    public Integer getBusinessdivcount() {
        return businessdivcount;
    }

    public void setBusinessdivcount(Integer businessdivcount) {
        this.businessdivcount = businessdivcount;
    }

    public Integer getFundivcount() {
        return fundivcount;
    }

    public void setFundivcount(Integer fundivcount) {
        this.fundivcount = fundivcount;
    }

    public Integer getOrgcount() {
        return orgcount;
    }

    public void setOrgcount(Integer orgcount) {
        this.orgcount = orgcount;
    }

    public Integer getEqu3count() {
        return equ3count;
    }

    public void setEqu3count(Integer equ3count) {
        this.equ3count = equ3count;
    }

    public Integer getEqu2count() {
        return equ2count;
    }

    public void setEqu2count(Integer equ2count) {
        this.equ2count = equ2count;
    }

    public Integer getEqu1count() {
        return equ1count;
    }

    public void setEqu1count(Integer equ1count) {
        this.equ1count = equ1count;
    }

    public Integer getBuscount() {
        return buscount;
    }

    public void setBuscount(Integer buscount) {
        this.buscount = buscount;
    }

    public Integer getRapidtestvehiclecount() {
        return rapidtestvehiclecount;
    }

    public void setRapidtestvehiclecount(Integer rapidtestvehiclecount) {
        this.rapidtestvehiclecount = rapidtestvehiclecount;
    }

    public Integer getMotorcount() {
        return motorcount;
    }

    public void setMotorcount(Integer motorcount) {
        this.motorcount = motorcount;
    }

    public Integer getCameracount() {
        return cameracount;
    }

    public void setCameracount(Integer cameracount) {
        this.cameracount = cameracount;
    }

    public Integer getVideocount() {
        return videocount;
    }

    public void setVideocount(Integer videocount) {
        this.videocount = videocount;
    }

    public Integer getCopycatnum() {
        return copycatnum;
    }

    public void setCopycatnum(Integer copycatnum) {
        this.copycatnum = copycatnum;
    }

    public Integer getComputernum() {
        return computernum;
    }

    public void setComputernum(Integer computernum) {
        this.computernum = computernum;
    }

    public Integer getNotepadnum() {
        return notepadnum;
    }

    public void setNotepadnum(Integer notepadnum) {
        this.notepadnum = notepadnum;
    }

    public Integer getServercount() {
        return servercount;
    }

    public void setServercount(Integer servercount) {
        this.servercount = servercount;
    }

    public Integer getPbxcount() {
        return pbxcount;
    }

    public void setPbxcount(Integer pbxcount) {
        this.pbxcount = pbxcount;
    }

    public Integer getFaxcount() {
        return faxcount;
    }

    public void setFaxcount(Integer faxcount) {
        this.faxcount = faxcount;
    }

    public Integer getOhpcount() {
        return ohpcount;
    }

    public void setOhpcount(Integer ohpcount) {
        this.ohpcount = ohpcount;
    }

    public String getYearly() {
        return yearly;
    }

    public void setYearly(String yearly) {
        this.yearly = yearly;
    }

    public Integer getVrcount() {
        return vrcount;
    }

    public void setVrcount(Integer vrcount) {
        this.vrcount = vrcount;
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
        TD0Orgattached other = (TD0Orgattached) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getOrgid() == null ? other.getOrgid() == null : this.getOrgid().equals(other.getOrgid()))
            && (this.getOrgname() == null ? other.getOrgname() == null : this.getOrgname().equals(other.getOrgname()))
            && (this.getOrgno() == null ? other.getOrgno() == null : this.getOrgno().equals(other.getOrgno()))
            && (this.getOrgcode() == null ? other.getOrgcode() == null : this.getOrgcode().equals(other.getOrgcode()))
            && (this.getOnworkernum() == null ? other.getOnworkernum() == null : this.getOnworkernum().equals(other.getOnworkernum()))
            && (this.getSupervisornum() == null ? other.getSupervisornum() == null : this.getSupervisornum().equals(other.getSupervisornum()))
            && (this.getZbbnum() == null ? other.getZbbnum() == null : this.getZbbnum().equals(other.getZbbnum()))
            && (this.getIfpublicmanage() == null ? other.getIfpublicmanage() == null : this.getIfpublicmanage().equals(other.getIfpublicmanage()))
            && (this.getRetirenum() == null ? other.getRetirenum() == null : this.getRetirenum().equals(other.getRetirenum()))
            && (this.getOfficebuildarea() == null ? other.getOfficebuildarea() == null : this.getOfficebuildarea().equals(other.getOfficebuildarea()))
            && (this.getBuildingownership() == null ? other.getBuildingownership() == null : this.getBuildingownership().equals(other.getBuildingownership()))
            && (this.getOfficebuildingarea() == null ? other.getOfficebuildingarea() == null : this.getOfficebuildingarea().equals(other.getOfficebuildingarea()))
            && (this.getBusinessdivcount() == null ? other.getBusinessdivcount() == null : this.getBusinessdivcount().equals(other.getBusinessdivcount()))
            && (this.getFundivcount() == null ? other.getFundivcount() == null : this.getFundivcount().equals(other.getFundivcount()))
            && (this.getOrgcount() == null ? other.getOrgcount() == null : this.getOrgcount().equals(other.getOrgcount()))
            && (this.getEqu3count() == null ? other.getEqu3count() == null : this.getEqu3count().equals(other.getEqu3count()))
            && (this.getEqu2count() == null ? other.getEqu2count() == null : this.getEqu2count().equals(other.getEqu2count()))
            && (this.getEqu1count() == null ? other.getEqu1count() == null : this.getEqu1count().equals(other.getEqu1count()))
            && (this.getBuscount() == null ? other.getBuscount() == null : this.getBuscount().equals(other.getBuscount()))
            && (this.getRapidtestvehiclecount() == null ? other.getRapidtestvehiclecount() == null : this.getRapidtestvehiclecount().equals(other.getRapidtestvehiclecount()))
            && (this.getMotorcount() == null ? other.getMotorcount() == null : this.getMotorcount().equals(other.getMotorcount()))
            && (this.getCameracount() == null ? other.getCameracount() == null : this.getCameracount().equals(other.getCameracount()))
            && (this.getVideocount() == null ? other.getVideocount() == null : this.getVideocount().equals(other.getVideocount()))
            && (this.getCopycatnum() == null ? other.getCopycatnum() == null : this.getCopycatnum().equals(other.getCopycatnum()))
            && (this.getComputernum() == null ? other.getComputernum() == null : this.getComputernum().equals(other.getComputernum()))
            && (this.getNotepadnum() == null ? other.getNotepadnum() == null : this.getNotepadnum().equals(other.getNotepadnum()))
            && (this.getServercount() == null ? other.getServercount() == null : this.getServercount().equals(other.getServercount()))
            && (this.getPbxcount() == null ? other.getPbxcount() == null : this.getPbxcount().equals(other.getPbxcount()))
            && (this.getFaxcount() == null ? other.getFaxcount() == null : this.getFaxcount().equals(other.getFaxcount()))
            && (this.getOhpcount() == null ? other.getOhpcount() == null : this.getOhpcount().equals(other.getOhpcount()))
            && (this.getYearly() == null ? other.getYearly() == null : this.getYearly().equals(other.getYearly()))
            && (this.getVrcount() == null ? other.getVrcount() == null : this.getVrcount().equals(other.getVrcount()));
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
        result = prime * result + ((getOnworkernum() == null) ? 0 : getOnworkernum().hashCode());
        result = prime * result + ((getSupervisornum() == null) ? 0 : getSupervisornum().hashCode());
        result = prime * result + ((getZbbnum() == null) ? 0 : getZbbnum().hashCode());
        result = prime * result + ((getIfpublicmanage() == null) ? 0 : getIfpublicmanage().hashCode());
        result = prime * result + ((getRetirenum() == null) ? 0 : getRetirenum().hashCode());
        result = prime * result + ((getOfficebuildarea() == null) ? 0 : getOfficebuildarea().hashCode());
        result = prime * result + ((getBuildingownership() == null) ? 0 : getBuildingownership().hashCode());
        result = prime * result + ((getOfficebuildingarea() == null) ? 0 : getOfficebuildingarea().hashCode());
        result = prime * result + ((getBusinessdivcount() == null) ? 0 : getBusinessdivcount().hashCode());
        result = prime * result + ((getFundivcount() == null) ? 0 : getFundivcount().hashCode());
        result = prime * result + ((getOrgcount() == null) ? 0 : getOrgcount().hashCode());
        result = prime * result + ((getEqu3count() == null) ? 0 : getEqu3count().hashCode());
        result = prime * result + ((getEqu2count() == null) ? 0 : getEqu2count().hashCode());
        result = prime * result + ((getEqu1count() == null) ? 0 : getEqu1count().hashCode());
        result = prime * result + ((getBuscount() == null) ? 0 : getBuscount().hashCode());
        result = prime * result + ((getRapidtestvehiclecount() == null) ? 0 : getRapidtestvehiclecount().hashCode());
        result = prime * result + ((getMotorcount() == null) ? 0 : getMotorcount().hashCode());
        result = prime * result + ((getCameracount() == null) ? 0 : getCameracount().hashCode());
        result = prime * result + ((getVideocount() == null) ? 0 : getVideocount().hashCode());
        result = prime * result + ((getCopycatnum() == null) ? 0 : getCopycatnum().hashCode());
        result = prime * result + ((getComputernum() == null) ? 0 : getComputernum().hashCode());
        result = prime * result + ((getNotepadnum() == null) ? 0 : getNotepadnum().hashCode());
        result = prime * result + ((getServercount() == null) ? 0 : getServercount().hashCode());
        result = prime * result + ((getPbxcount() == null) ? 0 : getPbxcount().hashCode());
        result = prime * result + ((getFaxcount() == null) ? 0 : getFaxcount().hashCode());
        result = prime * result + ((getOhpcount() == null) ? 0 : getOhpcount().hashCode());
        result = prime * result + ((getYearly() == null) ? 0 : getYearly().hashCode());
        result = prime * result + ((getVrcount() == null) ? 0 : getVrcount().hashCode());
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
        sb.append(", onworkernum=").append(onworkernum);
        sb.append(", supervisornum=").append(supervisornum);
        sb.append(", zbbnum=").append(zbbnum);
        sb.append(", ifpublicmanage=").append(ifpublicmanage);
        sb.append(", retirenum=").append(retirenum);
        sb.append(", officebuildarea=").append(officebuildarea);
        sb.append(", buildingownership=").append(buildingownership);
        sb.append(", officebuildingarea=").append(officebuildingarea);
        sb.append(", businessdivcount=").append(businessdivcount);
        sb.append(", fundivcount=").append(fundivcount);
        sb.append(", orgcount=").append(orgcount);
        sb.append(", equ3count=").append(equ3count);
        sb.append(", equ2count=").append(equ2count);
        sb.append(", equ1count=").append(equ1count);
        sb.append(", buscount=").append(buscount);
        sb.append(", rapidtestvehiclecount=").append(rapidtestvehiclecount);
        sb.append(", motorcount=").append(motorcount);
        sb.append(", cameracount=").append(cameracount);
        sb.append(", videocount=").append(videocount);
        sb.append(", copycatnum=").append(copycatnum);
        sb.append(", computernum=").append(computernum);
        sb.append(", notepadnum=").append(notepadnum);
        sb.append(", servercount=").append(servercount);
        sb.append(", pbxcount=").append(pbxcount);
        sb.append(", faxcount=").append(faxcount);
        sb.append(", ohpcount=").append(ohpcount);
        sb.append(", yearly=").append(yearly);
        sb.append(", vrcount=").append(vrcount);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}