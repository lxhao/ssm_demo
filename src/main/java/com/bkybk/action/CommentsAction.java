package com.bkybk.action;

import com.bkybk.model.Article;

import com.bkybk.model.Comment;
import com.bkybk.model.JsonModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.bkybk.service.CommentsService;
import com.bkybk.service.ArticlesService;

public class CommentsAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private CommentsService commentsService;
	private Comment comment;
	private List<Comment> commentList;
	private ArticlesService articlesService;
	private Article article;

	// 鏍规嵁鏂囩珷Id鏌ユ壘鎸囧畾鏂囩珷鐨勮瘎璁�	
	List<Comment> getByArticleId(int articleId) {
		return commentsService.getByArticleId(articleId);
	}

	// 淇濆瓨璇勮,
	public String saveContent() {
		comment = new Comment();
		// 鎺ユ敹userId, articleId, contents
		getParams(comment);
		commentsService.saveContent(comment);
		
		JsonModel j = new JsonModel();
		article = new Article();
		article = articlesService.getArticleById(comment.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);

		JsonModel j2 = new JsonModel();
		commentList = commentsService.getByArticleId(comment.getArticleId());
		j2.setObj(commentList);
		return "save";
	}

	// 淇敼璇勮
	public String updateComment() {

		// 鎺ユ敹userId, articleId, contents
		comment = new Comment();
		getParams(comment);
		commentsService.updateComment(comment);

		JsonModel j = new JsonModel();
		article = new Article();
		article = articlesService.getArticleById(comment.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);

		JsonModel j2 = new JsonModel();
		commentList = commentsService.getByArticleId(comment.getArticleId());
		j2.setObj(commentList);
		return "update";
	}

	//
	// 鍒犻櫎璇勮
	public String deleteComment() {
		JsonModel j = new JsonModel();
		comment = new Comment();
		getParams(comment);
		commentsService.deleteComment(comment.getCommentId());
		article = new Article();
		article = articlesService.getArticleById(comment.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);

		JsonModel j2 = new JsonModel();
		commentList = commentsService.getByArticleId(comment.getArticleId());
		j2.setObj(commentList);
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

	public ArticlesService getArticlesService() {
		return articlesService;
	}

	public void setArticlesService(ArticlesService articlesService) {
		this.articlesService = articlesService;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

}
