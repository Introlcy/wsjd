package com.authority.service;

import com.authority.dao.TD0OrganizationDao;
import com.authority.entity.TD0Organization;
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

    @Override
    public List<TD0Organization> selectAllOrganization() {
        return td0OrganizationDao.selectAll();
    }
}
