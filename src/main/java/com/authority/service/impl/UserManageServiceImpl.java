package com.authority.service.impl;

import com.authority.dao.TSysResourcesDao;
import com.authority.dao.TSysUsersDao;
import com.authority.entity.TSysResources;
import com.authority.entity.TSysUsers;
import com.authority.service.UserManageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/14
 * Time: 21:09
 */
@Service
public class UserManageServiceImpl implements UserManageService {


    @Resource
    TSysUsersDao tSysUsersDao;

    @Resource
    TSysResourcesDao tSysResourcesDao;




    @Override
    public List<TSysUsers> getAllUser() {
        return tSysUsersDao.getAllUser();
    }

    @Override
    public List<TSysResources> getAllRoles() {
        return tSysResourcesDao.getAllRoles();
    }
}
