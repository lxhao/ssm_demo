<%@page import="com.bkybk.model.Article"%>
<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	</table>
	<!-- 显示正文结束 -->
	<script type="text/javascript">
	function delComment(commentId){
		var url = "CommentsAction!deleteComment.do?commentId="+commentId;
		window.location.href= url;
	}
	
	function editComment(commentId){
		var url = "CommentsAction!editComment.do?commentId="+commentId; 
// 		var url = "CommentsAction!delComment.do?commentId="+commentId+"&vdf="+; 
		window.location.href= url;
	}
	</script>
	<!-- 显示评论 -->
	<s:iterator value="commentList" id="item">
		<tr>
			<td><s:property value="#item.user.name" /> <s:property
					value="#item.publishedtime" /> <s:property value="#item.contents" />
			</td>

			<td><a href="javascript:none;"
				onclick="editComment(<s:property value="#item.commentId"/>);">编辑</a></td>
			<td><a href="javascript:none;"
				onclick="delComment(<s:property value="#item.commentId"/>);">刪除</a></td>
		</tr>
	</s:iterator>
	
</body>
</html>