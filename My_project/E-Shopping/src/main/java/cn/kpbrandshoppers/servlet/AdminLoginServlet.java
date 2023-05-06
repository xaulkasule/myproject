package cn.kpbrandshoppers.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.kpbrandshoppers.connection.DbCon;
import cn.kpbrandshoppers.dao.AdminDao;
import cn.kpbrandshoppers.model.Admin;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/admin-login")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out = response.getWriter()){
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			AdminDao ado = new AdminDao(DbCon.getConnection());
			Admin admin = ado.logAdmin(email, password);
			if(admin!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("loggedAdmin", admin);
				response.sendRedirect("admin.jsp");
			}else {
				out.println("user doesn't exist");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
