package com.authority.dao;

import com.authority.entity.TD0Stuff;

public interface TD0StuffDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Stuff record);

    int insertSelective(TD0Stuff record);

    TD0Stuff selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Stuff record);

    int updateByPrimaryKey(TD0Stuff record);
}