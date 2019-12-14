package com.authority.dao;

import com.authority.entity.TSysUsers;

import java.util.List;

public interface TSysUsersDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TSysUsers record);

    int insertSelective(TSysUsers record);

    TSysUsers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TSysUsers record);

    int updateByPrimaryKey(TSysUsers record);

    TSysUsers selectByUserName(String username);
    List<TSysUsers> getAllUser();
}