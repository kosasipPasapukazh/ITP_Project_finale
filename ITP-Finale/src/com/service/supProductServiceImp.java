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
import com.model.supProduct;






public class supProductServiceImp{

	public static final Logger log = Logger.getLogger(supProductServiceImp.class.getName());
	private static PreparedStatement preparedStatement;
	private static Connection connection;
	boolean results;
	
	public void addProd(supProduct Sup){
		
		
		String sqlInsertQueary = "insert into supproduct (supID,supProduct) values (?,?)";
		Connection connection=null;
		
		try {
			connection = new DBconnection().getconnection();
			preparedStatement = connection.prepareStatement(sqlInsertQueary);
			preparedStatement.setInt(1, Sup.getSupId());
			preparedStatement.setString(2, Sup.getSupProduct());
			
			System.out.println( Sup.getSupProduct());
			
			results = preparedStatement.execute();
			
			System.out.println(results);
			
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
	
	public int updatsupProduct(supProduct sup) {
		int rows=0;
		/*
		 * Before fetching employee it checks whether employee ID is available
		
			 * Update employee query will be retrieved from EmployeeQuery.xml
			 */
			try {
				connection = new DBconnection().getconnection();
				
				String updateQueary = "update supproduct s set s.supproduct = ?  where s.supId = ?";
				
				preparedStatement = connection.prepareStatement(updateQueary);
				preparedStatement.setString(1, sup.getSupProduct());
				preparedStatement.setInt(2, sup.getSupId());
				rows=preparedStatement.executeUpdate();

			} catch (SQLException e) {
				log.log(Level.SEVERE, e.getMessage());
			} finally {
				/*
				 * Close prepared statement and database connectivity at the end
				 * of transaction
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
		
		// Get the updated employee
		return rows;
	}

	
	public ArrayList<Supplier> getSupplierInfo(int supId) {

		ArrayList<Supplier> SupplierList = new ArrayList<Supplier>();
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
				
				SupplierList.add(sp);
			}

		} catch (SQLException e) {
			log.log(Level.SEVERE, e.getMessage());
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
		
		
		return SupplierList;

	}
	
	
		public List<supProduct> getAll(){
		
		List<supProduct> ls=new LinkedList<>();
		
		try {
		
		connection = new DBconnection().getconnection();
		
		String Query="select * from supproduct";
		
		
		PreparedStatement ps = connection.prepareStatement(Query);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			
			supProduct sup=new supProduct();
			
			sup.setSupId(rs.getInt("supID"));
			sup.setSupProduct(rs.getString("supproduct"));
			
			ls.add(sup);
		}
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return ls;	
	}
	
	
		public void removeSuplierProduct(int supID) {
			// Before deleting check whether employee ID is available
				
						try {
							connection = new DBconnection().getconnection();
							
							String removeQueary = " delete from supproduct s where s.supID = ?";
							
							preparedStatement = connection.prepareStatement(removeQueary);
							preparedStatement.setInt(1,supID);
							preparedStatement.executeUpdate();
							
						} catch (SQLException e) {
							log.log(Level.SEVERE, e.getMessage());
						} finally {
							/*
							 * Close prepared statement and database connectivity at the end
							 * of transaction
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
					}
			
					
			
				
		
	
	
	
}
