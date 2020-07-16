package com.itheima.core.dao;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.menu_info;

public interface menu_infoMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(menu_info record);

    int insertSelective(menu_info record);

    menu_info selectByPrimaryKey(Integer mId);
    
    menu_info select(@Param("mId")Integer mId , @Param("mStatus")Integer mStatus);

    int updateByPrimaryKeySelective(menu_info record);

    int updateByPrimaryKey(menu_info record);
}