package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBconnection.DBconnection;
import com.model.Employee;
import com.model.stock_insurance;

public class addEmployeeService {
	
   public void addEmployee(Employee e1) {
		
		String addOtQuery="insert into employee (EID,Password,Fname,Lname,NIC,DOB,gender,Position,Department,Address,email,phoneNumber) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		Connection DB;
		try {
			
			DB = DBconnection.getconnection();
			PreparedStatement ps=DB.prepareStatement(addOtQuery);
			
			ps.setString(1,e1.getEID());
			ps.setString(2,e1.getPass());
			ps.setString(3, e1.getFname());
			ps.setString(4, e1.getLname());
			ps.setString(5, e1.getNIC());
			ps.setString(6, e1.getDOB());
			ps.setString(7, e1.getGender());
			ps.setString(8,e1.getPosition());
			ps.setString(9, e1.getDepartment());
			ps.setString(10, e1.getAddress());
			ps.setString(11, e1.getEmail());
			ps.setInt(12, e1.getPhonenumber());

			ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
  }
}
