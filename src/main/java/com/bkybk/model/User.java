package com.bkybk.model;

import java.util.Date;
import java.util.List;

public class User extends BaseVo {

	// private List<UserCategory> userCate;

	private List<Ucategory> category;

	public List<Ucategory> getCategory() {
		return category;
	}

	public void setCategory(List<Ucategory> category) {
		this.category = category;
	}

	// public List<UserCategory> getUserCate() {
	// return userCate;
	// }
	//
	// public void setUserCate(List<UserCategory> userCate) {
	// this.userCate = userCate;
	// }

	private Integer id;

	private String loginName;

	private String password;

	private String name;

	private String email;

	private String phone;

	private String address;

	private Date lastLoginTime;

	private Date registTime;

	private Integer categoryId;

	private String cname;

	private String cdescription;

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCdescription() {
		return cdescription;
	}

	public void setCdescription(String cdescription) {
		this.cdescription = cdescription;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName == null ? null : loginName.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Date getRegistTime() {
		return registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
}