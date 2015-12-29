package com.bkybk.action;

import java.util.Map;

import com.bkybk.model.JsonModel;
import com.bkybk.model.User;
import com.bkybk.service.UserServiceI;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}

	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private User user;

	public String login() {
		JsonModel j = new JsonModel();
		try {
			user = new User();
			getParams(user);
			user = userService.getUser(user);
			j.setSuccess(true);
			j.setMsg("OK");
			j.setObj(user);
			if (user != null) {
				Map<String, Object> session = ActionContext.getContext().getSession();
				session.put("user", user);
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			j.setMsg(e.getMessage());

		}
		
		if(user==null){
			return ERROR;
		}
		else if(user.getId()==4){
			return "superUser";
		}
		else 
		{
			return "login";
		}
	}
	
	public String logout() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.remove("user");
		return "logout";
		
	}
}
