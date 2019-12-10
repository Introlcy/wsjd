package com.authority.controller;

import com.authority.entity.TD0Section;
import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
     * 通过id查询信息
     * @param id
     * @return
     */
    @RequestMapping(value = "/office-list/{id}",method = RequestMethod.GET)
    public String selectByPrimaryKey(@PathVariable("id") Integer id,Model model){
        TD0Section section=sectionService.selectByPrimaryKey(id);
        model.addAttribute("section",section);
        return "office-edit";
    }

    /**
     * 更新信息
     * @param record
     * @return
     */
    @RequestMapping(value = "/office-list",method = RequestMethod.PUT)
    public String updateByPrimaryKey(TD0Section record){
        sectionService.updateByPrimaryKeySelective(record);
        return "redirect:/office-list";
    }

    /**
     * 添加科室
     * @param record
     * @return
     */
    @RequestMapping(value = "/office-list", method = RequestMethod.POST)
    public String insert(TD0Section record){
        sectionService.insert(record);
        return "redirect:/office-list";
    }

    /**
     * 在list页面向添加数据时，页面跳转用
     * @return
     */
    @RequestMapping(value = "/office-show", method = RequestMethod.GET)
    public String show(){
        return "office-create";
    }
}
