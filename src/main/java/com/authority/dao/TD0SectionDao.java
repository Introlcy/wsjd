package com.authority.dao;

import com.authority.entity.TD0Section;

public interface TD0SectionDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Section record);

    int insertSelective(TD0Section record);

    TD0Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Section record);

    int updateByPrimaryKey(TD0Section record);
}