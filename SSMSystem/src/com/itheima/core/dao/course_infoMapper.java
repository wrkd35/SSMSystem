package com.itheima.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.course_info;

public interface course_infoMapper {
    int deleteByPrimaryKey(Integer coId);

    int insert(course_info record);

    int insertSelective(course_info record);

    int selectCount(course_info record);
    
    course_info selectByPrimaryKey(Integer coId);
    
    List<course_info> selectCourse(course_info record);
    
    int updateByPrimaryKeySelective(course_info record);

    int updateByPrimaryKey(course_info record);
    
    int caozuocourse (@Param("a")Integer a ,@Param("b")Integer b);
}