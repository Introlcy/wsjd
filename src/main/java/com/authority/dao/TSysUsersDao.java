package com.authority.dao;

import com.authority.entity.TSysUsers;

public interface TSysUsersDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TSysUsers record);

    int insertSelective(TSysUsers record);

    TSysUsers selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TSysUsers record);

    int updateByPrimaryKey(TSysUsers record);
}