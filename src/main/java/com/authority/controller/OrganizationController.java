package com.authority.controller;

import com.authority.entity.*;
import com.authority.entity.vo.ResultJson;
import com.authority.entity.vo.TD0OrgAndLeader;
import com.authority.entity.vo.TD0Orgation;
import com.authority.entity.vo.TD0OrgleaderJson;
import com.authority.service.OrganizationService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
        model.addAttribute("fund",service.selectFundByid(id));
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

    @RequestMapping("/delfund/{id}/{orgid}")
    public String deleteFundById(@PathVariable("id") Integer id,@PathVariable("orgid") Integer orgid){
        service.deleteOneFundById(id);
        return "redirect:/ognzx/"+orgid+"";
    }

    @RequestMapping("/find")
    @ResponseBody
    public List<TD0Organization> selectOrganization(){
        return service.selectOrgan();
    }

    @RequestMapping("/toleader")
    public String  transfleader(){
        return "leadership-list";
    }
    @RequestMapping("/ol")
    @ResponseBody
    public TD0OrgleaderJson selectAllOAL(Integer page,Integer limit){
        TD0OrgleaderJson json = new TD0OrgleaderJson();
        json.setData(service.selectAllOAL(page, limit));
        json.setCode(0);
        json.setMsg("");
        json.setCount(service.selectAllOAL(1,200).size());
        return json;
    }

    @RequestMapping("/addleader")
    public String insertLeader(TD0Leader leader){
        System.out.println(leader);
        service.insertOneLeader(leader);
        return "redirect:/toleader";
    }

    @RequestMapping(value = "/delleader/{id}",method = RequestMethod.DELETE)
    public void delLeaderByid(@PathVariable("id") Integer id){
        service.deleteLeaderById(id);
    }

    @RequestMapping("/leadername")
    @ResponseBody
    public TD0OrgleaderJson selectOALByname(Integer page,Integer limit,String orgName){
        TD0OrgleaderJson json = new TD0OrgleaderJson();
        DimSearch dimSearch=new DimSearch();
        dimSearch.setLeaderName(orgName);
        json.setData(service.selectLeaderByname(page, limit,dimSearch));
        json.setCode(0);
        json.setMsg("");
        json.setCount(service.selectAllOAL(1,200).size());
        return json;
    }

    @RequestMapping("/update")
    public String updataOrg(OrganizationAndOrgattached oao){
        service.updateOAO(oao);
        return "redirect:/ts";
    }

    @RequestMapping("/oname")
    @ResponseBody
    public TD0Orgation selectAllByname(Integer page,Integer limit,String organization){
        TD0Orgation t = new TD0Orgation() ;
        DimSearch dimSearch=new DimSearch();
        dimSearch.setOrganization(organization);
        t.setData(service.selectByorgname(page,limit,dimSearch));
        t.setCode(0);
        t.setMsg("");
        t.setCount(service.selectAllOrganization(1,1000).size());
        return t;
    }

    @RequestMapping("/upleader/{id}")
    public String updateLeader(@PathVariable("id") Integer id,Model model){
        model.addAttribute("list",service.selectLeaderByid(id));
        model.addAttribute("org",service.selectAllOrganization());
        return "leadership-update";
    }

    @RequestMapping("/updateleader")
    public String updateLeaderByid(TD0Leader leader){
        service.updateLeaderByid(leader);
        return "redirect:/toleader";
    }

    @RequestMapping("/tores")
    public String transfres(){
        return "resource";
    }
    @RequestMapping("/queryres")
    @ResponseBody
    public ResultJson queryresource(){
        return service.selectResources();
    }

    @RequestMapping(value = "/deleteres/{id}",method = RequestMethod.DELETE)
    public void delRes(@PathVariable("id") Integer id){
        service.deleteResById(id);
    }
    @RequestMapping(value = "/deleteuser/{id}",method = RequestMethod.DELETE)
    public void delUser(@PathVariable("id") Integer id){
        service.deleteUserByid(id);
    }

    @RequestMapping(value = "/deleteuserrole/{id}",method = RequestMethod.DELETE)
    public void delUserRes(@PathVariable("id") Integer id){
        service.deleteUserResById(id);
    }

    @RequestMapping(value = "/adduser",method = RequestMethod.POST)
    public String addUser(TSysUsers users){
        service.insertUser(users);
        return "redirect:/usermanage";
    }
    @RequestMapping("/upuser/{id}")
    public String upUser(@PathVariable("id") Integer id,Model model){
        model.addAttribute("user",service.selectUser(id));
        return "loginuserupdate";
    }

    @RequestMapping("/updateuser")
    public String updateUser(TSysUsers user){
        service.updateUser(user);
        return "redirect:/usermanage";
    }
}
