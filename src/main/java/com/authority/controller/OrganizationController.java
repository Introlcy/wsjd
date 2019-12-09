package com.authority.controller;

import com.authority.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping(value = "/ognzx")
    public String selectAll(Model model){
        model.addAttribute("list",service.selectAllOrganization());
        return "institution-list";
    }
}
