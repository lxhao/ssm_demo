package com.bkybk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bkybk.dao.UserCategoryMapper;
import com.bkybk.dao.UserMapper;
import com.bkybk.model.Content;
import com.bkybk.model.User;
import com.bkybk.model.UserCategory;
import com.bkybk.service.ContentServiceI;
import com.bkybk.service.UserServiceI;

@Service("contentService")
public class ContentServiceImpl implements ContentServiceI {

	public List<Content> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
