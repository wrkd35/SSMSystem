package com.itheima.core.dao;

import java.util.List;

import com.itheima.core.po.log_info;

public interface log_infoMapper {
    int deleteByPrimaryKey(Integer logId);

    int insert(log_info record);

    int insertSelective(log_info record);

    log_info selectByPrimaryKey(Integer logId);
    
    List<log_info> selectAll();
    
    int updateByPrimaryKeySelective(log_info record);

    int updateByPrimaryKey(log_info record);
}