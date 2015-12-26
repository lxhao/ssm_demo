<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<body>
	<h2>content</h2>

	<form action="ContentAction!Content.do" method="post">
		<table border="1">
			<tr>
				<td>用户名</td>
				<td><input name="loginName" onblur="validatorLoginName"></td>
			</tr>
		</table>
	</form>
</body>
</html>

