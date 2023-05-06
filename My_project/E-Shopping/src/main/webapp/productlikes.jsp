<%@ page import="cn.kpbrandshoppers.connection.DbCon"%>
<%@ page import="cn.kpbrandshoppers.model.*"%>
<%@ page import="cn.kpbrandshoppers.dao.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if(cart_list != null){
	ProductDao pDao = new ProductDao(DbCon.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("cart_list", cart_list);
	request.setAttribute("total", total);
	
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Product Likes</title>
<%@include file="includes/header.jsp"%>
<style type="text/css">
.table tbody td{
verticle-align: middle;
}
.btn-incre, .btn-decre{
box-shadow:none;
font-size:25px;
}
</style>
</head>
<body>

	<%@include file="includes/adminnavbar.jsp"%>

	<div class="container">
		
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Likes</th>
				</tr>
			</thead>
			<tbody>
			<% if(cart_list != null){
					for(Cart c:cartProduct){%>
						<tr>
						<td><%= c.getName() %></td>
						<td><%= c.getCategory() %></td>
						<td>Shs<%= dcf.format(c.getPrice()) %></td>
						<td>
							<form action="order-now" method="post" class="form-inline">
								<input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
								<div class="form-group d-flex justify-content-between w-50">
									<a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%= c.getId() %>"><i class="fas fa-minus-square"></i></a>
									<input type="text" name="quantity" class="form-control w-50" value="<%= c.getQuantity() %>" readonly>
									<a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%= c.getId() %>"><i class="fas fa-plus-square"></i></a>
								</div>
								
							</form>
						</td>
						
					</tr>	
						<%}
			}
			%>
				
			</tbody>
		</table>

	</div>


	<%@include file="includes/footer.jsp"%>

</body>
</html>