package com.controler;


import javax.servlet.*;
import java.sql.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBconnection.DBconnection;

import java.io.*;
@WebServlet("/login")
public class login extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		try{
			DBconnection ds=new DBconnection();
			
			if(ds.login(uname, pass)){
				HttpSession session=request.getSession();
    		     session.setAttribute("user", uname);
                
    		     
    		     try{
    		    	 
    		    	 String userinterface=ds.utype(uname);
    		    	 
    		    	 
    		    	 
    		    	 if(userinterface != null){
    		    		
    		    		 HttpSession sess=request.getSession();
    	    		     session.setAttribute("check",userinterface);
    	               
    		    		 
    		    			 RequestDispatcher rd=request.getRequestDispatcher(userinterface); 
    		    			 rd.forward(request, response);
    		    		 
    		    	 }
    		    	  
    		      }catch(Exception e){
    		    	  e.printStackTrace();
    		    	  
    		      }
    		     
    	  
   
			}else{
				RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
				rd.include(request, response);
				 out.println("<font style='color:red;margin-top:150px;margin-left:40%;'>Wrong UserName Or Password</font>");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	
}
