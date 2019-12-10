package com.authority.service;

import com.authority.dao.TD0SectionDao;
import com.authority.entity.TD0Section;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: wsq
 * Date: 2019/12/9
 * Time: 16:55
 */
@Service
public class SectionServiceImpl implements SectionService {
    @Resource
    private TD0SectionDao td0SectionDao;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return td0SectionDao.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(TD0Section record) {
        return td0SectionDao.insert(record);
    }

    @Override
    public int insertSelective(TD0Section record) {
        return 0;
    }

    @Override
    public TD0Section selectByPrimaryKey(Integer id) {
        return td0SectionDao.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(TD0Section record) {
        return td0SectionDao.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(TD0Section record) {
        return td0SectionDao.updateByPrimaryKey(record);
    }

    @Override
    public List<TD0Section> queryAllSection() {
        return td0SectionDao.queryAllSection();
    }
}
