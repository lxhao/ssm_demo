package com.bkybk.model;

import java.util.Date;

public class Article {

	private Integer articleId;
	private Integer userId;
	private String title;
	private String content;
	private Date publishedtime;
	private User user;
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPublishedtime() {
		return publishedtime;
	}
	public void setPublishedtime(Date publishedtime) {
		this.publishedtime = publishedtime;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}


}
