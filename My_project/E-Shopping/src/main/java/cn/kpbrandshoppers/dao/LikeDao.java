package cn.kpbrandshoppers.dao;

import java.sql.*;
import cn.kpbrandshoppers.connection.*;

public class LikeDao {
	Connection connection;
	
	public LikeDao(Connection connection) {
		this.connection =connection;
	}
	
	public boolean insertLike(int pid,int uid) {
		
		boolean f=false;
		try {
			String query = "insert into like(pid,uid) values(?,?)";
			PreparedStatement p = this.connection.prepareStatement(query);
			p.setInt(1,pid);
			p.setInt(2, uid);
			p.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public int countLikeOnPost(int pid) {
		int count = 0;
		
		String query = "select count(*) from like where pid=?";
		
		try {
			PreparedStatement p = this.connection.prepareStatement(query);
			p.setInt(1, pid);
			
			ResultSet set = p.executeQuery();
			if(set.next()) {
				count=set.getInt("count(*)");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	public boolean islikedByUser(int pid,int uid) {
		boolean f=false;
		
		try {
			PreparedStatement p = this.connection.prepareStatement("select * from like where pid=? and uid=?");
			p.setInt(1, pid);
			p.setInt(2, uid);
			ResultSet set = p.executeQuery();
			
			if(set.next()) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	

}
