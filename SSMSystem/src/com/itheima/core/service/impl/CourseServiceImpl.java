package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("courseService")
@Transactional
public class CourseServiceImpl implements CourseService {
	@Autowired
	private course_infoMapper course_infoMapper;
	@Override
	public List<course_info> selectCourse(course_info course_info) {
		List<course_info> course = this.course_infoMapper.selectCourse(course_info);
		return course;
	}
	@Override
	public course_info selectByPrimaryKey(Integer coId) {
		course_info course = this.course_infoMapper.selectByPrimaryKey(coId);
		return course;
	}
	@Override
	public int selectCount(course_info record) {
		int count = this.course_infoMapper.selectCount(record);
		return count;
	}
	@Override
	public int updateByPrimaryKeySelective(course_info record) {
		int flag = this.course_infoMapper.updateByPrimaryKeySelective(record);
		return flag;
	}
	@Override
	public int caozuocourse(Integer a, Integer b) {
		int flag = this.course_infoMapper.caozuocourse(a, b);
		return flag;
	}
	@Override
	public int insertSelective(course_info record) {
		int flag = this.course_infoMapper.insertSelective(record);
		return flag;
	}
	@Override
	public int deleteByPrimaryKey(Integer coId) {
		int flag = this.course_infoMapper.deleteByPrimaryKey(coId);
		return flag;
	}
}
