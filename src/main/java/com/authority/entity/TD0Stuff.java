package com.authority.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * t_d0_stuff
 * @author 
 */
public class TD0Stuff implements Serializable {
    /**
     * id
     */

    private Integer id;

    /**
     * 科室id
     */
    private Integer sectionid;

    /**
     * 人员编码
     */
    private String percode;

    /**
     * 姓名
     */
    private String repmanname;

    /**
     * 性别
     */
    private String gender;

    /**
     * 出生年月
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthdate;

    /**
     * 民族
     */
    private String folk;

    /**
     * 政治面貌
     */
    private String pol;

    /**
     * 手机
     */
    private String mobile;

    /**
     * 电话
     */
    private String worktel;

    /**
     * 电子邮件
     */
    private String email;

    /**
     * 学历
     */
    private String edu;

    /**
     * 毕业学校
     */
    private String gracollege;

    /**
     * 所选专业
     */
    private String choicespe;

    /**
     * 所学专业类型
     */
    private String spe;

    /**
     * 建所前从事专业
     */
    private String beforespe;

    /**
     * 何时参加工作
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date beginworkdate;

    /**
     * 职务
     */
    private String managejob;

    /**
     * 职级
     */
    private String joblevel;

    /**
     * 职称
     */
    private String title;

    /**
     * 何时进卫生监督所
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date getindate;

    /**
     * 人员性质
     */
    private String perpro;

    /**
     * 类型
     */
    private String pertype;

    /**
     * 行政执法证号
     */
    private String enfcardno;

    /**
     * 何时取得行政执法证
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date getcarddate;

    /**
     * 卫生监督胸牌号
     */
    private String healthperno;

    /**
     * 何时取得卫生监督员资格
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date getquadate;

    /**
     * 目前持有有效的监督员证号
     */
    private String healthcardno;

    /**
     * 目前所持有效监督员证的有效时间
     */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date cardday;

    /**
     * 是否为在编人员
     */
    private String ifstaffper;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSectionid() {
        return sectionid;
    }

    public void setSectionid(Integer sectionid) {
        this.sectionid = sectionid;
    }

    public String getPercode() {
        return percode;
    }

    public void setPercode(String percode) {
        this.percode = percode;
    }

    public String getRepmanname() {
        return repmanname;
    }

