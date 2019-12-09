package com.authority.service;

import com.authority.entity.TD0Section;

import java.util.List;

/**
 * User: wsq
 * Date: 2019/12/9
 * Time: 16:28
 */
public interface SectionService {
    /**
     * 通过id删除科室
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 插入科室
     * @param record
     * @return
     */
    int insert(TD0Section record);

    int insertSelective(TD0Section record);

    TD0Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TD0Section record);

    int updateByPrimaryKey(TD0Section record);

    /**
     * 查询所有科室
     * @return
     */
    List<TD0Section> queryAllSection();
}
