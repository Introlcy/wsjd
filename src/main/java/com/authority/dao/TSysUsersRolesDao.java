package com.authority.dao;

import com.authority.entity.DimSearch;
import com.authority.entity.TSysUsersRoles;

public interface TSysUsersRolesDao {
    int insert(TSysUsersRoles record);

    int insertSelective(TSysUsersRoles record);

    TSysUsersRoles getRoleById(DimSearch dimSearch);
    Integer updateUserAndRole(TSysUsersRoles ts);
}