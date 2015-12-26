<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑文章</title>
</head>
<body>
	<form action="ArticlesAction!Update.do" method="post">
		<table border="1">
			<tr>
				<td>文章标题</td>
				<td><input name="title" value="<s:property value="article.title"/>"></td>
			</tr>
			<tr>
				<td>作者</td>
				<td><input name="author" value="<s:property value="article.user.name"/>"></td>
			</tr>
			<tr>
				<td>正文</td>
				<td><input name="contents" value="<s:property value="article.content"/>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Submit">
					<input type="Reset" value="Reset">
				</td>
			</tr>
		</table>
	
	</form>
	
</body>
</html>