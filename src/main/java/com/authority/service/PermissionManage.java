package com.authority.service;

import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.entity.TSysUsers;

import javax.swing.*;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/11
 * Time: 10:03
 */
public interface PermissionManage {

    List<Permission> getPermission(Integer id);

    List<MenuList> getMenuList(Integer id);

    int getUser(String username,String password);

    int getUserId(String username,String password);


}
