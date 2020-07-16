package com.itheima.core.service;
import java.util.List;
import com.itheima.core.po.*;
public interface UserService{
	public user_info selectByPrimaryKey(Integer usercode , Integer userStatus);
	public int insert(user_info record);
	public List<user_info> selectshenhe(Integer a);
	public int updateByPrimaryKeySelective(user_info record);
	public List<user_info> userCenter(user_info record);
	public int deleteByPrimaryKey(Integer userCode);
}
