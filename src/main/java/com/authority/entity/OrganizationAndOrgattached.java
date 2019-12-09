package com.authority.entity;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 20:38
 */
public class OrganizationAndOrgattached {
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

    public TD0Organization getTd0Organization() {
        return td0Organization;
    }

    public void setTd0Organization(TD0Organization td0Organization) {
        this.td0Organization = td0Organization;
    }
}
