package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("detailService")
@Transactional
public class DetailServiceImpl implements  DetailService{
	@Autowired
	private course_detail_infoMapper course_detail_infoMapper;
	@Override
	public int insertSelective(course_detail_info record) {
		int flag = this.course_detail_infoMapper.insertSelective(record);
		return flag;
	}
	@Override
	public int updateByPrimaryKeySelective(course_detail_info record) {
		int flag = this.course_detail_infoMapper.updateByPrimaryKeySelective(record);
		return flag;
	}
	@Override
	public int selectstudent(course_detail_info record) {
		int flag = this.course_detail_infoMapper.selectstudent(record);
		return flag;
	}
	@Override
	public List<course_detail_info> selectMycourse(course_detail_info record) {
		List<course_detail_info> course = this.course_detail_infoMapper.selectMycourse(record);
		return course;
	}
	@Override
	public int deleteByPrimaryKey(Integer deId) {
		int flag = this.course_detail_infoMapper.deleteByPrimaryKey(deId);
		return flag;
	}
	@Override
	public int updateScore(course_detail_info record) {
		int flag = this.course_detail_infoMapper.updateScore(record);
		return flag;
	}
	@Override
	public int caozuodetail(Integer a, Integer b) {
		int flag = this.course_detail_infoMapper.caozuodetail(a, b);
		return flag;
	}
	@Override
	public List<course_detail_info> selectCourse(course_detail_info record) {
		List<course_detail_info> course = this.course_detail_infoMapper.selectCourse(record);
		return course;
	}

}
