package com.authority.controller;

import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.service.PermissionManage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/11
 * Time: 10:24
 */
@Controller
public class PermissionController {

    @Resource
    PermissionManage permissionManage;





    @RequestMapping("/index.html")
    public String getPermission(Integer id, Model model){


        List<Permission> permission= permissionManage.getPermission(1);
        model.addAttribute("menu",permission);
        return "inde";

    }


    @RequestMapping("/getMenuList/{id}")
    @ResponseBody
    public List<MenuList> getMenuList(@PathVariable("id") Integer id){
        return permissionManage.getMenuList(id);
    }




}
