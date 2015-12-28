package com.bkybk.model;

import java.util.Date;

public class Comment {

	private Integer commentId;
	private Integer userId;
	private Integer articleId;
	private String contents;
	private Date publishedtime;
	private User user;
	
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public Integer getUserid() {
		return userId;
	}
	public void setUserid(Integer userid) {
		this.userId = userid;
	}
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
