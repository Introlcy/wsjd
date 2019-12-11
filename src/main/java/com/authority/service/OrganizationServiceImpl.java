package com.authority.service;

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
    public void insertFund(TD0Fund td0Fund) {
        td0FundDao.insert(td0Fund);
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
        td0OrgattachedDao.insertOAO(oao);
    }
}
