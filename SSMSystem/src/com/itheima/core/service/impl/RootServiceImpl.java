package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("rootService")
@Transactional
public class RootServiceImpl implements RootService {
	@Autowired
	private root_infoMapper root_infoMapper;
	@Override
	public user_info selectByPrimaryKey(Integer userCode) {
		user_info root_info = this.root_infoMapper.selectByPrimaryKey(userCode);
		return root_info;
	}

}
