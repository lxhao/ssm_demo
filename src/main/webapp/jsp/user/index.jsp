<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S2SMDemo</title>
</head>
<body>
<h2>S2SMDemo</h2>
<a href="userAction!getUserAll.do">查看信息</a>
<a href="userAction!addUser.do">新增用户</a>
<a href="login.jsp">立刻登录</a></body>
</html>