    public void setRepmanname(String repmanname) {
        this.repmanname = repmanname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getFolk() {
        return folk;
    }

    public void setFolk(String folk) {
        this.folk = folk;
    }

    public String getPol() {
        return pol;
    }

    public void setPol(String pol) {
        this.pol = pol;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getWorktel() {
        return worktel;
    }

    public void setWorktel(String worktel) {
        this.worktel = worktel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }

    public String getGracollege() {
        return gracollege;
    }

    public void setGracollege(String gracollege) {
        this.gracollege = gracollege;
    }

    public String getChoicespe() {
        return choicespe;
    }

    public void setChoicespe(String choicespe) {
        this.choicespe = choicespe;
    }

    public String getSpe() {
        return spe;
    }

    public void setSpe(String spe) {
        this.spe = spe;
    }

    public String getBeforespe() {
        return beforespe;
    }

    public void setBeforespe(String beforespe) {
        this.beforespe = beforespe;
    }

    public Date getBeginworkdate() {
        return beginworkdate;
    }

    public void setBeginworkdate(Date beginworkdate) {
        this.beginworkdate = beginworkdate;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getGetindate() {
        return getindate;
    }

    public void setGetindate(Date getindate) {
        this.getindate = getindate;
    }

    public String getPerpro() {
        return perpro;
    }

    public void setPerpro(String perpro) {
        this.perpro = perpro;
    }

    public String getPertype() {
        return pertype;
    }

    public void setPertype(String pertype) {
        this.pertype = pertype;
    }

    public String getEnfcardno() {
        return enfcardno;
    }

    public void setEnfcardno(String enfcardno) {
        this.enfcardno = enfcardno;
    }

    public Date getGetcarddate() {
        return getcarddate;
    }

    public void setGetcarddate(Date getcarddate) {
        this.getcarddate = getcarddate;
    }

    public String getHealthperno() {
        return healthperno;
    }

    public void setHealthperno(String healthperno) {
        this.healthperno = healthperno;
    }

    public Date getGetquadate() {
        return getquadate;
    }

    public void setGetquadate(Date getquadate) {
        this.getquadate = getquadate;
    }

    public String getHealthcardno() {
        return healthcardno;
    }

    public void setHealthcardno(String healthcardno) {
        this.healthcardno = healthcardno;
    }

    public Date getCardday() {
        return cardday;
    }

    public void setCardday(Date cardday) {
        this.cardday = cardday;
    }

    public String getIfstaffper() {
        return ifstaffper;
    }

    public void setIfstaffper(String ifstaffper) {
        this.ifstaffper = ifstaffper;
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
        TD0Stuff other = (TD0Stuff) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getSectionid() == null ? other.getSectionid() == null : this.getSectionid().equals(other.getSectionid()))
            && (this.getPercode() == null ? other.getPercode() == null : this.getPercode().equals(other.getPercode()))
            && (this.getRepmanname() == null ? other.getRepmanname() == null : this.getRepmanname().equals(other.getRepmanname()))
            && (this.getGender() == null ? other.getGender() == null : this.getGender().equals(other.getGender()))
            && (this.getBirthdate() == null ? other.getBirthdate() == null : this.getBirthdate().equals(other.getBirthdate()))
            && (this.getFolk() == null ? other.getFolk() == null : this.getFolk().equals(other.getFolk()))
            && (this.getPol() == null ? other.getPol() == null : this.getPol().equals(other.getPol()))
            && (this.getMobile() == null ? other.getMobile() == null : this.getMobile().equals(other.getMobile()))
            && (this.getWorktel() == null ? other.getWorktel() == null : this.getWorktel().equals(other.getWorktel()))
            && (this.getEmail() == null ? other.getEmail() == null : this.getEmail().equals(other.getEmail()))
            && (this.getEdu() == null ? other.getEdu() == null : this.getEdu().equals(other.getEdu()))
            && (this.getGracollege() == null ? other.getGracollege() == null : this.getGracollege().equals(other.getGracollege()))
            && (this.getChoicespe() == null ? other.getChoicespe() == null : this.getChoicespe().equals(other.getChoicespe()))
            && (this.getSpe() == null ? other.getSpe() == null : this.getSpe().equals(other.getSpe()))
            && (this.getBeforespe() == null ? other.getBeforespe() == null : this.getBeforespe().equals(other.getBeforespe()))
            && (this.getBeginworkdate() == null ? other.getBeginworkdate() == null : this.getBeginworkdate().equals(other.getBeginworkdate()))
            && (this.getManagejob() == null ? other.getManagejob() == null : this.getManagejob().equals(other.getManagejob()))
            && (this.getJoblevel() == null ? other.getJoblevel() == null : this.getJoblevel().equals(other.getJoblevel()))
            && (this.getTitle() == null ? other.getTitle() == null : this.getTitle().equals(other.getTitle()))
            && (this.getGetindate() == null ? other.getGetindate() == null : this.getGetindate().equals(other.getGetindate()))
            && (this.getPerpro() == null ? other.getPerpro() == null : this.getPerpro().equals(other.getPerpro()))
            && (this.getPertype() == null ? other.getPertype() == null : this.getPertype().equals(other.getPertype()))
            && (this.getEnfcardno() == null ? other.getEnfcardno() == null : this.getEnfcardno().equals(other.getEnfcardno()))
            && (this.getGetcarddate() == null ? other.getGetcarddate() == null : this.getGetcarddate().equals(other.getGetcarddate()))
            && (this.getHealthperno() == null ? other.getHealthperno() == null : this.getHealthperno().equals(other.getHealthperno()))
            && (this.getGetquadate() == null ? other.getGetquadate() == null : this.getGetquadate().equals(other.getGetquadate()))
            && (this.getHealthcardno() == null ? other.getHealthcardno() == null : this.getHealthcardno().equals(other.getHealthcardno()))
            && (this.getCardday() == null ? other.getCardday() == null : this.getCardday().equals(other.getCardday()))
            && (this.getIfstaffper() == null ? other.getIfstaffper() == null : this.getIfstaffper().equals(other.getIfstaffper()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getSectionid() == null) ? 0 : getSectionid().hashCode());
        result = prime * result + ((getPercode() == null) ? 0 : getPercode().hashCode());
        result = prime * result + ((getRepmanname() == null) ? 0 : getRepmanname().hashCode());
        result = prime * result + ((getGender() == null) ? 0 : getGender().hashCode());
        result = prime * result + ((getBirthdate() == null) ? 0 : getBirthdate().hashCode());
        result = prime * result + ((getFolk() == null) ? 0 : getFolk().hashCode());
        result = prime * result + ((getPol() == null) ? 0 : getPol().hashCode());
        result = prime * result + ((getMobile() == null) ? 0 : getMobile().hashCode());
        result = prime * result + ((getWorktel() == null) ? 0 : getWorktel().hashCode());
        result = prime * result + ((getEmail() == null) ? 0 : getEmail().hashCode());
        result = prime * result + ((getEdu() == null) ? 0 : getEdu().hashCode());
        result = prime * result + ((getGracollege() == null) ? 0 : getGracollege().hashCode());
        result = prime * result + ((getChoicespe() == null) ? 0 : getChoicespe().hashCode());
        result = prime * result + ((getSpe() == null) ? 0 : getSpe().hashCode());
        result = prime * result + ((getBeforespe() == null) ? 0 : getBeforespe().hashCode());
        result = prime * result + ((getBeginworkdate() == null) ? 0 : getBeginworkdate().hashCode());
        result = prime * result + ((getManagejob() == null) ? 0 : getManagejob().hashCode());
        result = prime * result + ((getJoblevel() == null) ? 0 : getJoblevel().hashCode());
        result = prime * result + ((getTitle() == null) ? 0 : getTitle().hashCode());
        result = prime * result + ((getGetindate() == null) ? 0 : getGetindate().hashCode());
        result = prime * result + ((getPerpro() == null) ? 0 : getPerpro().hashCode());
        result = prime * result + ((getPertype() == null) ? 0 : getPertype().hashCode());
        result = prime * result + ((getEnfcardno() == null) ? 0 : getEnfcardno().hashCode());
        result = prime * result + ((getGetcarddate() == null) ? 0 : getGetcarddate().hashCode());
        result = prime * result + ((getHealthperno() == null) ? 0 : getHealthperno().hashCode());
        result = prime * result + ((getGetquadate() == null) ? 0 : getGetquadate().hashCode());
        result = prime * result + ((getHealthcardno() == null) ? 0 : getHealthcardno().hashCode());
        result = prime * result + ((getCardday() == null) ? 0 : getCardday().hashCode());
        result = prime * result + ((getIfstaffper() == null) ? 0 : getIfstaffper().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", sectionid=").append(sectionid);
        sb.append(", percode=").append(percode);
        sb.append(", repmanname=").append(repmanname);
        sb.append(", gender=").append(gender);
        sb.append(", birthdate=").append(birthdate);
        sb.append(", folk=").append(folk);
        sb.append(", pol=").append(pol);
        sb.append(", mobile=").append(mobile);
        sb.append(", worktel=").append(worktel);
        sb.append(", email=").append(email);
        sb.append(", edu=").append(edu);
        sb.append(", gracollege=").append(gracollege);
        sb.append(", choicespe=").append(choicespe);
        sb.append(", spe=").append(spe);
        sb.append(", beforespe=").append(beforespe);
        sb.append(", beginworkdate=").append(beginworkdate);
        sb.append(", managejob=").append(managejob);
        sb.append(", joblevel=").append(joblevel);
        sb.append(", title=").append(title);
        sb.append(", getindate=").append(getindate);
        sb.append(", perpro=").append(perpro);
        sb.append(", pertype=").append(pertype);
        sb.append(", enfcardno=").append(enfcardno);
        sb.append(", getcarddate=").append(getcarddate);
        sb.append(", healthperno=").append(healthperno);
        sb.append(", getquadate=").append(getquadate);
        sb.append(", healthcardno=").append(healthcardno);
        sb.append(", cardday=").append(cardday);
        sb.append(", ifstaffper=").append(ifstaffper);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}