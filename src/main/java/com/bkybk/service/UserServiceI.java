package com.bkybk.service;

import java.util.List;

import com.bkybk.model.User;

public interface UserServiceI {

	public int save(User user);

	public List<User> getUserAll();

	public int getUserSize(User user);

	public List<User> getUserList(User user);

	public User getUserById(int userId);

	public User getUser(User user);

	public int updateUser(User user);

	public int delUserById(int userId);

}
