<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布文章</title>
</head>
<body>
	<form action="ArticlesAction!publishArticle.do" method="post">
		<input type="hidden" name="userId"
			value="<s:property value="user.id"/>">
		<table border="1">
			<tr>
				<td>文章标题</td>
				<td><input name="title" value="文章标题" /></td>
			</tr>

			<tr>
				<td>正文</td>
				<td><input name="content" value="文章内容" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="发布文章"> <input
					type="Reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>