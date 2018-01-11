<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String username = (String)request.getAttribute("username");
%>
<!DOCTYPE>
<html>
  <head>
    <title>index</title>
    <script type="text/javascript" src="assets/global/plugins/jquery/jquery-3.2.1.min.js"></script>
  </head>
  <body>
  	path: <%=path %></br>
  	basePath:<%=basePath%></br>
    	欢迎<%= username %>登陆
  </body>
</html>