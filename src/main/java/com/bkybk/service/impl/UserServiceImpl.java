package com.bkybk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bkybk.dao.UserCategoryMapper;
import com.bkybk.dao.UserMapper;
import com.bkybk.model.User;
import com.bkybk.model.UserCategory;
import com.bkybk.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI {

	private UserMapper userMapper;
	
	private UserCategoryMapper userCategoryMapper;

	public UserCategoryMapper getUserCategoryMapper() {
		return userCategoryMapper;
	}
	@Autowired
	public void setUserCategoryMapper(UserCategoryMapper userCategoryMapper) {
		this.userCategoryMapper = userCategoryMapper;
	}

	public UserMapper getUserMapper() {
		return userMapper;
	}

	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public int save(User user) {
		int userFlag = userMapper.insertSelective(user);
		// 璇存槑:
		// 涓轰簡閰嶅悎澶氱鏂瑰紡鐨勬煡璇�鎵�互鍦ㄨ繖閲屾兂杩欏紶(User 鍜�Category 鐨勫叧绯�琛ㄤ腑鎻掑叆鏁版嵁
		// 濡傛灉鐩存帴浣跨敤user 鐨�categoryId鍘籆ategory涓仈鏌�杩欎笉闇�鎻掑叆濡備笅鏁版嵁
		UserCategory userCategory = new UserCategory();
		userCategory.setUid(user.getId());
		userCategory.setCid(user.getCategoryId());
		int userCategoryFlag = userCategoryMapper.insertSelective(userCategory);
		if(userFlag > 0 && userCategoryFlag > 0){
			return 1;
		}
		return 0;
	}

	public User getUserById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	public int updateUser(User user) {
		int userFlag = userMapper.updateByPrimaryKeySelective(user);

		UserCategory userCate = new UserCategory();
		userCate.setUid(user.getId());
		List<UserCategory> userCateList = userCategoryMapper.getUserCategoryList(userCate);
		int userCategoryFlag = 0;
		if(null != userCateList && userCateList.size() > 0){
			userCate = userCateList.get(0);
			userCate.setCid(user.getCategoryId());
			userCategoryFlag = userCategoryMapper.updateByPrimaryKeySelective(userCate);
		}
		if(userFlag > 0 && userCategoryFlag > 0){
			return 1;
		}
		return 0;
	}
	
	public int delUserById(int userId) {
		UserCategory userCate = new UserCategory();
		userCate.setUid(userId);
		List<UserCategory> userCateList = userCategoryMapper.getUserCategoryList(userCate);
		// 寮�鍒犻櫎鍏崇郴
		for (int i = 0; i < userCateList.size(); i++) {
			userCate = userCateList.get(0);
			userCategoryMapper.deleteByPrimaryKey(userCate.getId());
		}
		return userMapper.deleteByPrimaryKey(userId);
	}
	
	public List<User> getUserAll() {
		return userMapper.getAll();
	}

	public int getUserSize(User user) {
		return userMapper.getTotal(user);
	}

	public List<User> getUserList(User user) {
		return userMapper.getAll6(user);
	}
	public User getUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.selectByUser(user);
	}

}
