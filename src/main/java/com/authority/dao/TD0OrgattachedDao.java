package com.authority.dao;

import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Orgattached;

import java.util.List;

public interface TD0OrgattachedDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Orgattached record);

    int insertSelective(TD0Orgattached record);

    TD0Orgattached selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Orgattached record);

    int updateByPrimaryKey(TD0Orgattached record);

    OrganizationAndOrgattached selectOneOAO(Integer id);

    List<OrganizationAndOrgattached> selectAllOAO();

    List<TD0Orgattached> selectAllOrgattached();

    void insertOAO(OrganizationAndOrgattached oao);
}