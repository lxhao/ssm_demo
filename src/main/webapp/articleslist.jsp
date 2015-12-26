<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>Show List - S2SMDemo</title>
<script type="text/javascript">
	var totalPageNums = '<s:property value="user.TotalPage"/>';
	
	function goFirstPage(pageNum){
		var url = "userAction!getUserAll.do";
		window.location.href= url;
	}
	
	function goUpPage(pageNum){
		if((pageNum-1) < 1){
			alert("提示:已经是第一页");
			return false;			
		}
		var url = "userAction!getUserAll.do?page="+(pageNum-1);
		window.location.href= url;
	}
	
	function goDownPage(pageNum){
		if((pageNum+1) > totalPageNums){
			alert("提示:已经是最后一页");
			return false;
		}
		var url = "userAction!getUserAll.do?page="+(pageNum+1);
		window.location.href= url;
	}
	
	function goLastPage(pageNum){
		var url = "userAction!getUserAll.do?page="+totalPageNums;
		window.location.href= url;
	}
	
	function displayArticle(articleId){
		var url = "ArticlesAction!displayArticle.do?articleid="+articleId;
		window.location.href= url;
	}
	
	function editArticle(articleId){
		var url = "ArticlesAction!editArticle.do?articleid="+articleId;
		window.location.href= url;
	}
	
	function delUser(userId){
		var url = "userAction!delUser.do?id="+userId;
		window.location.href= url;
	}
</script>
</head>
<body>
<table border="1">
	<tr>
		<th>文章标题</th>
		<th>作者</th>
		<th>最后修改时间</th>
	</tr>
	<s:iterator value="articleList" id="item">
	<tr>
		<td><a href="javascript:none;" onclick="displayArticle(<s:property value="#item.articleid"/>);"><s:property value="#item.title"/></a></td>
		<td><s:property value="#item.user.name"/></td>
		<td><s:property value="#item.publishtime"/></td>
		
		<td>
			<a href="javascript:none;" onclick="editArticle(<s:property value="#item.articleid"/>);">编辑</a>
		</td>
	</tr>
	</s:iterator>

</table>

<div id="pageStyle">
	<a href="javascript:none;" onclick="goFirstPage(<s:property value="user.page"/>);">首页</a>
	<a href="javascript:none;" onclick="goUpPage(<s:property value="user.page"/>);">上一页</a>
	<a href="javascript:none;" onclick="goDownPage(<s:property value="user.page"/>);">下一页</a>
	<a href="javascript:none;" onclick="goLastPage('最后一页');">最后一页</a>
</div>

</body>
</html>