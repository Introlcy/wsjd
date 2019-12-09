package com.authority.dao;

import com.authority.entity.TD0Fund;

public interface TD0FundDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Fund record);

    int insertSelective(TD0Fund record);

    TD0Fund selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Fund record);

    int updateByPrimaryKey(TD0Fund record);
}