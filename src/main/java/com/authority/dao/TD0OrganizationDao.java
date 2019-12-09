package com.authority.dao;

import com.authority.entity.TD0Organization;

public interface TD0OrganizationDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Organization record);

    int insertSelective(TD0Organization record);

    TD0Organization selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Organization record);

    int updateByPrimaryKey(TD0Organization record);
}