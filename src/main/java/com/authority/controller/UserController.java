package com.authority.controller;

import com.authority.entity.TSysRoles;
import com.authority.entity.TSysUsers;
import com.authority.entity.vo.ResultJson;
import com.authority.service.UserManageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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



}
