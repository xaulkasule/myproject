<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "cn.kpbrandshoppers.model.*" %>
<%@ page import= "cn.kpbrandshoppers.connection.*" %>

<%
Admin admin = (Admin)session.getAttribute("loggedAdmin");
if(admin == null){
	response.sendRedirect("adminlogin.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Admin Panel</title>
<%@include file="includes/header.jsp"%>

</head>
<body>

<%@include file="includes/adminnavbar.jsp"%>

<div class="card-header my-3">Admin Panel</div>


<%= admin.getName() %>
	
<%@include file="includes/footer.jsp"%>


</body>
</html>