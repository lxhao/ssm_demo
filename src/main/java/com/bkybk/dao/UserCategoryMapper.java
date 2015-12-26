package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.UserCategory;

public interface UserCategoryMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(UserCategory record);

	int insertSelective(UserCategory record);

	UserCategory selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(UserCategory record);

	int updateByPrimaryKey(UserCategory record);

	List<UserCategory> getAll();

	List<UserCategory> getUserCategoryList(UserCategory record);
}