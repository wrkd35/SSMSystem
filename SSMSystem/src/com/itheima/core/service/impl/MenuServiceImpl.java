package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("menuService")
@Transactional
public class MenuServiceImpl implements MenuService {
	@Autowired
	private menu_infoMapper menu_infoMapper;

	@Override
	public menu_info select(Integer mId, Integer mStatus) {
		menu_info menu_info = this.menu_infoMapper.select(mId, mStatus);
		return menu_info;
	}
}
