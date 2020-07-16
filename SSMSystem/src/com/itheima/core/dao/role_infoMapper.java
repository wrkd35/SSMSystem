package com.itheima.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.role_info;

public interface role_infoMapper {
    int deleteByPrimaryKey(Integer rId);

    int insert(role_info record);

    int insertSelective(role_info record);

    role_info selectByPrimaryKey(Integer rId);
    
    List<role_info> selectRole(@Param("userType")Integer userType , @Param("rStatus")Integer rStatus);
    
    List<role_info> select(@Param("userType")Integer userType);

    int updateByPrimaryKeySelective(role_info record);
    
    int changeRstatus(@Param("rStatus")Integer rStatus , @Param("rId")Integer rId);

    int updateByPrimaryKey(role_info record);
}