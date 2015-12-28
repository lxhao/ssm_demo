package com.bkybk.action;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bkybk.model.Article;
import com.bkybk.model.JsonModel;
import com.bkybk.service.ArticlesService;
import com.bkybk.model.Comment;
import com.bkybk.action.CommentsAction;

public class ArticlesAction extends BaseAction {

	private static final long serialVersionUID = -371845348379L;
	private ArticlesService articleService;

	private List<Article> articleList;

	private Article article;

	public Article getArticle() {
		return article;
	}

	// 得到所有的文章
	public String getArticlesAll() {
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "articleList";
	}

	// 根据文章Id查询文章
	public String getArticleById() {
		JsonModel j = new JsonModel();
		article = new Article();
		getParams(article);
		article = articleService.getArticleById(article.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);
		return "edit";
	}

	// 显示文章和评论
	public String displayArticle() {
		JsonModel j = new JsonModel();
		article = new Article();
		getParams(article);
		// 根据文章Id获得文章，已经过测试可以运行
		article = articleService.getArticleById(article.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);

		// 根据文章Id获取评论列表，不能运行
		 List<Comment> commentList;
		 CommentsAction commentsAction = new CommentsAction();
		 commentList = commentsAction.getByArticleId(article.getArticleId());
		 j.setObj(commentList);
		return "display";
	}

	// 编辑文章
	public String editArticle() {
		JsonModel j = new JsonModel();
		article = new Article();
		getParams(article);
		article = articleService.getArticleById(article.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);
		return "edit";
	}

	// 根据编辑页面提交的数据更新文章
	public String Update() {
		System.out.println("--------------------------------------");
		JsonModel j = new JsonModel();

		// 得到文章Id，修改后的标题和内容，根据Id从数据库查到完整的文章
		Article articleReceiveId = new Article();
		getParams(articleReceiveId);
		System.out.println(articleReceiveId.getArticleId() + "-----");
		
		article = articleService.getArticleById(articleReceiveId.getArticleId());

		// 修改文章的标题和文章内容
		article.setTitle(articleReceiveId.getTitle());
		article.setContent(articleReceiveId.getContent());



		// 更新文章数据
		articleService.updateArticle(article);
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "update";
	}

	// 删除文章，可以运行，但需要设置用户权限
	public String delArticle() {
		article = new Article();
		getParams(article);
		articleService.delArticleById(article.getArticleId());
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "delete";
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

	public void setArticle(Article article) {
		this.article = article;
	}

}
