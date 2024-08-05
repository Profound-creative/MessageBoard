<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,javaBean.*,useBean.*"
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
		
	</style>
</head>

<body background="pictures/言叶之庭4.jpeg">
	<%
		String mid ="";
		mid= request.getParameter("mid");
		Message message = new Message();
		message = MessageDB.selectMessagem(mid);	
	%>
	
	<h1>主题：<%= message.gettitle() %></h1>
	<h2>内容：</h2>
	<p><%= message.getcontext() %></p>
	
	<h3>评论：</h3>
	<p>=================================================================================</p>
   <%
   			 ArrayList mL=(ArrayList)request.getAttribute("DetailList");
	%>
	
	<% if (mL != null){ 
		for (int i = 0; i < mL.size(); ++i ){
				Detail detail = (Detail)mL.get(i);
				
				if(detail.getmid().equals(mid)){
			%>
				
				
				<p>用户:
				<%= detail.getcuser() %></p>
				<p>评论：	
				<%= detail.getcomment() %></p>
				<p>时间:
				<%= detail.getctime() %></p>
				<p>=================================================================================</p>
				
				
		<%}	}} %>
		
	<form action="LeaveDetailServlet" method="post">
		<input type="hidden" name="action" value="leave">	
		<p>提交留言，查看评论：</p>
		<textarea name="comment" cols="60" rows="4" required></textarea><br>
		<input type="hidden" name="mid" value="<%= mid %>">
		<input type="submit" value="卑微评论.">	
	</form>
	
</body>
</html>