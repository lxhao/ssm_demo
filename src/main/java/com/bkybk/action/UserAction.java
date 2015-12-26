package com.bkybk.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bkybk.model.JsonModel;
import com.bkybk.model.Ucategory;
import com.bkybk.model.User;
import com.bkybk.service.CategoryServiceI;
import com.bkybk.service.UserServiceI;

public class UserAction extends BaseAction {

	private static final long serialVersionUID = -3675623781845348379L;

	private UserServiceI userService;

	private CategoryServiceI categoryService;

	private List<User> userList;

	private User user;

	private List<Ucategory> categoryList;

	public String execute() {
		return SUCCESS;
	}

	public String getUserAll() {
		JsonModel j = new JsonModel();
		try {
			user = new User();
			getParams(user);
			user.setSort("user.id");
			user.setOrder("desc");
			userList = userService.getUserList(user);
			user.setTotal(userService.getUserSize(user));
			int totalPageNum = user.getTotal() / user.getRows();
			if (user.getTotal() % user.getRows() > 0) {
				totalPageNum++;
			}
			user.setTotalPage(totalPageNum);
			j.setSuccess(true);
			j.setMsg("OK");
			j.setObj(userList);
		} catch (Exception e) {
			System.out.println(e);
			j.setMsg(e.getMessage());
		}
		// super.writeJson(j);
		return "userList";
	}

	public String addUser() {
		categoryList = categoryService.getAll();
		return "add";
	}

	public String editUser() {
		categoryList = categoryService.getAll();
		user = new User();
		getParams(user);
		user = userService.getUserById(user.getId());
		return "add";
	}

	public String saveOrUpdate() {
		user = new User();
		getParams(user);
		if (null == user.getId()) {
			userService.save(user);
		} else {
			userService.updateUser(user);
		}
		return "goList";
	}

	public String delUser() {
		user = new User();
		getParams(user);
		if (null != user.getId()) {
			userService.delUserById(user.getId());
		}
		return "goList";
	}

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public CategoryServiceI getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryServiceI categoryService) {
		this.categoryService = categoryService;
	}

	public List<Ucategory> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<Ucategory> categoryList) {
		this.categoryList = categoryList;
	}

}
