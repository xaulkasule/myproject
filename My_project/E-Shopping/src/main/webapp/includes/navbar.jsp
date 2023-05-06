<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import="cn.kpbrandshoppers.connection.DbCon" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container light-blue darken-3">
		<a class="navbar-brand " href="index.jsp">KP Brand Shoppers</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart<span class="badge badge-danger px-1">${ cart_list.size() }</span></a></li>
				<%
				if(auth!=null){
				%>
					<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
					<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
				
				<% }else{%>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="signup.jsp">Sign-Up</a></li>
					
				<%}
				%>
				
				
				
				
			</ul>
		</div>
	</div>
</nav>