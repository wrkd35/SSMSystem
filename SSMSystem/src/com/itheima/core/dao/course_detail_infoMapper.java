package com.itheima.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.course_detail_info;

public interface course_detail_infoMapper {
    int deleteByPrimaryKey(Integer deId);

    int insert(course_detail_info record);

    int insertSelective(course_detail_info record);

    course_detail_info selectByPrimaryKey(Integer deId);
    
    //判断学生有没有已选这门课
    int selectstudent(course_detail_info record);
    
    List<course_detail_info> selectMycourse(course_detail_info record);
    
    List<course_detail_info> selectCourse(course_detail_info record);
    
    int updateByPrimaryKeySelective(course_detail_info record);

    int updateByPrimaryKey(course_detail_info record);
    
    int updateScore(course_detail_info record);
    
    int caozuodetail (@Param("a")Integer a ,@Param("b")Integer b);
}