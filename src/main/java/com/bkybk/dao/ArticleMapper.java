package com.bkybk.dao;

import java.util.List;

import com.bkybk.model.Article;

public interface ArticleMapper {

	int saveArticle(Article article);

	List<Article> getAll();

	Article getArticleById(Integer articleId);

	Article getArticleByTitle(Article article);

	int updateArticle(Article article);

	int delArticleById(Integer articleId);




}
