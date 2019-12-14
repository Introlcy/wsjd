package com.authority.dao;

import com.authority.entity.TSysResources;
import com.authority.entity.TSysRoles;

import java.util.List;

public interface TSysRolesDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TSysRoles record);

    int insertSelective(TSysRoles record);

    TSysRoles selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TSysRoles record);

    int updateByPrimaryKey(TSysRoles record);
    List<TSysRoles> getAllRoles();
}