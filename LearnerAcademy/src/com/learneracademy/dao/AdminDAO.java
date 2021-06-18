package com.learneracademy.dao;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.learneracademy.models.Admin;

public class AdminDAO {

	
	
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;
	
public AdminDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL;
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
		}
	
	void connect() throws SQLException{
		if(jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
			}catch(Exception ex) {
				System.out.println(ex.getMessage());
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
	}
	
	
	public List<Admin> getAllAdmin(){
		
		List<Admin> adminList = new ArrayList<Admin>();
		
		
		try {
			connect();
			PreparedStatement statement = jdbcConnection.prepareStatement("select * from admins");
			ResultSet rs= statement.executeQuery();
			while (rs.next()) {
				//System.out.println(rs.getInt(1)+" : "+ rs.getString(2)+" : "+ rs.getString(3));
				
				Admin admin = new Admin();
				admin.setAdminid(rs.getInt(1));
				admin.setAdminname(rs.getString(2));
				admin.setAdminpassword(rs.getString(3));
				System.out.println(admin);
				adminList.add(admin);
			}
			
			jdbcConnection.close();
		}
		
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return adminList;
		
	}
	
	public void insertAdmin(Admin adm) {
		
		try {
			connect();
			PreparedStatement statement = jdbcConnection.prepareStatement
					("insert into admins(adminname,adminpassword) values(?,?)");
			statement.setString(1, adm.getAdminname());
			statement.setString(2, adm.getAdminpassword());
			int rows= statement.executeUpdate();

			if (rows>1) {
				//System.out.println(rs.getInt(1)+" : "+ rs.getString(2)+" : "+ rs.getString(3));
				
				System.out.println("Admin inserted successfully");
			} else {
				System.out.println("there is some error while inserting admin");
			}
			
			jdbcConnection.close();
			
		}
		catch(Exception ex) {
			
		}
		
	}

	public void deleteAdmin(int id) {
		
		
		try {
			
			
			connect();
			
			
			PreparedStatement statement = jdbcConnection.prepareStatement
					("delete from student where id=?");
			statement.setInt(1, id);
			//statement.setString(2, adm.getAdminpassword());
			int rows= statement.executeUpdate();

			if (rows>0) {
				//System.out.println(rs.getInt(1)+" : "+ rs.getString(2)+" : "+ rs.getString(3));
				
				System.out.println("Admin deleted successfully");
			} else {
				System.out.println("there is some error while deleting admin");
			}
			
			jdbcConnection.close();
			
			
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		
		
		
	}
	
	
	
}
