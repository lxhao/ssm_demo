<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>发布文章</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="js/tinymce/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
</head>
<body style="background: #ccc">	
<form action="ArticlesAction!publishArticle.do?userId=4" method="post">
		<input type="hidden" name="userId"
			value="<s:property value="user.id"/>">
		<table frame=void rules=none width=900 align=center >
			<tr>
				<td align=center style="color: #FFFFF; font-size: 15px;">文章标题</td>
				<td><input size="80" name="title" placeholder="文章标题" /></td>
			</tr>

			<tr>
				<td align=center style="color: #FFFFF; font-size: 15px;">正文</td>
				<td><textarea name="content"  rows=20> </textarea>
					</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="发布文章"> <input
					type="Reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>