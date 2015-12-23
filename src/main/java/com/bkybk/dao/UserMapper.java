package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    List<User> selectByUserInfo(User user);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByUser(User user);
    
    List<User> getAll();
    
    List<User> getAll2();
    
    List<User> getAll3();
    
    List<User> getAll4();
    
    List<User> getAll5();
    
    List<User> getAll6(User user);
    
    int getTotal(User user);
}