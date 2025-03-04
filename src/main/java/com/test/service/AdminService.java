package com.test.service;

import com.test.po.Admins;
import com.test.po.AdminsExample;

import java.util.List;

public interface AdminService {
    int deleteByPrimaryKey(Integer adminid);

    int insert(Admins record);

    int insertSelective(Admins record);

    List<Admins> selectByExample(AdminsExample example);

    Admins selectByPrimaryKey(Integer adminid);

    int updateByPrimaryKeySelective(Admins record);

    int updateByPrimaryKey(Admins record);
}
