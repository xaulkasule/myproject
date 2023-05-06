<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<style type="text/css">
#adminlogin{
position:absolute;
width:350px;
height:500px;
padding:20px;
top:50%;
left:50%;
transform:translate(-50%,-50%);
}
.form{
padding:20px;
}
.pt-1{
padding-top:1rem;
}

</style>
</head>
<body>
	<section id="adminlogin">
		<div class="card z-depth-3">
			<div class="card-panel center light-blue darken-3">
				<span class="card-title white-text">Admin Login</span>
			</div>
		
			<form action="admin-login" class="form" method="post">
				<div class="form-control">
				 <input type="email" class="validate" name="email" required>
				 <label>Email</label>
				</div>
				<div class="form-control">
				 <input type="password" class="validate" name="password" required>
				 <label>Password</label>
				</div>
				<div class="center">
					<button type="submit" class="btn-large light-blue darken-3">Sign In</button>
				</div>
				<div class="center pt-1">
					<a href="#">Forgot Password</a>
				</div>
			</form>
		</div>
	</section>
	

	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>