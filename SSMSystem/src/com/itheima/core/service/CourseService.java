package com.itheima.core.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.*;
public interface CourseService {
	public List<course_info> selectCourse(course_info course_info);
	public course_info selectByPrimaryKey(Integer coId);
	public int selectCount(course_info record);
	public int updateByPrimaryKeySelective(course_info record);
	public int caozuocourse (Integer a ,Integer b);
	public int insertSelective(course_info record);
	public int deleteByPrimaryKey(Integer coId);
}
