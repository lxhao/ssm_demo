﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户注册</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<!-- 
        Visual Admin Template
        http://www.templatemo.com/preview/templatemo_455_visual_admin
        -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>
<body class="light-gray-bg">
	<div class="templatemo-content-widget templatemo-login-widget white-bg">
		<header class="text-center">
			<div class="square"></div>
			<h1>用户注册</h1>
		</header>
		<form action="bgindex.html" class="templatemo-login-form">

			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="text" class="form-control" placeholder="用户名">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="text" class="form-control" placeholder="姓名">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="text" class="form-control"
						placeholder="邮箱admin@csu.edu.cn">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon width-50"></div>
					<input type="password" class="form-control" placeholder="密码">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="password" class="form-control" placeholder="重复密码">
				</div>
			</div>
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="text" class="form-control" placeholder="手机号码">
				</div>
			</div>
			<div class="form-group">
				<div class="checkbox squaredTwo">
					<input type="checkbox" id="c1" name="cc" /> <label for="c1"><span></span>同意</label><a
						href="signup.html" class="blue-text">相关条款</a>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="templatemo-blue-button width-100">注册</button>
			</div>
		</form>
	</div>

</body>
</html>