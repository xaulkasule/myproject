package cn.kpbrandshoppers.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import cn.kpbrandshoppers.connection.DbCon;
import cn.kpbrandshoppers.dao.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LikeServlet
 */
@WebServlet("/user-like")
public class LikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
		String operation = request.getParameter("operation");
		int uid = Integer.parseInt(request.getParameter("Uid"));
		int pid = Integer.parseInt(request.getParameter("Pid"));
		
		LikeDao ldao = new LikeDao(null);
		
		if(operation.equals("like")) {
			ldao = new LikeDao(DbCon.getConnection());
			
			boolean f = ldao.insertLike(pid, uid);
			out.println(f);
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
