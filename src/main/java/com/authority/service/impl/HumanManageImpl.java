package com.authority.service.impl;

import com.authority.dao.TD0OrganizationDao;
import com.authority.dao.TD0SectionDao;
import com.authority.dao.TD0StuffDao;
import com.authority.entity.TD0Organization;
import com.authority.entity.TD0Section;
import com.authority.entity.TD0Stuff;
import com.authority.entity.vo.SectionIdAndName;
import com.authority.entity.vo.StuffAndSidAndOid;
import com.authority.entity.vo.TD0StuffVo;
import com.authority.service.HumanManageInter;
import com.authority.util.NumToWord;
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
            String edu=td0Stuff.getEdu();

            td0StuffVo.setDegree(NumToWord.Edu(edu));

            td0StuffVo.setSection(td0Section.getDivname());
           String joblevel= td0Stuff.getJoblevel();
           td0StuffVo.setGrade(NumToWord.JobLevel(joblevel));
            String sex= td0Stuff.getGender();
            td0StuffVo.setSex(NumToWord.Sex(sex));


            td0StuffVo.setHumanCode(td0Stuff.getId());
            String job=td0Stuff.getManagejob();
            td0StuffVo.setJob(NumToWord.Job(job));
            String spe=td0Stuff.getSpe();
            td0StuffVo.setMajor(NumToWord.Spe(spe));
            td0StuffVo.setName(td0Stuff.getRepmanname());
            td0StuffVo.setOrganization(td0Organization.getOrgname());

            td0StuffVoList.add(td0StuffVo);
        }


        return td0StuffVoList;
    }


    @Override
    public TD0Stuff getOneStuff(Integer id) {
        TD0Stuff td0Stuff=td0StuffDao.selectByPrimaryKey(id);
        td0Stuff.setFolk(NumToWord.Folk(td0Stuff.getFolk()));
        td0Stuff.setGender(NumToWord.Sex(td0Stuff.getGender()));
        td0Stuff.setPol(NumToWord.Pol(td0Stuff.getPol()));
        td0Stuff.setEdu(NumToWord.Edu(td0Stuff.getEdu()));

        td0Stuff.setManagejob(NumToWord.Job(td0Stuff.getManagejob()));
        td0Stuff.setJoblevel(NumToWord.JobLevel(td0Stuff.getJoblevel()));
        td0Stuff.setTitle(NumToWord.Title(td0Stuff.getTitle()));
        td0Stuff.setPerpro(NumToWord.PerPro(td0Stuff.getPerpro()));
        td0Stuff.setPertype(NumToWord.PerType(td0Stuff.getPertype()));
        return td0Stuff;
    }

    @Override
    public TD0Stuff getOneStuffNotChange(Integer id) {
       TD0Stuff td0Stuff= td0StuffDao.selectByPrimaryKey(id);
       TD0Section td0Section=td0SectionDao.selectByPrimaryKey(td0Stuff.getSectionid());
       td0Stuff.setOrgId(td0Section.getOrgid());
       List<TD0Section> td0Sections=td0SectionDao.querySectionByOrgId(td0Section.getOrgid());

       ArrayList<SectionIdAndName> list=new ArrayList<>();
        for (TD0Section section : td0Sections) {
            SectionIdAndName sectionIdAndName=new SectionIdAndName();
            sectionIdAndName.setId(section.getId());
            sectionIdAndName.setName(section.getDivname());
            list.add(sectionIdAndName);
        }
        td0Stuff.setSec(list);
        return td0Stuff;
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

    @Override
    public Integer deleteById(Integer id) {
        return td0StuffDao.deleteByPrimaryKey(id);
    }

    @Override
    public TD0Section getOneInfo(Integer id) {

        StuffAndSidAndOid stuffAndSidAndOid=new StuffAndSidAndOid();
        TD0Stuff td0Stuff=td0StuffDao.selectByPrimaryKey(id);
        TD0Section td0Section=td0SectionDao.selectByPrimaryKey(td0Stuff.getSectionid());
        return td0Section;
    }


}
