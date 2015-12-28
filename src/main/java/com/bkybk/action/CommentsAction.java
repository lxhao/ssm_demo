package com.bkybk.action;

import com.bkybk.model.Article;
import com.bkybk.model.Comment;
import com.bkybk.model.JsonModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

	// // 保存评论
	// void saveContent( ) {
	//
	// getParams(comment);
	// commentsService.saveContent(content);
	// }
	//
	// 修改评论
	public String updateContent() {

		// 得到评论完整的评论
		Comment commentReceiveId = new Comment();
		getParams(commentReceiveId);

		comment = commentsService.getCommentById(commentReceiveId.getCommentId());

		// 修改评论
		comment.setContents(commentReceiveId.getContents());

		// 更新评论数据
		commentsService.updateContent(comment);
		return "update";
	}

	//
	// 删除评论
	public String deleteCommment() {
		JsonModel j = new JsonModel();
		getParams(comment);
		commentsService.deleteComment(comment.getCommentId());
		Article article = new Article();
		j.setObj(article);
		return "delete";
	}

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
