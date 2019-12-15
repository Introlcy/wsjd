package com.authority.service.impl;

import com.authority.dao.TSysResourcesDao;
import com.authority.dao.TSysRolesDao;
import com.authority.dao.TSysUsersDao;
import com.authority.dao.TSysUsersRolesDao;
import com.authority.entity.*;
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
    TSysRolesDao tSysRolesDao;

    @Resource
    TSysUsersRolesDao tSysUsersRolesDao;



    @Override
    public List<TSysUsers> getAllUser() {
        return tSysUsersDao.getAllUser();
    }

    @Override
    public List<TSysRoles> getAllRoles() {
        return tSysRolesDao.getAllRoles();
    }

    @Override
    public TSysUsersRoles getRoleById(Integer id){

        DimSearch dimSearch=new DimSearch();
        dimSearch.setUserid(id);
        TSysUsersRoles ts= tSysUsersRolesDao.getRoleById(dimSearch);
        return ts;



    }
    @Override
    public Integer updateUserAndRole(TSysUsersRoles ts){
        return tSysUsersRolesDao.updateUserAndRole(ts);
    }



}
