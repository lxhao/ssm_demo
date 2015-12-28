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

	<table border="1">
		<tr>
			<th>ID</th>
			<th>账号</th>
			<th>密码</th>
		</tr>
		<s:iterator value="contentsList" id="item">
			<tr>
				<td><s:property value="#item.cmttime" /></td>
				<td><s:property value="#item.user.name" /></td>
				<td><s:property value="#item.comments" /></td>
			</tr>
		</s:iterator>

	</table>


</body>
</html>