package com.authority.service;

import com.authority.entity.TD0Organization;

import java.util.List;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 16:25
 */
public interface OrganizationService {

    List<TD0Organization> selectAllOrganization();
}
