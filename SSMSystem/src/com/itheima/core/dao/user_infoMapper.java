package com.itheima.core.dao;
import java.util.List;

import org.apache.ibatis.annotations.*;
import com.itheima.core.po.user_info;

public interface user_infoMapper {
    int deleteByPrimaryKey(Integer userCode);

    int insert(user_info record);

    int insertSelective(user_info record);

    user_info selectByPrimaryKey(@Param("userCode") Integer userCode , @Param("userStatus") Integer userStatus);
    
    List<user_info> selectshenhe(@Param("a") Integer a);
    
    List<user_info> userCenter(user_info record);
    
    int updateByPrimaryKeySelective(user_info record);

    int updateByPrimaryKey(user_info record);
}