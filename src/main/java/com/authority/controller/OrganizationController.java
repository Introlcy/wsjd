package com.authority.controller;

import com.authority.entity.OrganizationAndOrgattached;
import com.authority.entity.TD0Fund;
import com.authority.entity.vo.TD0Orgation;
import com.authority.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
        t.setCount(service.selectAllOrganization(1,100000).size());
        return t;
    }

    @RequestMapping(value = "/ognzx/{id}",method = RequestMethod.GET)
    public String selectOneOrg(@PathVariable("id")Integer id,Model model){
        OrganizationAndOrgattached t = service.selectOneOrgattached(id);
        model.addAttribute("orgattached",t);
        model.addAttribute("fund",service.selectAllFund());
        return "institution-view";
    }

    @RequestMapping("/transf")
    public String transf(){
        return "institution-appropriation-creat";
    }
    @RequestMapping(value = "/ognzx",method = RequestMethod.POST)
    public String insertFund(TD0Fund td0Fund){
        service.insertFund(td0Fund);
        return "redirect:/ognzx/"+ td0Fund.getOrgid();
    }
}
