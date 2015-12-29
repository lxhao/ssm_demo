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
<body style="background:url(img/background.png)" >

	<h1>美文欣赏</h1>
<form>
	<table border="1" frame=void rules=none width=800 align=center>
		<tr align=center>
			<td style="color:#FF6600"><s:property value="article.title" /></td>
		</tr>
		<tr align=center>
			<td >作者：<s:property value="article.user.name" />
			发布时间：<s:property value="article.publishedtime" /></td>
		</tr>
		<tr>
			<td><s:property value="article.content" /></td>
		</tr>

		<tr>
	</table>
</form>
	<!-- 显示正文结束 -->
	<script type="text/javascript">
	function delComment(commentId, articleId){
		var url = "CommentsAction!deleteComment.do?commentId="+commentId+"&articleId="+articleId; 
		window.location.href= url;
	}
	
	function editComment(commentId, articleId){
		var url = "CommentsAction!updateComment.do?commentId="+commentId+"&articleId"+articleId; 
		window.location.href= url;
	}
	</script>
	<!-- 显示评论 -->
	<table border="1" frame=void rules=none width=400 align=center>
	<s:iterator value="commentList" id="item" >
		<tr align=right>
			<td><s:property value="#item.user.name+'：'" /> <s:property value="#item.contents+' '" /> <s:property
					value="#item.publishedtime" /> 
			</td>

			<td><a href="javascript:none;"
				onclick="editComment(<s:property value="#item.commentId"/> ,<s:property value="#item.articleId"/>);">编辑</a></td>
			<td><a href="javascript:none;"
				onclick="delComment(<s:property value="#item.commentId"/> ,<s:property value="#item.articleId"/>);">刪除</a></td>
		</tr>
	</s:iterator>
	</table>
	<!--发表评论target="save" -->
	<form action="CommentsAction!saveContent.do" method="post"  target="_self">
		<input type="hidden" name="articleId"
			value="<s:property value="article.articleId"/>"> <input
			type="hidden" name="userId"
			value="<s:property value="article.user.id"/>">
		<table align=center width=800 >
			<tr>
				<td width=500><input size=60 name="contents"
					placeholder="<s:property value="article.user.name"/>的评论:"></td>
				<td colspan="1" width=100><input type="submit" value="发表评论"></td>

				<!-- 				<td><input type="text" value="用户名" class="gray" -->
				<!-- 					onclick="if(this.value=='用户名'){this.value=''; -->
				<!-- 					this.className='black'}" -->
				<!-- border="1" cellpadding="0" cellspacing="0" width=600  -->
				<!-- 					onblur="if(this.value=='') {this.value='用户名';this.className='gray'}" /></td> -->

			</tr>
		</table>
	</form>
<!-- 	<iframe style="display: none" id="rfFrame" name="rfFrame" -->
<!-- 		src="about:blank"></iframe> -->

	<!--hello.php页面返回的数据 显示在iframe 中-->

</body>
</html>