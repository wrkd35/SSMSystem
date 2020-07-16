package com.itheima.core.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.*;
public interface MenuService {
	menu_info select(Integer mId , Integer mStatus);
}
