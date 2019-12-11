package com.authority.dao;

import com.authority.entity.MenuList;
import com.authority.entity.Permission;

import java.util.List;

/**
 * User: authority
 * Date: 2019/12/11
 * Time: 9:19
 */
public interface PermissionManagementDao {

    List<Permission> getPermission(Integer id);

    List<MenuList> getMenuList(Integer id);
}
