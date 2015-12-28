package com.bkybk.action;

import com.bkybk.model.Comment;
import com.bkybk.model.JsonModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.bkybk.model.JsonModel;
import com.bkybk.service.CommentsService;

public class CommentsAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private CommentsService commentsService;
	private Comment comment;
	private List<Comment> commentList;

	// 根据文章Id查找指定文章的评论
	List<Comment> getByArticleId(int articleId) {
		return commentsService.getByArticleId(articleId);
	}

//	// 保存评论
//	void saveContent( ) {
//		
//		getParams(comment);
//		commentsService.saveContent(content);
//	}
//
//	// 修改评论
//	void updateContent(Comment content) {
//
//	}
//
//	// 删除评论
//	void deleteContent(int contentId) {
//
//	}

	public CommentsService getCommentsService() {
		return commentsService;
	}

	@Autowired
	public void setCommentsService(CommentsService commentsService) {
		this.commentsService = commentsService;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public List<Comment> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
