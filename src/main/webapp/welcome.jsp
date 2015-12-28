<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

Hello! <s:property value="user.name" />
<script type="text/javascript">
	function publishArticle(articleId) {
		var url = "ArticlesAction!publishArticle.do?userId=" + userId;
		window.location.href = url;
	}
</script>
