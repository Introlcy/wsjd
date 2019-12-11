package com.authority.test;

import com.authority.entity.MenuList;
import com.authority.entity.Permission;
import com.authority.service.HumanManageInter;
import com.authority.service.PermissionManage;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * User: authority
 * Date: 2019/12/9
 * Time: 17:39
 */
public class ServiceTest {


    @Test
    public void sertest(){

        ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        HumanManageInter humanManageInter=ac.getBean(HumanManageInter.class);
        humanManageInter.getAllStuff();
    }
    @Test
    public void sertest1(){

        ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        PermissionManage humanManageInter=ac.getBean(PermissionManage.class);
        List<Permission> permissionVo= humanManageInter.getPermission(1);
        System.out.println(permissionVo.get(1));
    }

    @Test
    public void sertest2(){

        ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        PermissionManage humanManageInter=ac.getBean(PermissionManage.class);
        List<MenuList> permissionVo= humanManageInter.getMenuList(1);
        System.out.println(permissionVo.get(1));
    }
}
