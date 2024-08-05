<%@ page language="java" contentType="text/html; charset=utf-8"   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	label{
	color:white;
	font-weight:bolder;
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
	.col{
		color:white;
		font-weight:bolder;
	}
</style>
</head>

<body background="pictures/言叶之庭8.png">

<div align="center" class="center-in-center">
		<h1 class ="col">&nbsp;&nbsp;&nbsp;登陆入口</h1>
	<form action="LoginServlet" method = "post">
		<input type="hidden" name="action" value="login">
		
		<label>用户名:</label>
		<input type="text" name="username" style=width:150px;height:20px; ><br>
		
		<label>密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" name="password" style=width:150px;height:20px; ><br>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" name="login" value="登陆" style=width:150px;height:20px;><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset" value="重置" style=width:150px;height:20px;><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="submit" formaction="register.jsp" style=width:150px;height:20px;>注册</button>
	</form>
	<p class="col">${message}</p>

</div>
</body>
</html>