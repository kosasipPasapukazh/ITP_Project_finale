package com.DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBconnection {
        public static Connection getconnection() {
        	
        		try {
        				Class.forName("com.mysql.jdbc.Driver");
        				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/starx", "root", "Sliitstudent123");
        				return con;
        		} catch (ClassNotFoundException | SQLException e) {
        				// TODO Auto-generated catch block
        				e.printStackTrace();
        		}
        			return null;
        	
        }//ending get connection method



        public boolean doesExist(String uname){
    		boolean status=false;
    		try{
    			Connection conn=getconnection();
    			PreparedStatement ps=conn.prepareStatement("select * from staffTest where name=?");
    			ps.setString(1, uname);
    			ResultSet rs=ps.executeQuery();
    			status=rs.next();
    		}catch(Exception e){
    			e.printStackTrace();
    		}return status;
    			
    		
    	}
    	
    	public boolean login(String uname, String pass){
    		boolean status=false;
    		try{
    			Connection conn=getconnection();
    			PreparedStatement ps=conn.prepareStatement("select * from staffTest where name=? and  password=?");
    			ps.setString(1, uname);
    			ps.setString(2, pass);
    			ResultSet rs=ps.executeQuery();
    			status=rs.next();
    		}catch(Exception e){
    			e.printStackTrace();
    		}return status;
    			
    		
    	}
    	public String utype(String uname) throws ClassNotFoundException, SQLException{
    		Connection conn=getconnection();
    		String status="index.jsp";
    		try{
    			PreparedStatement ps=conn.prepareStatement("select * from staffTest where name=?");
    			ps.setString(1, uname);
    			ResultSet rs=ps.executeQuery();
    			if(rs.next()){
    				String ut=(String)rs.getString("position");
    				if(ut.equals("SALM")){
    					status="SalaryManagement.jsp";
    				
    				}else if(ut.equals("ACCM")){
    					status="AccManPage.jsp";
    				}else if(ut.equals("SERM")){
    					status="servMain.jsp";
    				}else if(ut.equals("EMPM")){
    					status="EmployeeManagerpage.jsp";
    				}else if(ut.equals("ORDM")){
    					status="index.jsp";
    				}else if(ut.equals("CUSM")){
    					status="UserRegistration.jsp";
    				}else if(ut.equals("STOM")){
    					status="StockManager.jsp";
    				}else if(ut.equals("SUPM")){
    					status="supMMain.jsp";
    				}
    				
    			}
    			
    		}catch(Exception e){
    			e.printStackTrace();
    		}
    		
    		return status;
    	}
    	
    }
    	
    	



	
