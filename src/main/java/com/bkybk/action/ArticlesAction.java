package com.bkybk.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bkybk.model.Article;
import com.bkybk.model.JsonModel;
import com.bkybk.service.ArticlesService;

public class ArticlesAction extends BaseAction {

	private static final long serialVersionUID = -371845348379L;
	private ArticlesService articleService;
	

	private List<Article> articleList;

	private Article article;
	
	public String getArticlesAll() {
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "articleList";
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public ArticlesService getArticleService() {
		return articleService;
	}

	@Autowired
	public void setArticleService(ArticlesService articleService) {
		this.articleService = articleService;
	}

	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public String editArticle() {
		JsonModel j = new JsonModel();
		article = new Article();
		getParams(article);
		article = articleService.getArticleById(article.getArticleid());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);
		return "show";
	}

	public void setArticle(Article article) {
		this.article = article;
	}	



}
