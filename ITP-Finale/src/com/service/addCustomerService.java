package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBconnection.DBconnection;
import com.model.Customer;


public class addCustomerService {

	
	public  void addCustomer(Customer cust) {
		
		String addOtQuery="insert into customer_details (User_Name,Last_Name,Email,Password,Date_of_birth,Address,phone) values(?,?,?,?,?,?,?)";
		
		
		Connection DB;
		try {
			
			DB = DBconnection.getconnection();
			PreparedStatement ps=DB.prepareStatement(addOtQuery);
			
			ps.setString(1,cust.getFname());
			ps.setString(2,cust.getLname());
			ps.setString(3,cust.getEmail());
			ps.setString(4,cust.getPass());
			ps.setString(5,cust.getDateOfbirth());
			ps.setString(6,cust.getAddress());
			ps.setInt(7,cust.getPhone());
			
			
			
			ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
	}
	
	
	
	
	
	
	
	
}
