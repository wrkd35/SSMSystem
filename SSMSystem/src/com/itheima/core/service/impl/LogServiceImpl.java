package com.itheima.core.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;
import com.itheima.core.dao.*;
import com.itheima.core.po.*;
import com.itheima.core.service.*;
@Service("logService")
@Transactional
public class LogServiceImpl implements LogService {
	@Autowired
	private log_infoMapper log_infoMapper;

	@Override
	public int insert(log_info record) {
		int flag = this.log_infoMapper.insert(record);
		return flag;
	}

	@Override
	public List<log_info> selectAll() {
		List<log_info> log = this.log_infoMapper.selectAll();
		return log;
	}
}
