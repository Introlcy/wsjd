package com.authority.controller;

import com.authority.entity.TD0Section;
import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * User: wsq
 * Date: 2019/12/9
 * Time: 16:32
 */
@Controller
public class SectionController {
    @Resource
    private SectionService sectionService;

    /**
     * 查询所有科室信息
     * @param model
     * @return
     */
    @RequestMapping(value = "/office-list",method = RequestMethod.GET)
    public String queryAllSection(Model model){
        model.addAttribute("sectionlist",sectionService.queryAllSection());
        return "office-list";
    }

    /**
     * 通过id删除用户
     * @param id
     * @return
     */
    @RequestMapping(value = "/office-list/{id}",method = RequestMethod.DELETE)
    public String deleteByPrimaryKey(@PathVariable("id") Integer id){
        sectionService.deleteByPrimaryKey(id);
        return "redirect:/office-list";
    }

    /**
     * 通过id查询信息,异步方式
     * @param id
     * @return
     */
    @RequestMapping(value = "/office-list/{id}",method = RequestMethod.GET)
    @ResponseBody
    public TD0Section selectByPrimaryKey(@PathVariable("id") Integer id,Model model){
        TD0Section section=sectionService.selectByPrimaryKey(id);
//        model.addAttribute("section",section);
        return section;
    }

    /**
     * 更新信息
     * @param
     * @return
     */
    @RequestMapping(value = "/office-edit",method = RequestMethod.POST)
    public String updateByPrimaryKey(HttpServletRequest request,TD0Section section){
        Integer id= Integer.valueOf(request.getParameter("id"));
        Integer orgid= Integer.valueOf(request.getParameter("orgid"));
        String divcode= request.getParameter("divcode");
        String divnamecode= request.getParameter("divnamecode");
        String divname= request.getParameter("divname");
        String ifsub= request.getParameter("ifsub");
        String dutytel= request.getParameter("dutytel");
        String fax= request.getParameter("fax");
        String divroomno= request.getParameter("divroomno");
        section.setId(id);
        section.setOrgid(orgid);
        section.setDivcode(divcode);
        section.setDivnamecode(divnamecode);
        section.setDivname(divname);
        section.setIfsub(ifsub);
        section.setDutytel(dutytel);
        section.setFax(fax);
        section.setDivroomno(divroomno);
        //System.out.println(section.toString());
        sectionService.updateByPrimaryKey(section);
        return "redirect:/office-list";
    }

    /**
     * 添加科室
     * @param
     * @return
     */
    @RequestMapping(value = "/office-add", method = RequestMethod.POST)
    public String insert(HttpServletRequest request,TD0Section section){
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        Integer orgid= Integer.valueOf(request.getParameter("orgid"));
        String divcode= request.getParameter("divcode");
        String divnamecode= request.getParameter("divnamecode");
        String divname= request.getParameter("divname");
        String ifsub= request.getParameter("ifsub");
        String dutytel= request.getParameter("dutytel");
        String fax= request.getParameter("fax");
        String divroomno= request.getParameter("divroomno");
        section.setOrgid(orgid);
        section.setDivcode(divcode);
        section.setDivnamecode(divnamecode);
        section.setDivname(divname);
        section.setIfsub(ifsub);
        section.setDutytel(dutytel);
        section.setFax(fax);
        section.setDivroomno(divroomno);

        System.out.println(section.toString());
        sectionService.insert(section);
        return "redirect:/office-list";
    }

    /**
     * 在list页面向添加数据时，页面跳转用
     * @return
     */
    /*@RequestMapping(value = "/office-show", method = RequestMethod.GET)
    public String show(){
        return "office-create";
    }*/
}
