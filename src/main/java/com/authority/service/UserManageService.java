package com.authority.service;

import com.authority.entity.TSysResources;
import com.authority.entity.TSysRoles;
import com.authority.entity.TSysUsers;
import com.authority.entity.TSysUsersRoles;

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
}
