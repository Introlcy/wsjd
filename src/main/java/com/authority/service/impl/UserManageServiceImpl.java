package com.authority.service.impl;

import com.authority.dao.*;
import com.authority.entity.*;
import com.authority.service.UserManageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/14
 * Time: 21:09
 */
@Service
public class UserManageServiceImpl implements UserManageService {


    @Resource
    TSysResourcesDao tSysResourcesDao;
    @Resource
    TSysUsersDao tSysUsersDao;

    @Resource
    TSysRolesDao tSysRolesDao;

    @Resource
    TSysUsersRolesDao tSysUsersRolesDao;

    @Resource
    TSysRolesResourcesDao tSysRolesResourcesDao;

    @Override
    public List<TSysResources> getAllResource() {
        return tSysResourcesDao.selectResource();
    }

    @Override
    public Integer deleteByPrimaryKey(Integer userid) {
        return tSysUsersRolesDao.deleteByPrimaryKey(userid);
    }

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
        tSysUsersRolesDao.deleteByPrimaryKey(ts.getUserid());
        return tSysUsersRolesDao.insertSelective(ts);
    }

    @Override
    public List<TSysResources> getResourcesById(DimSearch dimSearch) {
        List<TSysRolesResources> tSysRolesResourcesList= tSysRolesResourcesDao.getResourcesById(dimSearch);

        List<TSysResources> tSysResources=new ArrayList<>();
        for (TSysRolesResources tSysRolesResources : tSysRolesResourcesList) {
            TSysResources tSysResources1= tSysResourcesDao.selectByPrimaryKey(tSysRolesResources.getResourceid());
            tSysResources.add(tSysResources1);
        }

        
        return tSysResources;
    }

    @Override
    public Integer updateRoleAndResource(TSysRolesResources tSysRolesResources) {

        TSysRolesResources t=new TSysRolesResources();
        tSysRolesResourcesDao.deleteByPrimaryKey(tSysRolesResources.getRoleid());
        List<Integer> resources=tSysRolesResources.getResourceids();
        t.setRoleid(tSysRolesResources.getRoleid());
        for (Integer resource : resources) {
            t.setResourceid(resource);
            tSysRolesResourcesDao.insertSelective(t);
        }

        return 0;
    }


}
