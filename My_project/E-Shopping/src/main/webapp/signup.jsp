<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>	
<%@ page import="cn.kpbrandshoppers.model.*" %>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		//request.setAttribute("auth",auth);
		response.sendRedirect("index.jsp");
	}
	
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if(cart_list != null){ 
		request.setAttribute("cart_list", cart_list);
	}

	%>
<!DOCTYPE html>
<html>
<head>
<title>Shopping Cart Sign-Up</title>
<%@include file="includes/header.jsp"%>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<%@include file="includes/navbar.jsp"%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Sign-Up</div>
			<div class="card-body">
				<form action="user-signup" method="post">

					<div class="form-group">
						<label>Name</label> <input type="name"
							class="form-control" name="signup-name"
							placeholder="Enter your Name" required></input>
					</div>
					
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="signup-email"
							placeholder="Enter your Email" required></input>
					</div>

					<div class="form-group">
						<label>Enter Password</label> <input type="password"
							class="form-control" name="signup-password"
							placeholder="*********" required></input>
					</div>
					
					<div class="form-group">
						<label>Re-enter Password</label> <input type="password"
							class="form-control" name="signup-password"
							placeholder="*********" required></input>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary form-submit">Sign-Up</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	
	<script src="http://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("Congrats","Account Created Successfully","success");
	}
	
	</script>

	<%@include file="includes/footer.jsp"%>

</body>
</html>