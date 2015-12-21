<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<body>
<h2>Hello World!</h2>
<a href="#">查看信息</a>
<a href="#">新增用户</a>
<a href="#">编辑用户</a>
<a href="#">删除用户</a>
</body>
</html>

