package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.Comment;

public interface CommentMapper {
	// 根据文章Id查找指定文章的评论
	List<Comment> getByArticleId(Integer articleId);

	// 保存评论
	public void saveContent(Comment content);

	// 修改评论
	public void updateComment(Comment content);

	// 删除评论
	public void deleteComment(Integer commentId);

	//查找评论
	public Comment getCommentById(Integer commentId);

}
