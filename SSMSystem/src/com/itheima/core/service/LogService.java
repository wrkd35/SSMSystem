package com.itheima.core.service;
import java.util.List;

import com.itheima.core.po.*;
public interface LogService {
	public int insert(log_info record);
	public List<log_info> selectAll();
}
