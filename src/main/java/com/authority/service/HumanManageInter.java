package com.authority.service;

import com.authority.entity.TD0Stuff;
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

}
