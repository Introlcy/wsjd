package com.authority.service.impl;

import com.authority.dao.PermissionManagementDao;
import com.authority.dao.TSysUsersDao;
import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.entity.TSysUsers;
import com.authority.service.PermissionManage;
import com.authority.util.MD5Util;
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

    @Resource
    TSysUsersDao tSysUsersDao;

    @Override
    public List<Permission> getPermission(Integer id) {
        return permissionManagementDao.getPermission(id);
    }

    @Override
    public List<MenuList> getMenuList(Integer id) {
        return permissionManagementDao.getMenuList(id);
    }

    @Override
    public int getUser(String username,String password) {
         TSysUsers tSysUsers= tSysUsersDao.selectByUserName(username);
        String md5Pwd = MD5Util.toMD5(password);
         if(tSysUsers!=null) {
             if (md5Pwd.equals(tSysUsers.getPassword())) {
                 return 1;
             }
             return 2;
         }
         return 3;
    }
    @Override
    public int getUserId(String username, String password) {
        TSysUsers tSysUsers= tSysUsersDao.selectByUserName(username);
        if (tSysUsers==null){
            return 0;
        }
        return tSysUsers.getId();
    }
}
