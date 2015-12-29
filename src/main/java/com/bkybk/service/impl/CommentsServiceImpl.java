package com.bkybk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bkybk.model.Comment;
import com.bkybk.service.CommentsService;
import com.bkybk.dao.CommentMapper;

@Service("commentsService")
public class CommentsServiceImpl implements CommentsService {
	private CommentMapper commentMapper;

	// 根据文章Id查找指定文章的评论
	public List<Comment> getByArticleId(int articleId) {
		return commentMapper.getByArticleId(articleId);
	}

	public Comment getCommentById(int commentId) {
		return commentMapper.getCommentById(commentId);
	}
	
	// 保存评论
	public void saveContent(Comment content) {
		commentMapper.saveContent(content);
	}

	// 修改评论
	public void updateComment(Comment content) {
		commentMapper.updateComment(content);
	}

	// 删除评论
	public void deleteComment(int commentId) {
		commentMapper.deleteComment(commentId);
	}

	public CommentMapper getCommentMapper() {
		return commentMapper;
	}

	@Autowired
	public void setCommentMapper(CommentMapper commentMapper) {
		this.commentMapper = commentMapper;
	}
	
	

}
