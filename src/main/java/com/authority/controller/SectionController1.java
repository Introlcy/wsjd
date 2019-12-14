package com.authority.controller;


import com.authority.entity.TD0Section;
import com.authority.entity.vo.TD0SectionVo;
import com.authority.service.SectionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User: wsq
 * Date: 2019/12/11
 * Time: 21:17
 *
 * @author admin
 */
@Controller
public class SectionController1 {

    @Resource
    private SectionService sectionService;

    /**
     * 转发到office-layui.ftl页面
     *
     * @return
     */
    @RequestMapping("/office")
    public String transflist() {
        return "office-layui";
    }

    /**
     * 查询所有科室信息
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/office-layui", method = RequestMethod.GET)
    @ResponseBody
    public TD0SectionVo queryAllSection(Integer page, Integer limit) {
        TD0SectionVo section = new TD0SectionVo();
        section.setData(sectionService.queryAllSection(page, limit));
        section.setCode(0);
        section.setMsg("");
        section.setCount(sectionService.queryAllSection(1, 1000).size());
        return section;
    }

    /**
     * 通过机构id查询科室
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/querySectionByOrgId", method = RequestMethod.GET)
    @ResponseBody
    public List<TD0Section> querySectionByOrgId(Integer id) {
        List<TD0Section> sectionList = sectionService.querySectionByOrgId(id);
        return sectionList;
    }

    /**
     * 通过id查询信息,异步方式
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/office/{id}", method = RequestMethod.GET)
    @ResponseBody
    public TD0Section selectByPrimaryKey(@PathVariable("id") Integer id, Model model) {
        TD0Section section = sectionService.selectByPrimaryKey(id);
        return section;
    }


    /**
     * 添加科室
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/office-add", method = RequestMethod.POST)
    public String insert(HttpServletRequest request, TD0Section section) {
        //System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        Integer orgid = Integer.valueOf(request.getParameter("orgid"));
        String divcode = request.getParameter("divcode");
        String divnamecode = request.getParameter("divnamecode");
        String divname = request.getParameter("divname");
        String ifsub = request.getParameter("ifsub");
        String dutytel = request.getParameter("dutytel");
        String fax = request.getParameter("fax");
        String divroomno = request.getParameter("divroomno");
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
}
