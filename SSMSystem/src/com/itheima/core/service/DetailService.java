package com.itheima.core.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.*;
public interface DetailService {
	public int insertSelective(course_detail_info record);
	public int updateByPrimaryKeySelective(course_detail_info record);
	public int selectstudent(course_detail_info record);
	public List<course_detail_info> selectMycourse(course_detail_info record);
	public int deleteByPrimaryKey(Integer deId);
	public int updateScore(course_detail_info record);
	public int caozuodetail (Integer a ,Integer b);
	public List<course_detail_info> selectCourse(course_detail_info record);
}
