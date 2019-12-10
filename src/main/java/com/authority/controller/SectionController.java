package com.authority.controller;

import com.authority.entity.TD0Section;
import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
    public String officeList(Model model){
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
}
