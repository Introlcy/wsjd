package com.authority.service;

import com.authority.entity.DimSearch;
import com.authority.entity.TD0Section;
import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.StuffAndSidAndOid;
import com.authority.entity.vo.TD0StuffVo;

import java.util.List;

/**
 * User: authority
 * Date: 2019/12/9
 * Time: 16:18
 */
public interface HumanManageInter {

    List<TD0StuffVo> getAllStuff();
    TD0Stuff getOneStuff(Integer id);
    TD0Stuff getOneStuffNotChange(Integer id);
    Integer editMember(TD0Stuff td0Stuff);
    Integer addMember(TD0Stuff td0Stuff);
    Integer deleteById(Integer id);
    TD0Section getOneInfo(Integer id);
    List<TD0StuffVo> dimSearch(DimSearch dimSearch);
}
