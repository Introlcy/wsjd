package com.authority.service;

import com.alibaba.druid.sql.dialect.oracle.ast.stmt.OracleCreateTableStatement;
import com.authority.dao.TD0FundDao;
import com.authority.dao.TD0OrganizationDao;
import com.authority.dao.TD0OrgattachedDao;
import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Fund;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Orgattached;
import com.authority.entity.vo.TD0OrgAndFund;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 17:01
 */
@Service
public class OrganizationServiceImpl implements OrganizationService {
    @Resource
    private TD0OrganizationDao td0OrganizationDao;
    @Resource
    private TD0OrgattachedDao td0OrgattachedDao;
    @Resource
    private TD0FundDao td0FundDao;

    @Override
    public List<TD0Organization> selectAllOrganization(Integer page,Integer limit) {
        PageHelper.startPage(page,limit);

        return td0OrganizationDao.selectAll();
    }

    @Override
    public OrganizationAndOrgattached selectOneOrgattached(Integer id) {
        return td0OrgattachedDao.selectOneOAO(id);
    }

    @Override
    public List<TD0Fund> selectAllFund() {
        return td0FundDao.selectAllFund();
    }

    @Override
    public List<TD0Fund> selectFundByid(Integer id) {
        return td0FundDao.selectFundByid(id);
    }

    @Override
    @Transactional
    public void insertFund(TD0Fund td0Fund) {
        td0FundDao.insertOneFund(td0Fund);
    }

    @Override
    public List<TD0OrgAndFund> selectAllOAF() {
        return td0FundDao.selectAllOAF();
    }

    @Override
    public List<TD0Orgattached> selectAllOttached() {
        return td0OrgattachedDao.selectAllOrgattached();
    }

    @Override
    public List<OrganizationAndOrgattached> selectAllOAO() {
        return td0OrgattachedDao.selectAllOAO();
    }

    @Override
    public void deleteOneOrganization(Integer id) {
        td0OrganizationDao.deleteByPrimaryKey(id);
    }

    @Override
    @Transactional
    public void insertOAO(OrganizationAndOrgattached oao) {
        TD0Organization oon = new TD0Organization();
        oon.setOrgno(oao.getOrgno());
        oon.setOrgname(oao.getTd0Organization().getOrgname());
        oon.setOrgcode(oao.getOrgcode());
        oon.setExetype(oao.getTd0Organization().getExetype());
        oon.setAreacode(oao.getTd0Organization().getAreacode());
        oon.setLinkadd(oao.getTd0Organization().getLinkadd());
        oon.setListingdate(oao.getTd0Organization().getListingdate());
        oon.setStandalonedate(oao.getTd0Organization().getStandalonedate());
        oon.setAreatype(oao.getTd0Organization().getAreatype());
        oon.setZbbdocdate(oao.getTd0Organization().getZbbdocdate());
        oon.setOrglevel(oao.getTd0Organization().getOrglevel());
        oon.setOrgpro(oao.getTd0Organization().getOrgpro());
        oon.setZipcode(oao.getTd0Organization().getZipcode());
        td0OrganizationDao.insertSelective(oon);
        Integer id = td0OrganizationDao.selectIdByOrgno(oao.getOrgno());
        TD0Orgattached od = new TD0Orgattached();
        od.setOrgid(id);
        od.setOrgname(oao.getTd0Organization().getOrgname());
        od.setOrgno(oao.getOrgno());
        od.setOrgcode(oao.getOrgcode());
        od.setOnworkernum(oao.getOnworkernum());
        od.setSupervisornum(oao.getSupervisornum());
        od.setZbbnum(oao.getZbbnum());
        od.setIfpublicmanage(oao.getIfpublicmanage());
        od.setRetirenum(oao.getRetirenum());
        od.setOfficebuildarea(oao.getOfficebuildarea());
        od.setBuildingownership(oao.getBuildingownership());
        od.setOfficebuildingarea(oao.getOfficebuildingarea());
        od.setBusinessdivcount(oao.getBusinessdivcount());
        od.setFundivcount(oao.getFundivcount());
        od.setOrgcount(oao.getOrgcount());
        od.setEqu3count(oao.getEqu3count());
        od.setEqu2count(oao.getEqu2count());
        od.setEqu1count(oao.getEqu1count());
        od.setBuscount(oao.getBuscount());
        od.setRapidtestvehiclecount(oao.getRapidtestvehiclecount());
        od.setMotorcount(oao.getMotorcount());
        od.setCameracount(oao.getCameracount());
        od.setVideocount(oao.getVideocount());
        od.setCopycatnum(oao.getCopycatnum());
        od.setComputernum(oao.getComputernum());
        od.setNotepadnum(oao.getNotepadnum());
        od.setServercount(oao.getServercount());
        od.setPbxcount(oao.getPbxcount());
        od.setFaxcount(oao.getFaxcount());
        od.setOhpcount(oao.getOhpcount());
        SimpleDateFormat data1 = new SimpleDateFormat("yyyy");
        Date date = new Date();
        String d = data1.format(date);
        od.setYearly(d);
        od.setVrcount(oao.getVrcount());
        td0OrgattachedDao.insertSelective(od);
    }

    @Override
    @Transactional
    public void deleteOneFundById(Integer id) {
        td0FundDao.deleteByPrimaryKey(id);
    }

    @Override
    public List<TD0Organization> selectOrgan() {
        return td0OrganizationDao.selectAll();
    }
}
