package com.bkybk.service;

import java.util.List;

import com.bkybk.model.Comment;

public interface CommentsService {
	// 鏍规嵁鏂囩珷Id鏌ユ壘鎸囧畾鏂囩珷鐨勮瘎璁�	
	public List<Comment> getByArticleId(int articleId);

	// 淇濆瓨璇勮
	public void saveContent(Comment content);

	// 淇敼璇勮
	public void updateComment(Comment content);

	// 鍒犻櫎璇勮
	public void deleteComment(int contentId);
	
	//鏍规嵁璇勮Id鏌ユ壘璇勮
	public Comment getCommentById(int commentId);

}
