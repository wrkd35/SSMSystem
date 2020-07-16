package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {
	@Autowired
	private role_infoMapper role_infoMapper;

	@Override
	public List<role_info> selectRole(Integer userType, Integer rStatus) {
		List<role_info> role = this.role_infoMapper.selectRole(userType, rStatus);
		return role;
	}

	@Override
	public List<role_info> select(Integer userType) {
		List<role_info> role = this.role_infoMapper.select(userType);
		return role;
	}

	@Override
	public int changeRstatus(Integer rStatus, Integer rId) {
		int flag = this.role_infoMapper.changeRstatus(rStatus, rId);
		return flag;
	}
}
