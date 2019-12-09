package com.authority.controller;

import com.authority.entity.OrganizationAndOrgattached;
import com.authority.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * User: Introlcy
 * Date: 2019/12/9
 * Time: 17:21
 */
@Controller
public class OrganizationController {
    @Resource
    private OrganizationService service;

    @RequestMapping(value = "/ognzx",method = RequestMethod.GET)
    public String selectAll(Model model){
        model.addAttribute("list",service.selectAllOrganization());
        return "institution-list";
    }

    @RequestMapping(value = "/ognzx/{id}",method = RequestMethod.GET)
    public String selectOneOrg(@PathVariable("id")Integer id,Model model){
        OrganizationAndOrgattached t = service.selectOneOrgattached(id);
        model.addAttribute("orgattached",t);
        return "institution-view";
    }
}
