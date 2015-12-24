package com.bkybk.action;

import java.util.Map;

import com.bkybk.model.JsonModel;
import com.bkybk.model.User;
import com.bkybk.service.UserServiceI;
import com.opensymphony.xwork2.ActionContext;

public class ContentAction extends BaseAction {
	
	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}

	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}


}
