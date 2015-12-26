package com.bkybk.service;

import java.util.List;

import com.bkybk.model.Article;

public interface ArticlesService {

	public int save(Article article);

	// 保存文章

	public List<Article> getArticleAll();

	// 获取文章列表

	// public int getArticleSize(Article Article);

	public Article getArticleById(int articleId);

	// 根据ID查找文章

	public List<Article> getArticleByTitle(String articleStr);

	// 根据标题查找文章

	public int updateArticle(Article article);

	// 根据标题根新文章

	public int delArticleById(int articleId);
	// 根据ID删除文章

}
