package com.authority.controller;

import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.entity.vo.User;
import com.authority.service.PermissionManage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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


    @RequestMapping("/login.html")
    public String loginforward(){


        return "login";
    }


    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request){

         HttpSession session= request.getSession();
         String codeImg=(String) session.getAttribute("KAPTCHA_SESSION_KEY");

        if(codeImg.equalsIgnoreCase(user.getJ_image_code())) {
         int tip=permissionManage.getUser(user.getJ_username_encrypt(), user.getJ_password_encrypt());
         int id=permissionManage.getUserId(user.getJ_username_encrypt(), user.getJ_password_encrypt());
         if (tip==1){

             HttpSession session1= request.getSession();
             session1.setAttribute("sb","loginok");
             return "redirect:/content.html/"+id;
         }
         if(tip==3){

             //用户名不存在
             return "login";
         }
            if(tip==2){
                //密码错误
                return "login";
            }
        }
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("sb");
        session.invalidate();
        return "redirect:/login.html";
    }

    @RequestMapping("/content.html/{id}")
    public String getPermission(@PathVariable("id") Integer id, Model model){


        List<Permission> permission= permissionManage.getPermission(id);
        model.addAttribute("menu",permission);
        return "inde";

    }


    @RequestMapping("/getMenuList/{id}")
    @ResponseBody
    public List<MenuList> getMenuList(@PathVariable("id") Integer id){
        return permissionManage.getMenuList(id);
    }




}
