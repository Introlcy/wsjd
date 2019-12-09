package com.authority.test;

import com.authority.dao.TD0StuffDao;
import com.authority.entity.TD0Stuff;
import com.authority.service.HumanManageInter;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;

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
}
