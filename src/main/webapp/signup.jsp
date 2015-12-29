<%@ page language="java" contentType="text/html; charset=UTF-8"
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
        <script src="js/jquery.js" type="text/javascript"></script>
        <!-- 
        Visual Admin Template
        http://www.templatemo.com/preview/templatemo_455_visual_admin
        -->
	    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
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
		<form action="login.jsp" class="templatemo-login-form" onsubmit="return validateform()">
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"></div>	        		
		              	<input type="text" id="loginName" class="form-control" placeholder="用户名" onblur="validatorLoginName();">
		          	</div>	
		          	<td>只限a-z,0-9,_</td> 
	        	</div>
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"></div>	        		
		              	<input type="text" id="name" class="form-control" placeholder="姓名">           
		          	</div>	
	        	</div>
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"></div>	        		
		              	<input type="text" id="Email" class="form-control" placeholder="邮箱admin@csu.edu.cn">           
		          	</div>	
	        	</div>
	        	<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon width-50"></div>	        		
		              	<input type="password" id="password" class="form-control" placeholder="密码">
		          	</div>	
		          	<td>密码必须大于6个字符</td>
	        	</div>	
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"></div>	        		
		              	<input type="password" id="repassword" class="form-control" placeholder="重复密码">           
		          	</div>	
	        	</div>	
				<div class="form-group">
	        		<div class="input-group">
		        		<div class="input-group-addon"></div>	        		
		              	<input type="text" id="phone" class="form-control" placeholder="手机号码">           
		          	</div>	
	        	</div>				
	          	<div class="form-group">
				    <div class="checkbox squaredTwo">
				        <input type="checkbox" id="c1" name="cc" />
						<label for="c1"><span></span>同意</label><a href="signup.jsp" class="blue-text">相关条款</a>
				    </div>				    
				</div>
				<div class="form-group">
					<button type="submit" class="templatemo-blue-button width-100" >注册</button>
				</div>
	        </form>
		</div>
		
		<script type="text/javascript">
	function validatorLoginName(){
		 var loginName=document.getElementById("loginName").value;
			var illegalChars = /\W/;
			 if(loginName == "")
			 {
			 	alert("用户名不能为空!");
			 	return;
			 }else if(illegalChars.test(loginName))
			 {
					alert("登录名无效");
					return false;
					}
// 					return true;
		else{
		 $.ajax({
		 		type: "POST",    
		         url: "/ValidateLoginName",    
		          data: "loginName="+loginName, 
		         success: function(data){
			    if(data=="true"){   
			     alert("恭喜您！用户名没有被使用！");  
			    }else{   
			     alert("抱歉！用户名已存在！");   
		    	} 
		  		}          
		        }); 
		}
		}		
	function validateform(){
		if(nameCheck()&&emailcheck()&&passCheck()&& phoneCheck()) 
		   return true;
		 else
		   return false;
	}
	
	function nameCheck(){
		var loginName=document.getElementById("loginName").value;
		var illegalChars = /\W/;
		 if(loginName == "")
		 {
		 	alert("用户名不能为空!");
		 	return;
		 }else
			 {
				if(illegalChars.test(loginName)){
				alert("登录名无效");
				return false;
				}
				return true;
			}
	}
	//Validate password
	function passCheck(){
	var password = document.getElementById("password").value;
	var repassword = document.getElementById("repassword").value;
	var illegalChars = /[\W_]/;// allow only charactors and numbers
		// Check if Password field is blank.
		if(password == "" || repassword == ""){
			alert("未输入密码 \n" + "请输入密码");
// 			document.userfrm.pass.focus();
		return false;
		}
		// Check if password length is less than 6 charactor.
		if(password.length < 6){
			alert("密码必须多于或等于 6 个字符。\n");
// 			document.userfrm.pass.focus();
		return false;
		}
		//check if password contain illigal charactors.
// 		else if(illegalChars.test(password)){
// 			alert("密码包含非法字符");
// 			document.userfrm.pass.select();
// 			return false;
// 		}
		
		else if(password != repassword){
			alert("两次密码不相符");
// 			document.userfrm.rpass.select();
			return false;
		}
		return true;
	}

	// Email Validation
	function emailcheck(){
	var usermail = document.getElementById("Email").value;
		if(usermail.length == "0"){
		alert("Email 文本框为空")
// 		document.userfrm.email.focus();
		return false;
		}
		if(	usermail.indexOf("@") < 0 || usermail.indexOf(".") < 0 || usermail.indexOf("@") > usermail.indexOf(".")){
		  alert("Email 地址无效");
		  return false;
		}
		return true;
	}
	function phoneCheck(){
		var phone=document.getElementById("phone").vaule;
		var illgealPhone="^[0-9]*$";
		if(phone.length>=7 && phone.length<=15){
			if(illgealPhone.test(phone)){
				return true;
			}
				else{
					alert("仅限数字");
					return false;
					}
			}
		else{
			alert("仅限7-15位的数字");
			return false;
		}
		}
	
	
	 
</script>
		
	</body>
</html>