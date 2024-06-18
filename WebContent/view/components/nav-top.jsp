<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/view/components/style.css">

<% User USER = (User) session.getAttribute("USER"); %>

	<% if(USER != null){ %>
	<div class="header">
		<a href="<%=request.getContextPath()%>/view/users/my_history.jsp">戦績確認</a>
		<a href="<%=request.getContextPath()%>/LoginServlet">ログアウト</a>
	</div>
	<% }else{ %>
	<div class="header loginpage">
		<a href="<%=request.getContextPath()%>/">このサイトについて</a>
		<a href="<%=request.getContextPath()%>/">ブラックジャックのルール</a>
	</div>
	<% } %>

