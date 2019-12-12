package com.authority.dao;

import com.authority.entity.TD0Fund;
import com.authority.entity.vo.TD0OrgAndFund;

import java.util.List;

/**
 * @author authority
 */
public interface TD0FundDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Fund record);

    int insertSelective(TD0Fund record);

    TD0Fund selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Fund record);

    int updateByPrimaryKey(TD0Fund record);

    List<TD0Fund> selectAllFund();

    List<TD0OrgAndFund> selectAllOAF();

    void insertOneFund(TD0Fund fund);

    List<TD0Fund> selectFundByid(Integer id);

}