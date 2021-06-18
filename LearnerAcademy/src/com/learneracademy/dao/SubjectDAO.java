package com.learneracademy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.learneracademy.models.Subjects;

public class SubjectDAO {

	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;
	
	public SubjectDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		super();
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
	
	public List<Subjects> getAllDepartments(){
		
		List<Subjects> subjectList = new ArrayList<Subjects>();
		
		
		try {
			connect();
			PreparedStatement statement = jdbcConnection.prepareStatement("select * from subjects");
			ResultSet rs= statement.executeQuery();
			while (rs.next()) {
				//System.out.println(rs.getInt(1)+" : "+ rs.getString(2)+" : "+ rs.getString(3));
				
				Subjects Subject = new Subjects();
				Subject.setSubjectid(rs.getInt(1));
				Subject.setSubjectname(rs.getString(2));
				Subject.setSubjectclassassigned(rs.getString(3));
				System.out.println(Subject);
				subjectList.add(Subject);
			}
			
			jdbcConnection.close();
		}
		
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return subjectList;
	
	
	

}
