package com.authority.controller;


import com.authority.entity.vo.TD0SectionVo;
import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * User: wsq
 * Date: 2019/12/11
 * Time: 21:17
 * @author admin
 */
@Controller
public class SectionController1 {

    @Resource
    private SectionService sectionService;

    /**
     * 转发到office-layui.ftl页面
     * @return
     */
    @RequestMapping("/office")
    public String transflist(){
        return "office-layui";
    }
    /**
     * 查询所有科室信息
     * @param
     * @return
     */
    @RequestMapping(value = "/office-layui",method = RequestMethod.GET)
    @ResponseBody
    public TD0SectionVo queryAllSection(Integer page,Integer limit){
        TD0SectionVo section=new TD0SectionVo();
        section.setData(sectionService.queryAllSection(page,limit));
        section.setCode(0);
        section.setMsg("");
        section.setCount(sectionService.queryAllSection(1,1000).size());
        return section;
    }


}
