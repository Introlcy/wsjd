package com.authority.dao;

import com.authority.entity.DimSearch;
import com.authority.entity.TD0Leader;
import com.authority.entity.vo.TD0OrgAndLeader;

import java.util.List;

/**
 * @author admin
 */
public interface TD0LeaderDao {
    int deleteByPrimaryKey(Integer id);

    int insert(TD0Leader record);

    int insertSelective(TD0Leader record);

    TD0Leader selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Leader record);

    int updateByPrimaryKey(TD0Leader record);

    List<TD0OrgAndLeader> queryAOL();

    List<TD0OrgAndLeader> queryByname(DimSearch leadername);

    TD0OrgAndLeader selectLeaderByid(Integer id);
}