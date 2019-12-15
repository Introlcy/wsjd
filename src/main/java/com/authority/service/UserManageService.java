package com.authority.service;

import com.authority.entity.*;

import java.util.List;

/**
 * User: authority
 * Date: 2019/12/14
 * Time: 21:08
 */
public interface UserManageService {


    List<TSysUsers> getAllUser();
    List<TSysRoles> getAllRoles();
    TSysUsersRoles getRoleById(Integer id);
    Integer updateUserAndRole(TSysUsersRoles ts);
    List<TSysResources> getResourcesById(DimSearch dimSearch);
    Integer updateRoleAndResource(TSysRolesResources tSysRolesResources);
    List<TSysResources> getAllResource();
    Integer deleteByPrimaryKey(Integer userid);
    List<TSysResources>    selectMenu();
    Integer insertSelective(TSysRoles tSysRoles);
    Integer insertSelectiveResources(TSysResources tSysResources);
    List<TSysResources> selectByPid(DimSearch dimSearch);
    Integer updateByPrimaryKeySelective(TSysResources record);
}
