package com.authority.dao;

import com.authority.entity.TSysResources;

public interface TSysResourcesDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TSysResources record);

    int insertSelective(TSysResources record);

    TSysResources selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TSysResources record);

    int updateByPrimaryKey(TSysResources record);
}