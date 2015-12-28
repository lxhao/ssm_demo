package com.bkybk.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bkybk.dao.ArticleMapper;
import com.bkybk.model.Article;
import com.bkybk.service.ArticlesService;

@Service("articlesService")
public class ArticlesServiceImpl implements ArticlesService {

	private ArticleMapper articleMapper;

	// 保存文章
	public int save(Article article) {
		return articleMapper.saveArticle(article);
	}

	// 获取文章列表
	public List<Article> getArticleAll() {
		return articleMapper.getAll();
	}

	public ArticleMapper getArticleMapper() {
		return articleMapper;
	}

	@Autowired
	public void setArticleMapper(ArticleMapper articleMapper) {
		this.articleMapper = articleMapper;
	}

	// public int getArticleSize(Article Article);
	// 根据ID查找文章
	public Article getArticleById(int articleId) {
		return articleMapper.getArticleById(articleId);
	}

	// 根据标题查找文章
	public List<Article> getArticleByTitle(String articleStr) {
		return articleMapper.getArticleByTitle(articleStr);
	}

	// 根据标题根新文章 
	public void updateArticle(Article article) {
		articleMapper.updateArticle(article);
	}

	// 根据ID删除文章
	public void delArticleById(int articleId) {
		articleMapper.delArticleById(articleId);
	}

}
