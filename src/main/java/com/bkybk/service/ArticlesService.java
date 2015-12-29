package com.bkybk.service;

import java.util.List;

import com.bkybk.model.Article;

public interface ArticlesService {

	// 保存文章
	public int save(Article article);


	// 获取文章列表
	public List<Article> getArticleAll();

	// public int getArticleSize(Article Article);


	// 根据ID查找文章
	public Article getArticleById(int articleId);


	// 根据标题查找文章
	public List<Article> getArticleByTitle(String articleStr);


	// 根据标题根新文章
	public void updateArticle(Article article);


	// 根据ID删除文章
	public void delArticleById(int articleId);

}
