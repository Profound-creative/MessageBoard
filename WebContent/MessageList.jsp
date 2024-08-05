<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,javaBean.Message"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>留言板系统</title>
	
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
	</style>
</head>

<body background="pictures/言叶之庭4.jpeg">
<div align="center">
	<br>
	<h1>欢迎来到留言系统</h1>
	
	
	<table width="800" border="1" cellpadding="5">
		<%
   			 ArrayList mL=(ArrayList)request.getAttribute("MessageList");
		%>
		<tr>
			<th>留言数</th>
			<th>标题</th>
			<th>留言内容</th>
			<th>用户ID</th>
		</tr>
		<% if (mL != null){ 
		for (int i = 0; i < mL.size(); ++i ){
				Message message = (Message)mL.get(i);%>
				<tr>
					<td><%= message.getmid() %></td>
					<td><a href="MessageDetail.jsp?mid=<%= message.getmid() %>"><%= message.gettitle() %></td>	
					<td><%= message.getcontext() %></td>
					<td><%= message.getuserid() %></td>
				</tr>
		<%	} } %>
		
	</table>
	<h2><a href="LeaveMessage.jsp">我要留言</a> </h2>
</div>	
</body>
</html>