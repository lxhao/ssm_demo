
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
登陆
<form action="LoginAction!login.do" method="post">
		<table border="1">
			<tr>
				<td>用户名</td>
				<td><input name="loginName" onblur="validatorLoginName"></td>
			</tr>
				<tr>
				<td>密码</td>
				<td><input name="password" type="password"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Submit">
					<input type="Reset" value="Reset">
				</td>
			</tr>
		</table>
	
	</form>
	<script type="text/javascript">
	function validatorLoginName(){
		 var loginName=document.getElementById("loginName").value;
		 if(loginName == "")
		 {
		 	alert("用户名不能为空!");
		 	return;
		 }
		 $.ajax({
		 		type: "POST",    
		         url: "ValidateLoginName",    
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

</script>
</body>
</html>