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

	// 鏍规嵁鏂囩珷Id鏌ユ壘鎸囧畾鏂囩珷鐨勮瘎璁�	
	public List<Comment> getByArticleId(int articleId) {
		return commentMapper.getByArticleId(articleId);
	}

	public Comment getCommentById(int commentId) {
		return commentMapper.getCommentById(commentId);
	}
	
	// 淇濆瓨璇勮
	public void saveContent(Comment content) {
		commentMapper.saveContent(content);
	}

	// 淇敼璇勮
	public void updateComment(Comment content) {
		commentMapper.updateComment(content);
	}

	// 鍒犻櫎璇勮
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
