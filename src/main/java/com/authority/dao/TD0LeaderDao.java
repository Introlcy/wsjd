package com.authority.dao;

import com.authority.entity.TD0Leader;

public interface TD0LeaderDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Leader record);

    int insertSelective(TD0Leader record);

    TD0Leader selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Leader record);

    int updateByPrimaryKey(TD0Leader record);
}