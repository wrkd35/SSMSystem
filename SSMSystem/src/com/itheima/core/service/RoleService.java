package com.itheima.core.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.*;
public interface RoleService {
	List<role_info> selectRole(Integer userType , Integer rStatus);
	List<role_info> select(Integer userType);
	int changeRstatus(Integer rStatus , Integer rId);
}
