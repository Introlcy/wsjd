package com.authority.controller;

import com.authority.entity.*;
import com.authority.entity.vo.ResultJson;
import com.authority.service.UserManageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/14
 * Time: 21:00
 */
@Controller
public class UserController {

    @Resource
    UserManageService userManageService;


    @ResponseBody
    @GetMapping("/getAllUser")
    public ResultJson getAllUser(){

        ResultJson resultJson=new ResultJson();
        List<TSysUsers> list= userManageService.getAllUser();
        resultJson.setCode(0);
        resultJson.setMsg("");
        resultJson.setCount(list.size());
        resultJson.setData(list);



        return resultJson;
    }


    @GetMapping("/usermanage")
    public String userManage(){
        return "login-user";
    }
    @ResponseBody
    @GetMapping("/getAllRoles")
    public ResultJson getAllRoles(){

        ResultJson resultJson=new ResultJson();
        List<TSysRoles> list= userManageService.getAllRoles();
        resultJson.setCode(0);
        resultJson.setMsg("");
        resultJson.setCount(list.size());
        resultJson.setData(list);
        return resultJson;
    }

    @GetMapping("/rolemanage")
    public String RoleManage(){
        return "user-role";
    }
    @GetMapping("/grantrole/{id}")
    public String grantrole(@PathVariable("id") Integer id, Model model){

        List<TSysRoles> ts= userManageService.getAllRoles();
        TSysUsersRoles tsr=userManageService.getRoleById(id);
        model.addAttribute("roles",ts);
        model.addAttribute("ownroles",id);
        model.addAttribute("tt",tsr);

        return "grant-role";
    }


    @RequestMapping("/updateUserAndRole")
    public String updateUserAndRole(TSysUsersRoles tSysUsersRoles){
        userManageService.updateUserAndRole(tSysUsersRoles);
        return "redirect:/rolemanage";
    }
    @RequestMapping("/insertSelective")
    public String insertSelective(TSysRoles tSysRoles){
        userManageService.insertSelective(tSysRoles);
        return "redirect:/rolemanage";
    }
    @RequestMapping("/addMenu")
    public String addMenu(TSysResources tSysResources){
        tSysResources.setPid(0);
        userManageService.insertSelectiveResources(tSysResources);
        return "redirect:/rolemanage";
    }


    @RequestMapping("/grantresource/{id}")
    public String grantresource(@PathVariable("id") Integer id, Model model){
        DimSearch dimSearch=new DimSearch();
        dimSearch.setRoleid(id);
        List<TSysResources> tSysResources=userManageService.selectMenu();
        model.addAttribute("roleid",id);
        model.addAttribute("menu",tSysResources);
        return "grant-resources";
    }

    @RequestMapping("/updateRoleAndResource")
    public String updateUserAndRole(TSysRolesResources tSysRolesResources){
        userManageService.updateRoleAndResource(tSysRolesResources);
        return "redirect:/grant-resources";
    }

    @RequestMapping("/editMenu/{id}")
    public String editMenu(@PathVariable("id") Integer id, Model model){
       DimSearch dimSearch=new DimSearch();
        dimSearch.setRoleid(id);
         List<TSysResources> tSysResources=userManageService.selectByPid(dimSearch);

         model.addAttribute("childMenus",tSysResources);
         model.addAttribute("Menu",id);
//        List<TSysResources> tSysResources=userManageService.selectMenu();
//        model.addAttribute("roleid",id);
//        model.addAttribute("menu",tSysResources);
        return "childMenu";
    }


    @RequestMapping("/updateChildMenu")
    public String updateChildMenu(List<TSysResources> tSysResources){

        for (TSysResources tSysResource : tSysResources) {
            userManageService.updateByPrimaryKeySelective(tSysResource);
        }

        return "childMenu";
    }



}
