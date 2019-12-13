package com.authority.service;

import com.authority.entity.*;
import com.authority.entity.vo.TD0OrgAndFund;
import com.authority.entity.vo.TD0OrgAndLeader;

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

    List<TD0Organization> selectAllOrganization();

    /*
    根据id查询机构详细信息
     */
    OrganizationAndOrgattached selectOneOrgattached(Integer id);

    /*
    查询机构财政拨款
     */
    List<TD0Fund> selectAllFund();

    /*
    根据机构id查财政拨款
     */
    List<TD0Fund> selectFundByid(Integer id);

    /*
    添加财政拨款
     */
    void insertFund(TD0Fund td0Fund);

    /*
    财政拨款集合
     */
    List<TD0OrgAndFund> selectAllOAF();

    /*
    查询仪器设备集合
     */
    List<TD0Orgattached> selectAllOttached();

    /*
    查询监督机构基本情况
     */
    List<OrganizationAndOrgattached> selectAllOAO();

    void deleteOneOrganization(Integer id);
    /*
    添加机构和详细信息
     */
    void insertOAO(OrganizationAndOrgattached oao);
    /*
    根据id删除财政拨款
     */
    void deleteOneFundById(Integer id);
    /*
    查询机构部分信息
     */
    List<TD0Organization> selectOrgan();

    List<TD0OrgAndLeader> selectAllOAL(Integer page,Integer limit);

    void insertOneLeader(TD0Leader leader);

    void deleteLeaderById(Integer id);

    List<TD0OrgAndLeader> selectLeaderByname(Integer page,Integer limit,String leadername);

}
