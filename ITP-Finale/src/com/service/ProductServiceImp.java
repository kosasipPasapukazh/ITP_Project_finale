package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.DBconnection.DBconnection;
import com.model.Product;

public class ProductServiceImp {
	
	
public int addOt(Product pro) {
		
		String addOtQuery="insert into Product(productCode,productName,unitPrice,quantity) values(?,?,?,?)";
		int rows=0;
		
		Connection DB;
		try {
			
			DB = DBconnection.getconnection();
			PreparedStatement ps=DB.prepareStatement(addOtQuery);
			
			ps.setString(1,pro.getProductCode());
			ps.setString(2,pro.getProductName());
			ps.setDouble(3,pro.getUnitPrice());
			ps.setInt(4,pro.getQuantity());
			
			rows=ps.executeUpdate();
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rows;	
		
	}
	
	
	public List<Product> getAll(){
	
	List<Product> ls=new LinkedList<>();
	
	try {
	
	Connection con=DBconnection.getconnection();
	
	String Query="select * from Product";
	
	
	PreparedStatement ps=con.prepareStatement(Query);
	
	ResultSet rs=ps.executeQuery();
	
	while(rs.next()) {
		
		Product pro=new Product();
		
		pro.setProductCode(rs.getString("productCode"));
		pro.setProductName(rs.getString("productName"));
		pro.setUnitPrice(rs.getDouble("unitPrice"));
		pro.setQuantity(rs.getInt("quantity"));
		
		ls.add(pro);
		
	}
	
	
	
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	System.out.println("we are at get all products");
	return ls;	
	
}
	
	
	
	public List<Product> getProductById(int code){
		
		List<Product> ls=new LinkedList<>();
		
		try {
		
		Connection con=DBconnection.getconnection();
		
		String Query="select * from Product where productCode= ? ";
		
		
		PreparedStatement ps=con.prepareStatement(Query);
		
		ps.setInt(1,code);
		
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			
			Product promobj=new Product();
			
			promobj.setProductCode(rs.getString("productCode"));
			promobj.setProductName(rs.getString("productName"));
			promobj.setUnitPrice(rs.getDouble("unitPrice"));
			promobj.setQuantity(rs.getInt("quantity"));
			
			
			ls.add(promobj);
			
		}
		
		
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	
		return ls;	
		
	}
	
	
	public int edit(String productCode,String productName,double unitPrice,int quantity) {
		
		
		String sql="update Product set productName=?,unitPrice=?,quantity=?"+" where productCode=? ";
		PreparedStatement ps;
		int rows=0;
		
		try {
			Connection con=DBconnection.getconnection();
			ps=con.prepareStatement(sql);
			
			ps.setString(1,productName);
			ps.setDouble(2,unitPrice);
			ps.setInt(3,quantity);
			ps.setString(4,productCode);
		
			rows=ps.executeUpdate();
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return rows;
		
		
		
	}
	
	public int delete (String pro) {
		
		String sql="delete from Product where productCode =? ";
		int rows=0;
		
		try {
			Connection con =DBconnection.getconnection();
			PreparedStatement ps=con.prepareStatement(sql);
		
			ps.setString(1,pro);
	
		
			rows=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rows;
		
		
	}
	
	
	
	
	
	
	
	

}
