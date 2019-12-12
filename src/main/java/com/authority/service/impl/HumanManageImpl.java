package com.authority.service.impl;

import com.authority.dao.TD0OrganizationDao;
import com.authority.dao.TD0SectionDao;
import com.authority.dao.TD0StuffDao;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Section;
import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.TD0StuffVo;
import com.authority.service.HumanManageInter;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/9
 * Time: 16:57
 */
@Service
public class HumanManageImpl implements HumanManageInter {



    @Resource
    TD0StuffDao td0StuffDao;
    @Resource
    TD0SectionDao td0SectionDao;
    @Resource
    TD0OrganizationDao td0OrganizationDao;

    @Override
    public List<TD0StuffVo> getAllStuff() {

       List<TD0StuffVo> td0StuffVoList=new ArrayList<>();
       List<TD0Stuff> list=td0StuffDao.getAllStuff();
        for (TD0Stuff td0Stuff : list) {

            TD0StuffVo td0StuffVo=new TD0StuffVo();
            TD0Section td0Section=td0SectionDao.selectByPrimaryKey(td0Stuff.getSectionid());
            TD0Organization td0Organization= td0OrganizationDao.selectByPrimaryKey(td0Section.getOrgid());
            td0StuffVo.setDegree(td0Stuff.getEdu());
            td0StuffVo.setSection(td0Section.getDivname());
           String joblevel= td0Stuff.getJoblevel();
           switch (joblevel){
               case "1": joblevel="省部级正职";break;
               case "2": joblevel="省部级副职";break;
               case "3": joblevel="厅局级正职";break;
               case "4": joblevel="厅局级副职";break;
               case "5": joblevel="乡科级正职";break;
               case "6": joblevel="乡科级副职";break;
               case "7": joblevel="县处级正职";break;
               case "8": joblevel="县处级副职";break;
               case "9": joblevel="科办员";break;
               case "": joblevel="无";break;
            }

            td0StuffVo.setGrade(joblevel);
           String sex= td0Stuff.getGender();
           if(sex.equals("1")){
               sex="男";
           }
            if(sex.equals("0")){
                sex="女";
            }
            td0StuffVo.setSex(sex);
            td0StuffVo.setHumanCode(td0Stuff.getId());
            String job=td0Stuff.getManagejob();
            if(job.equals("1")){
                job="所长";
            }
            if(job.equals("2")){
                job="书记";
            }
            if(job.equals("3")){
                job="副所长";
            }
            if(job.equals("4")){
                job="副书记";
            }
            if(job.equals("5")){
                job="主任";
            }
            if(job.equals("6")){
                job="副主任";
            }
            if(job.equals("")){
                job="无";
            }
            td0StuffVo.setJob(job);
            td0StuffVo.setMajor(td0Stuff.getEdu());
            td0StuffVo.setName(td0Stuff.getRepmanname());
            td0StuffVo.setOrganization(td0Organization.getOrgname());

            td0StuffVoList.add(td0StuffVo);
        }


        return td0StuffVoList;
    }


    @Override
    public TD0Stuff getOneStuff(Integer id) {
        return td0StuffDao.selectByPrimaryKey(id);
    }

    @Override
    @Transactional
    public Integer editMember(TD0Stuff td0Stuff) {


        return td0StuffDao.updateByPrimaryKeySelective(td0Stuff);
    }
    @Override
    public Integer addMember(TD0Stuff td0Stuff){

        return td0StuffDao.insertSelective(td0Stuff);
    }


}
