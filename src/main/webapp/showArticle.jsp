<%@page import="com.bkybk.model.Article"%>
<%@page import="com.alibaba.fastjson.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:property value="article.title"/></title>
</head>
<body>


<%
JSONObject obj = new JSONObject();
out.print(obj.get("article"));
out.flush();
%>
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
	
</body>
</html>