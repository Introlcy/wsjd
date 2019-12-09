package com.authority.controller;

import com.authority.entity.vo.TD0StuffVo;
import com.authority.service.HumanManageInter;
import com.authority.service.impl.HumanManageImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/9
 * Time: 16:15
 */
@Controller
@RequestMapping("/content")
public class HumanManage {

    @Autowired
    HumanManageInter humanManageInter;

    @RequestMapping("members")
    public @ResponseBody List<TD0StuffVo> getAllStuff(){
       List<TD0StuffVo> td0StuffVos= humanManageInter.getAllStuff();
       return td0StuffVos;
    }



}
