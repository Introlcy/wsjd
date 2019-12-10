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
            td0StuffVo.setGrade(td0Stuff.getJoblevel());
            td0StuffVo.setSex(td0Stuff.getGender());
            td0StuffVo.setHumanCode(td0Stuff.getId());
            td0StuffVo.setJob(td0Stuff.getManagejob());
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
    public Integer editMember(TD0Stuff td0Stuff) {


        return td0StuffDao.updateByPrimaryKeySelective(td0Stuff);
    }


}
