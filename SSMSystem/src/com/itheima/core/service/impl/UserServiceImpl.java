package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private user_infoMapper user_infoMapper;
	@Override
	public user_info selectByPrimaryKey(Integer userCode , Integer userStatus) {
		user_info user = this.user_infoMapper.selectByPrimaryKey(userCode, userStatus);
		return user;
	}
	@Override
	public int insert(user_info record) {
		int flag = 0;
		flag = this.user_infoMapper.insert(record);
		return flag;
	}
	@Override
	public List<user_info> selectshenhe(Integer a) {
		List<user_info> user = this.user_infoMapper.selectshenhe(a);
		return user;
	}
	@Override
	public int updateByPrimaryKeySelective(user_info record) {
		int flag = 0;
		flag = this.user_infoMapper.updateByPrimaryKeySelective(record);
		return flag;
	}
	@Override
	public List<user_info> userCenter(user_info record) {
		List<user_info> user = this.user_infoMapper.userCenter(record);
		return user;
	}
	@Override
	public int deleteByPrimaryKey(Integer userCode) {
		int flag = 0;
		flag = this.user_infoMapper.deleteByPrimaryKey(userCode);
		return flag;
	}
	
}
