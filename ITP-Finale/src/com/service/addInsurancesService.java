package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.DBconnection.DBconnection;
import com.model.Customer;
import com.model.stock_insurance;

public class addInsurancesService {
	
public void addInsurance(stock_insurance ins1) {
		
		String addOtQuery="insert into stock_insurance (Product_id,Total_payment,Last_payment,date,Remain_amount) values(?,?,?,?,?)";
		
		
		Connection DB;
		try {
			
			DB = DBconnection.getconnection();
			PreparedStatement ps=DB.prepareStatement(addOtQuery);
			
			ps.setInt(1,ins1.getProduct_id());
			ps.setDouble(2,ins1.getTotal_payment());
			ps.setDouble(3,ins1.getLast_paid_payment());
			ps.setString(4,ins1.getDate());
			ps.setDouble(5,ins1.getRemain_payment());
			
			
			ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
  }
}
