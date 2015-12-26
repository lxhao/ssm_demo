package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.Article;

public interface ArticleMapper {

	// 保存文章
	int saveArticle(Article article);

	// 获取文章列表
	List<Article> getAll();

	// 根据ID获取文章
	Article getArticleById(Integer articleId);

	// 根据标题获取文章
	List<Article> getArticleByTitle(String articleStr);

	// 修改文章
	int updateArticle(Article article);

	// 删除文章
	int delArticleById(Integer articleId);

}
