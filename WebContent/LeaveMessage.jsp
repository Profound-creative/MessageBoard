<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>新浪微博</title>
	<style type="text/css">
		body {
			background-color: white;
			background-size: 100% 100%;	
			background-repeat:no-repeat; 
			background-attachment:fixed
		}
		html {
			height:100%;
			weight:100%;
		}
		.center-in-center{   
			position: absolute;   
			top: 50%;   
			left: 50%;   
			-webkit-transform: translate(-50%, -50%);   
			-moz-transform: translate(-50%, -50%);   
			-ms-transform: translate(-50%, -50%);   
			-o-transform: translate(-50%, -50%);   
			transform: translate(-50%, -50%);   
		}
	</style>
</head>

<body background="pictures/言叶之庭4.jpeg">
<div align="center" class="center-in-center">
	<form action="LeaveMessageServlet" method="post">
	
		<input type="hidden" name="action" value="leave">
		
		<p>标题</p>
		<textarea name="title"  rows="1" cols="60"  required></textarea>
		<p>留言</p>
		<textarea name="context" cols="60" rows="8" required></textarea><br>
		<input type="submit" value="提交">
		
	</form>
	
	
</div>
</body>
</html>