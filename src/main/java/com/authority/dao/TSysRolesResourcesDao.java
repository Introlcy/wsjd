package com.authority.dao;

import com.authority.entity.DimSearch;
import com.authority.entity.TSysRolesResources;

import java.util.List;

public interface TSysRolesResourcesDao {
    int insert(TSysRolesResources record);

    int insertSelective(TSysRolesResources record);
    List<TSysRolesResources> getResourcesById(DimSearch dimSearch);

    Integer updateRoleAndResource(TSysRolesResources tSysRolesResources);
    int deleteByPrimaryKey(Integer roleid);
}