<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>编辑文章</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="js/tinymce/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
</head>
<body style="background: #ccc">
	<form action="ArticlesAction!Update.do" method="post">
		<table frame=void rules=none width=900 align=center>
			<tr>
				<td  align=center>文章标题</td>
				<td><input autocomplete=on checked=checked size=85 name="title"
					value="<s:property value="article.title"/>"></td>
			</tr>

			<tr>
				<td align=center>文章Id</td>
				<td><input size=85 name="articleId"
					value="<s:property value="article.articleId"/>" readonly></td>
			</tr>

			<tr>
				<td  align=center style="font-family: verdana; font-size: 100%">作者</td>
				<td><input size=85 name="author"
					value="<s:property value="article.user.name"/>" readonly></td>
			</tr>

			<tr>
				<td  align=center>发布时间</td>
				<td><input size=85 name="publishedtime"
					value="<s:property value="article.publishedtime"/>" readonly></td>
			</tr>

			<tr>
				<td  align=center>正文</td>
				<td><textarea rows=20 name="content"><s:property value="article.content"/></textarea>
					</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"> <input
					type="Reset" value="Reset"></td>
			</tr>
			<!-- 			<tr> -->
			<!-- 				<td><input name="content" type=text value="article.content"/> -->
			<!-- 				<input type=button value="确定" onclick="javascript:txt.disabled = true"/> -->
			<!-- 				<input type=button value="编辑" onclick="javascript:txt.disabled = false"/></td> -->
			<!-- 			</tr> -->
		</table>

	</form>
</body>
</html>