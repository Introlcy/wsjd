package com.authority.dao;

import com.authority.entity.DimSearch;
import com.authority.entity.TD0Organization;

import java.util.List;

public interface TD0OrganizationDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Organization record);

    int insertSelective(TD0Organization record);

    TD0Organization selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Organization record);

    int updateByPrimaryKey(TD0Organization record);

    List<TD0Organization> selectAll();

    int selectIdByOrgno(String orgno);

    List<TD0Organization> selectOrgByname(DimSearch orgname);

}