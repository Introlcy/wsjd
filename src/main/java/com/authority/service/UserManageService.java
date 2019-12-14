package com.authority.service;

import com.authority.entity.TSysResources;
import com.authority.entity.TSysUsers;

import java.util.List;

/**
 * User: authority
 * Date: 2019/12/14
 * Time: 21:08
 */
public interface UserManageService {


    List<TSysUsers> getAllUser();
    List<TSysResources> getAllRoles();
}
