package com.authority.controller;

import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Fund;
import com.authority.entity.vo.TD0Orgation;
import com.authority.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 17:21
 */
@Controller
public class OrganizationController {
    @Resource
    private OrganizationService service;
    //转发到institution-list.ftl页面
    @RequestMapping("/ts")
    public String transflist(){
        return "institution-list";
    }

    //查询数据展示到institution-list.ftl页面，并进行分页
    @RequestMapping(value = "/ognzx",method = RequestMethod.GET)
    @ResponseBody
    public TD0Orgation selectAll(Integer page,Integer limit){
        TD0Orgation t = new TD0Orgation() ;
        t.setData(service.selectAllOrganization(page,limit));
        t.setCode(0);
        t.setMsg("");
        t.setCount(service.selectAllOrganization(1,1000).size());
        return t;
    }

    @RequestMapping(value = "/ognzx/{id}",method = RequestMethod.GET)
    public String selectOneOrg(@PathVariable("id")Integer id,Model model){
        OrganizationAndOrgattached t = service.selectOneOrgattached(id);
        model.addAttribute("orgattached",t);
        model.addAttribute("fund",service.selectAllFund());
        return "institution-view";
    }

    @RequestMapping("/transf/{id}")
    public String transf(@PathVariable("id") Integer id,Model model){
        model.addAttribute("id",id);
        return "institution-appropriation-creat";
    }
    @RequestMapping(value = "/ognzx",method = RequestMethod.POST)
    public String insertFund(TD0Fund td0Fund){
        service.insertFund(td0Fund);
        return "redirect:/ts";
    }

    @RequestMapping(value = "/fund",method = RequestMethod.GET)
    public String selectAllOAF(Model model){
        model.addAttribute("list",service.selectAllOAF());
        return "institution-financialReport";
    }

    @RequestMapping("/ached")
    public String selectAllOrttached(Model model){
        model.addAttribute("list",service.selectAllOttached());
        return "institution-equipmentInfo";
    }

    @RequestMapping("/oao")
    public String selectAllOAO(Model model){
        model.addAttribute("list",service.selectAllOAO());
        return "institution-oversightBodies";
    }

    @RequestMapping("/toiav")
    public String transfInstiAddView(){
        return "institution-creat";
    }

    @RequestMapping("/update/{id}")
    public String transfInstiUpdateView(@PathVariable("id")Integer id,Model model){
        model.addAttribute("orgattached",service.selectOneOrgattached(id));
        return "institution-update";
    }

    @RequestMapping("/del/{id}")
    @ResponseBody
    public String delOneOrganization(@PathVariable("id") Integer id){
        service.deleteOneOrganization(id);
        return "ok";
    }

    @RequestMapping("/add")
    public String insertOAO(OrganizationAndOrgattached oao){

        service.insertOAO(oao);
        return "redirect:/ts";
    }
}
