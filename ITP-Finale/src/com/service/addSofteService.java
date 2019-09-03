package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBconnection.DBconnection;
import com.model.ServiceModel;

public class addSofteService {
   public void addSoft(ServiceModel s1) {
	   
	   String addOtQuery="insert into consultation_soft (User_name,Email,Phone,Help_msg) values(?,?,?,?)";
		
		
		Connection DB;
		try {
			
			DB = DBconnection.getconnection();
			PreparedStatement ps=DB.prepareStatement(addOtQuery);
			
			ps.setString(1,s1.getFname());
			ps.setString(2, s1.getEmail());
			ps.setInt(3,s1.getPhone());
			ps.setString(4, s1.getComment());
			
			
			
			ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
   }
}
