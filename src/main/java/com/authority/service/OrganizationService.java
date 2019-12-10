package com.authority.service;

import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Fund;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Orgattached;

import java.util.List;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 16:25
 */
public interface OrganizationService {

    /*
    查询所有机构信息，展示到机构主页面
     */
    List<TD0Organization> selectAllOrganization(Integer page,Integer limit);

    /*
    根据id查询机构详细信息
     */
    OrganizationAndOrgattached selectOneOrgattached(Integer id);

    /*
    查询机构财政拨款
     */
    List<TD0Fund> selectAllFund();

    /*
    添加财政拨款
     */
    void insertFund(TD0Fund td0Fund);

}
