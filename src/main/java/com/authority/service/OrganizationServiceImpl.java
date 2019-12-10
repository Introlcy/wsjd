package com.authority.service;

import com.authority.dao.TD0FundDao;
import com.authority.dao.TD0OrganizationDao;
import com.authority.dao.TD0OrgattachedDao;
import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Fund;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Orgattached;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;

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
}
