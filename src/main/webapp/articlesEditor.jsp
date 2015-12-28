<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
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
				<td><input name="title"
					value="<s:property value="article.title"/>"></td>
			</tr>

			<tr>
				<td>文章Id</td>
				<td><input name="articleId"
					value="<s:property value="article.articleId"/>" readonly></td>
			</tr>

			<tr>
				<td>作者</td>
				<td><input name="author"
					value="<s:property value="article.user.name"/>" readonly></td>
			</tr>

			<tr>
				<td>发布时间</td>
				<td><input name="publishedtime"
					value="<s:property value="article.publishedtime"/>" readonly></td>
			</tr>

			<tr>
				<td>正文</td>
				<td><input name="content"
					value="<s:property value="article.content"/>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"> <input
					type="Reset" value="Reset"></td>
			</tr>
		</table>

	</form>

=======
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
	
>>>>>>> branch 'master' of https://git.oschina.net/rayleigh/Demo.git
</body>
</html>