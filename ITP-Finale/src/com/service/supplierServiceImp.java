package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.DBconnection.DBconnection;
import com.model.Supplier;








public class supplierServiceImp {
	
	public static final Logger log = Logger.getLogger(supplierServiceImp.class.getName());
	private static PreparedStatement preparedStatement;
	private static Connection connection;
	boolean results;
	
	
	public void addSupplier(Supplier Sup){
		
		
		String sqlInsertQuery = "insert into supplier (nIc,fName,lName,password,brand,category,address,email,contact) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		Connection connection = null ;
		
		try {
			
			connection = new DBconnection().getconnection();
			preparedStatement = connection.prepareStatement(sqlInsertQuery);
			
			preparedStatement.setString(1, Sup.getNic());
			preparedStatement.setString(2, Sup.getfName());
			preparedStatement.setString(3, Sup.getlName());
			preparedStatement.setString(4, Sup.getPassword());
			preparedStatement.setString(5, Sup.getBrand());
			preparedStatement.setString(6, Sup.getCategory());
			preparedStatement.setString(7, Sup.getAddress());
			preparedStatement.setString(8, Sup.getEmail());
			
			preparedStatement.setString(9, Sup.getContact());
			
			results = preparedStatement.execute();
			
		} catch (SQLException e) {
			
			log.log(Level.SEVERE, e.getMessage());
			
		}finally {
				
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (connection != null) {
						connection.close();
					}
				} catch (SQLException e) {
					log.log(Level.SEVERE, e.getMessage());
				}
			}
	}
	
	public ArrayList<Supplier> getSupplierInfo(int supId) {

		ArrayList<Supplier> SupList = new ArrayList<Supplier>();
		
		
		try {
			
			connection = new DBconnection().getconnection();
		
				String query1 = "select * from supplier where supId = ?";
				preparedStatement = connection.prepareStatement(query1);
				preparedStatement.setInt(1,supId);
		
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				
				
				Supplier sp = new Supplier();
				
				sp.setNic(resultSet.getString(1));
				sp.setfName(resultSet.getString(2));
				sp.setlName(resultSet.getString(3));
				sp.setPassword(resultSet.getString(4));
				sp.setBrand(resultSet.getString(5));
				sp.setCategory(resultSet.getString(6));
				sp.setAddress(resultSet.getString(7));
				sp.setEmail(resultSet.getString(8));
				
				sp.setContact(resultSet.getString(9));
				
				SupList.add(sp);
				
			}
		} catch (SQLException e) {
			
			log.log(Level.SEVERE, e.getMessage());
			
			System.out.println("Here");
		
			} finally {
			
			/*
			 * Close prepared statement and database connectivity at the end of
			 * transaction
			 */
			
			try {
				
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				
				if (connection != null) {
					connection.close();
				}
				
			} catch (SQLException e) {
				
				log.log(Level.SEVERE, e.getMessage());
			
			}
		}
		
		return SupList;
	}
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	public List getSupNameID(){

		String Query="select * from supplier";
		List <Supplier> ls = new LinkedList<Supplier>();


		try {

		Connection db = new DBconnection().getconnection();

		PreparedStatement ps=db.prepareStatement(Query);

		ResultSet rs=ps.executeQuery();

		if (rs.next() == false) {
			
		        System.out.println("ResultSet is empty in Java");
		        
		    } else {

		    do {
		       
		    Supplier sup=new Supplier();
		    
		    
		    sup.setSupId(rs.getInt("supId"));
		    sup.setfName(rs.getString("fName"));
		    sup.setlName(rs.getString("lName"));
		    

		    ls.add(sup);
		   

		        } while (rs.next());
		      }


		} catch (SQLException e) {
		// TODO Auto-generated catch block
					e.printStackTrace();
		}    


		return ls;


		}
	
	
public List<Supplier> getAll(){
		
		List<Supplier> ls = new LinkedList<>();
		
		try {
		
		connection = new DBconnection().getconnection();
		
		String Query="select * from supplier";
		
		
		PreparedStatement ps = connection.prepareStatement(Query);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			Supplier sup=new Supplier(); 
			
			sup.setSupId(rs.getInt("supId"));
			
			sup.setNic(rs.getString("nIc"));
			sup.setfName(rs.getString("fName"));
			sup.setlName(rs.getString("lName"));
			sup.setPassword(rs.getString("password"));
			sup.setBrand(rs.getString("brand"));
			sup.setCategory(rs.getString("category"));
			sup.setAddress(rs.getString("address"));
			sup.setEmail(rs.getString("email"));
			
			sup.setContact(rs.getString("contact"));
			
			ls.add(sup);		
			
		}
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return ls;	
	}
	
	
	
	

}
