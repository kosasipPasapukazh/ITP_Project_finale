package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.DBconnection.DBconnection;
import com.model.StaffTest;

public class StaffTestServiceImp {

	
	public List getEmpNames(){
		
		String Query="select empId,name from stafftest";
		List <StaffTest> ls=new LinkedList();
		
		
		try {
		
		Connection db=new DBconnection().getconnection();
		
		PreparedStatement ps=db.prepareStatement(Query);	
		
		ResultSet rs=ps.executeQuery();
		
		if (rs.next() == false) {
	        System.out.println("ResultSet is empty in Java");
	     } else {

	    do {
	       
	    	StaffTest stEmp=new StaffTest();
	    	
	    	stEmp.setEmpId(rs.getInt("empId")); 
	    	stEmp.setName(rs.getString("name"));
	    	
	    	ls.add(stEmp);
	    	
	        } while (rs.next());
	      }
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
		
		
		return ls;
		
		
	}
	
	
	public List getEmpPositions(){
		
		String Query="select  distinct position from staffTest";
		List <StaffTest> ls=new LinkedList();
		
		
		try {
		
		Connection db=new DBconnection().getconnection();
		
		PreparedStatement ps=db.prepareStatement(Query);	
		
		ResultSet rs=ps.executeQuery();
		
		if (rs.next() == false) {
	        System.out.println("ResultSet is empty in Java");
	     } else {

	    do {
	       
	    	StaffTest stEmp=new StaffTest();
	    	
	    	
	    	stEmp.setPosition(rs.getString("position"));
	    	
	    	ls.add(stEmp);
	    	
	        } while (rs.next());
	      }
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
		
		
		return ls;
		
		
	}
	
	
	
	
	
}
