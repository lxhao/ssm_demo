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
		// 说明:
		// 为了配合多种方式的查询,所以在这里想这张(User 和 Category 的关系)表中插入数据
		// 如果直接使用user 的 categoryId去Category中联查,这不需要插入如下数据
		UserCategory userCategory = new UserCategory();
		userCategory.setUid(user.getId());
		userCategory.setCid(user.getCategoryId());
		int userCategoryFlag = userCategoryMapper.insertSelective(userCategory);
		if(userFlag > 0 && userCategoryFlag > 0){
			return 1;
		}
		return 0;
	}

	@Override
	public User getUserById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateUser(User user) {
		int userFlag = userMapper.updateByPrimaryKeySelective(user);
		// 如果关系是一对一的话,只需要更新数据即可.
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
	
	@Override
	public int delUserById(int userId) {
		UserCategory userCate = new UserCategory();
		userCate.setUid(userId);
		List<UserCategory> userCateList = userCategoryMapper.getUserCategoryList(userCate);
		// 开始删除关系
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

}
