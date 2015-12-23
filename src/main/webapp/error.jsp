<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="refresh" content="300; url=login.jsp" />
<script language="javascript">
	var secs = 2; //倒计时的秒数 
	var URL;
	function Load(url) {
		URL = url;
		for (var i = secs; i >= 0; i--) {
			window.setTimeout('doUpdate(' + i + ')', (secs - i) * 1000);
		}
	}
	function doUpdate(num) {
		document.getElementById('ShowDiv').innerHTML = '将在' + num
				+ '秒后自动跳转到登陆页面';
		if (num == 0) {
			window.location = URL;
		}
	}
</script>

</head>

<body onload="Load('login.jsp')">
	账户密码错误!
	<a href="./login.jsp" >请重新登陆。</a>
	<div id="ShowDiv"></div>
</body>
</html>