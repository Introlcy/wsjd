package com.authority.dao;

import com.authority.entity.TSysResources;
import com.authority.entity.vo.ResultJson;

import java.util.List;

public interface TSysResourcesDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TSysResources record);

    int insertSelective(TSysResources record);

    TSysResources selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TSysResources record);

    int updateByPrimaryKey(TSysResources record);

    List<TSysResources> selectResource();
}