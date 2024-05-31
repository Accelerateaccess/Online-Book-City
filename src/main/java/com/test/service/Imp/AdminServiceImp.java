package com.test.service.Imp;

import com.test.dao.AdminsMapper;
import com.test.po.Admins;
import com.test.po.AdminsExample;
import com.test.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImp implements AdminService {
    @Autowired
    private AdminsMapper adminsMapper;

    @Override
    public int deleteByPrimaryKey(Integer adminid) {
        return adminsMapper.deleteByPrimaryKey(adminid);
    }

    @Override
    public int insert(Admins record) {
        return adminsMapper.insert(record);
    }

    @Override
    public int insertSelective(Admins record) {
        return adminsMapper.insertSelective(record);
    }

    @Override
    public List<Admins> selectByExample(AdminsExample example) {
        return adminsMapper.selectByExample(example);
    }

    @Override
    public Admins selectByPrimaryKey(Integer adminid) {
        return adminsMapper.selectByPrimaryKey(adminid);
    }

    @Override
    public int updateByPrimaryKeySelective(Admins record) {
        return adminsMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Admins record) {
        return adminsMapper.updateByPrimaryKey(record);
    }
}
