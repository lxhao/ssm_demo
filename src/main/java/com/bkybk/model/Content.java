package com.bkybk.model;

import java.security.Timestamp;

public class Content {
	private Integer commentid;
	private Integer userid;
	private Integer articleid;
	private String content;
	private Timestamp cmttime;
	public Integer getCommentid() {
		return commentid;
	}
	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getArticleid() {
		return articleid;
	}
	public void setArticleid(Integer articleid) {
		this.articleid = articleid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCmttime() {
		return cmttime;
	}
	public void setCmttime(Timestamp cmttime) {
		this.cmttime = cmttime;
	}
	
	

}
