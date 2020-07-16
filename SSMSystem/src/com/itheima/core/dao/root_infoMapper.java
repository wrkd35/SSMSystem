package com.itheima.core.dao;

import com.itheima.core.po.*;

public interface root_infoMapper {
    int deleteByPrimaryKey(Integer userCode);

    int insert(user_info record);

    int insertSelective(user_info record);

    user_info selectByPrimaryKey(Integer userCode);

    int updateByPrimaryKeySelective(user_info record);

    int updateByPrimaryKey(user_info record);
}