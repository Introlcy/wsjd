package com.authority.controller;

import com.authority.dao.TD0OrganizationDao;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Section;
import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.ResultJson;
import com.authority.entity.vo.StuffAndSidAndOid;
import com.authority.entity.vo.TD0StuffVo;
import com.authority.service.HumanManageInter;
import com.authority.service.OrganizationService;
import com.authority.service.impl.HumanManageImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/9
 * Time: 16:15
 */
@Controller
@RequestMapping("/content")
public class HumanManage {

    @Autowired
    HumanManageInter humanManageInter;

    @Autowired
    OrganizationService organizationService;

    @GetMapping("members")
    public @ResponseBody ResultJson getAllStuff(){
        ResultJson resultJson=new ResultJson();
       List<TD0StuffVo> td0StuffVos= humanManageInter.getAllStuff();
       resultJson.setCode(0);
       resultJson.setCount(td0StuffVos.size());
       resultJson.setData(td0StuffVos);
       return resultJson;
    }

    @GetMapping("member/{id}")
    public @ResponseBody TD0Section getOneStuff(@PathVariable("id") Integer id){
        return  humanManageInter.getOneInfo(id);
    }




    @GetMapping("forwardmember")
    public String forwardMember(Model model){
        List<TD0StuffVo> td0StuffVos= humanManageInter.getAllStuff();
        model.addAttribute("listMember",td0StuffVos);
        return "member-list";
    }

    @GetMapping("memberView/{id}")
    public String forwardMemView(@PathVariable("id") Integer id, Model model){

        TD0Stuff td0Stuff= humanManageInter.getOneStuff(id);
        model.addAttribute("person",td0Stuff);
        return "member-view";
    }


    @GetMapping("editMemberforward/{id}")
    public String editOne(@PathVariable("id") Integer id,Model model){

        TD0Stuff oldStuff= humanManageInter.getOneStuffNotChange(id);

        ArrayList<StuffAndSidAndOid> list=new ArrayList<>();
        List<TD0Organization>  td0Organizations= organizationService.selectAllOrganization();
        for (TD0Organization td0Organization : td0Organizations) {
            StuffAndSidAndOid stuffAndSidAndOid=new StuffAndSidAndOid();
            stuffAndSidAndOid.setId(td0Organization.getId());
            stuffAndSidAndOid.setName(td0Organization.getOrgname());
            list.add(stuffAndSidAndOid);

        }

        oldStuff.setOrg(list);
        model.addAttribute("person",oldStuff);
        return "member-edit";
    }

    @PutMapping("editMember")
    public String editPerson(TD0Stuff td0Stuff){
        humanManageInter.editMember(td0Stuff);
        return "redirect:/content/forwardmember";
    }
    @PostMapping("addMember")
    public String addPerson(TD0Stuff td0Stuff){
        humanManageInter.addMember(td0Stuff);
        return "redirect:/content/forwardmember";
    }
    @DeleteMapping("deleteMember/{id}")
    @ResponseBody
    public String deleteById(@PathVariable("id") Integer id){

        Integer num=humanManageInter.deleteById(id);
        if (num.equals(1)){
            return "ok";
        }

        else{
            return "error";
        }

    }


}
