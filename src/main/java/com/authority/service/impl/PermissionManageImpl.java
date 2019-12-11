package com.authority.service.impl;

import com.authority.dao.PermissionManagementDao;
import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.service.PermissionManage;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/11
 * Time: 10:03
 */
@Service
public class PermissionManageImpl implements PermissionManage {


    @Resource
    PermissionManagementDao permissionManagementDao;

    @Override
    public List<Permission> getPermission(Integer id) {
        return permissionManagementDao.getPermission(id);
    }

    @Override
    public List<MenuList> getMenuList(Integer id) {
        return permissionManagementDao.getMenuList(id);
    }
}
