package cn.kpbrandshoppers.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

import cn.kpbrandshoppers.model.Admin;
import cn.kpbrandshoppers.service.AdminService;

public class AdminDao implements AdminService {
	private final Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	
	public AdminDao(Connection con) {
		this.con = con;
	}
	
	@Override
	public Admin logAdmin(String email, String password) {
		Admin admin = null;
		try {
		query = "select * from admin where email=? and password=?";
		pst = this.con.prepareStatement(query);
		pst.setString(1, email);
		pst.setString(2, password);
		rs = pst.executeQuery();
		
		while(rs.next()) {
			admin = new Admin();
			admin.setId(rs.getInt("aid"));
			admin.setName(rs.getString("name"));
			admin.setEmail(rs.getString("email"));
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	
}
