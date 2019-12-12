package com.authority.controller;

import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.ResultJson;
import com.authority.entity.vo.TD0StuffVo;
import com.authority.service.HumanManageInter;
import com.authority.service.impl.HumanManageImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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

    @GetMapping("members")
    public @ResponseBody ResultJson getAllStuff(){
        ResultJson resultJson=new ResultJson();
       List<TD0StuffVo> td0StuffVos= humanManageInter.getAllStuff();
       resultJson.setCode(0);
       resultJson.setCount(td0StuffVos.size());
       resultJson.setData(td0StuffVos);
       return resultJson;
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

        TD0Stuff oldStuff= humanManageInter.getOneStuff(id);
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


}
