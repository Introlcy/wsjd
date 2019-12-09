package com.authority.controller;

import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * User: wsq
 * Date: 2019/12/9
 * Time: 16:32
 */
@Controller
public class SectionController {
    @Resource
    private SectionService sectionService;

    @RequestMapping(value = "office-list",method = RequestMethod.GET)
    public String officeList(Model model){
        model.addAttribute("sectionlist",sectionService.queryAllSection());
        return "office-list";
    }
}
