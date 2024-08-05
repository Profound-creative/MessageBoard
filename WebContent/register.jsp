<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	h1{
	color:white;
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
	
	<h1 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请完善您的相关信息：</h1>
	<form action="RegistServlet" method="post">
	
		<input type="hidden" name="action" value="regist"><br>
		
		<label>用户名:</label>
		&nbsp;&nbsp;&nbsp;
		<input type="text" name="username" required><br>
		
		<label>密码:</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="password" required><br>
		
		<label>确认密码:</label>
		<input type="password" name="password2" required>
		<p class="col">${message}</p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" name="regist" value="注册" style=width:75px;>
		<input type="reset" value="重置" style=width:75px;> 
	</form>
	
</div>
</body>

</html>