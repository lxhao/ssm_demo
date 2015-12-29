package com.bkybk.service;

import java.util.List;

import com.bkybk.model.Comment;

public interface CommentsService {
	// 根据文章Id查找指定文章的评论
	public List<Comment> getByArticleId(int articleId);

	// 保存评论
	public void saveContent(Comment content);

	// 修改评论
	public void updateComment(Comment content);

	// 删除评论
	public void deleteComment(int contentId);
	
	//根据评论Id查找评论
	public Comment getCommentById(int commentId);

}
