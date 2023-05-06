<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import="cn.kpbrandshoppers.connection.DbCon" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand " href="index.jsp">KP Brand Shoppers</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="admin.jsp">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Add Products</a></li>
				<li class="nav-item"><a class="nav-link" href="edit.jsp">Edit Products</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Product Likes</a></li>
				<li class="nav-item"><a class="nav-link" href="received.jsp">Orders Received</a></li>
				<li class="nav-item"><a class="nav-link" href="cancelled.jsp">Orders Cancelled</a></li>
				<li class="nav-item"><a class="nav-link" href="delivered.jsp">Orders Delivered</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
					
				
				
				
				
				
			</ul>
		</div>
	</div>
</nav>