package com.authority.dao;

import com.authority.entity.TSysRolesResources;

public interface TSysRolesResourcesDao {
    int insert(TSysRolesResources record);

    int insertSelective(TSysRolesResources record);
}