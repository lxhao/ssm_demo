package com.bkybk.service;

import java.util.List;

import com.bkybk.model.Comment;;

public interface CommentsService {
	// 根据文章Id查找指定文章的评论
	List<Comment> getByArticleId(int articleId);

	// 保存评论
	void saveContent(Comment content);

	// 修改评论
	void updateContent(Comment content);

	// 删除评论
	void deleteContent(int contentId);

}
