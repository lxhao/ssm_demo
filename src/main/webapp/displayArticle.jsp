<%@page import="com.bkybk.model.Article"%>
<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="article.title" /></title>
</head>
<!-- 显示正文 -->
<body>

	<h1>美文欣赏</h1>

	<table border="1">
		<tr>
			<td>标题</td>
			<td><s:property value="article.title" /></td>
		</tr>
		<tr>
			<td>作者</td>
			<td><s:property value="article.user.name" /></td>
		</tr>
		<tr>
			<td>发布时间</td>
			<td><s:property value="article.publishedtime" /></td>
		</tr>
		<tr>
			<td>美丽正文</td>
			<td><s:property value="article.content" /></td>
		</tr>

		<tr>
			<td>评论</td>
			<td><s:property value="contentsList.comments" /></td>
		</tr>

	</table>

	<!--  <form action="ContentAction!getContentAll.do?articleId=article.articleId" method="post">	-->
	<!-- 显示正文结束 -->
	
	<!-- 显示评论 -->
	<s:iterator value="commentList" id="item">
	<tr>
		<td>
			<s:property value="#item.publishedtime"/>
			<s:property value="#item.userId"/>
			<s:property value="#item.contents"/>
		</td>
		
		<td><a href="javascript:none;" onclick="editArticle(<s:property value="#item.articleid"/>);">编辑</a></td>
		<td><a href="javascript:none;" onclick="delArticle(<s:property value="#item.articleid"/>);">刪除</a></td>
		
	</tr>
	</s:iterator>

=======
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="article.title"/></title>
</head>
<body>

	<h1>美文欣赏</h1>

		<table border="1">
			<tr>
				<td>标题</td>
				<td><s:property value="article.title"/></td>
			</tr>
			<tr>
				<td>作者</td>
				<td><s:property value="article.user.name"/></td>
			</tr>
			<tr>
				<td>发布时间</td>
				<td><s:property value="article.publishtime"/></td>
			</tr>
			<tr>
				<td>美丽正文</td>
				<td><s:property value="article.content"/></td>
			</tr>
					
		</table>
	
>>>>>>> branch 'master' of https://git.oschina.net/rayleigh/Demo.git
</body>
</html>