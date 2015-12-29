<%@page import="com.bkybk.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


Hello
<input type="text" name="owner" value="${sessionScope.user.name}" />

<%
User user = (User)session.getAttribute("user");
%>
${sessionScope.user.username}
