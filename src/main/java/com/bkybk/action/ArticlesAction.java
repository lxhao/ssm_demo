package com.bkybk.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bkybk.model.Article;
import com.bkybk.model.JsonModel;
import com.bkybk.service.ArticlesService;
import com.bkybk.service.CommentsService;
import com.bkybk.model.Comment;

public class ArticlesAction extends BaseAction {

	private static final long serialVersionUID = -371845348379L;
	private ArticlesService articleService;
	private CommentsService commentsService;

	private List<Article> articleList;

	List<Comment> commentList;

	private Article article;

	public Article getArticle() {
		return article;
	}

	// 寰楀埌鎵�湁鐨勬枃绔�	
	public String getArticlesAll() {
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "articleList";
	}

	// 鏍规嵁鏂囩珷Id鏌ヨ鏂囩珷
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

	// 鏄剧ず鏂囩珷鍜岃瘎璁�	
	public String displayArticle() {
		JsonModel j = new JsonModel();
		article = new Article();
		getParams(article);
		// 鏍规嵁鏂囩珷Id鑾峰緱鏂囩珷
		article = articleService.getArticleById(article.getArticleId());
		j.setSuccess(true);
		j.setMsg("OK");
		j.setObj(article);

		// 鏍规嵁鏂囩珷Id鑾峰彇璇勮鍒楄〃
		JsonModel j2 = new JsonModel();
		commentList = commentsService.getByArticleId(article.getArticleId());
		j2.setObj(commentList);
		return "display";
	}

	// 缂栬緫鏂囩珷
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

	// 鏍规嵁缂栬緫椤甸潰鎻愪氦鐨勬暟鎹洿鏂版枃绔�	
	public String Update() {
		JsonModel j = new JsonModel();

		// 寰楀埌鏂囩珷Id锛屼慨鏀瑰悗鐨勬爣棰樺拰鍐呭锛屾牴鎹甀d浠庢暟鎹簱鏌ュ埌瀹屾暣鐨勬枃绔�		
		Article articleReceiveId = new Article();
		getParams(articleReceiveId);

		article = articleService.getArticleById(articleReceiveId.getArticleId());

		// 淇敼鏂囩珷鐨勬爣棰樺拰鏂囩珷鍐呭
		article.setTitle(articleReceiveId.getTitle());
		article.setContent(articleReceiveId.getContent());

		// 鏇存柊鏂囩珷鏁版嵁
		articleService.updateArticle(article);
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "update";
	}

	// 鍒犻櫎鏂囩珷锛屽彲浠ヨ繍琛岋紝浣嗛渶瑕佽缃敤鎴锋潈闄�	
	public String delArticle() {
		article = new Article();
		getParams(article);
		articleService.delArticleById(article.getArticleId());
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "delete";
	}

	public String publishArticle() {
		article = new Article();
		getParams(article);
		articleService.save(article);
		JsonModel j = new JsonModel();
		articleList = articleService.getArticleAll();
		j.setObj(articleList);
		return "publish";
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

	public List<Comment> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}

	public CommentsService getCommentsService() {
		return commentsService;
	}

	public void setCommentsService(CommentsService commentsService) {
		this.commentsService = commentsService;
	}

}
