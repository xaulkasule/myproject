package cn.kpbrandshoppers.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.kpbrandshoppers.connection.DbCon;
import cn.kpbrandshoppers.dao.UserDao;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/user-signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("signup-name");
		String email = request.getParameter("signup-email");
		String password = request.getParameter("signup-password");
		RequestDispatcher dispatcher = null;
		Connection connection = null;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart","root","12345");
			//UserDao udao = new UserDao(DbCon.getConnection());
			PreparedStatement pst = connection.prepareStatement("insert into users(name,email,password) values(?,?,?)");
			
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, password);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signup.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
				
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
