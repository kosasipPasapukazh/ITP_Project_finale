package com.controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBconnection.DBconnection;
import com.model.Customer;
import com.model.stock_insurance;
import com.service.addCustomerService;
import com.service.addInsurancesService;

/**
 * Servlet implementation class addInsurance
 */
@WebServlet("/addInsurance")
public class addInsurance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addInsurance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
	stock_insurance ins2 = new stock_insurance();
	
		ins2.setDate(request.getParameter("date"));
		ins2.setLast_paid_payment(Double.parseDouble(request.getParameter("lastPayment")));
		ins2.setProduct_id(Integer.parseInt(request.getParameter("stock_id")));
		ins2.setRemain_payment(Double.parseDouble(request.getParameter("remainPayment")));
		ins2.setTotal_payment(Double.parseDouble(request.getParameter("lastPayment")));
		
		
		addInsurancesService inser = new addInsurancesService();
		
		inser.addInsurance(ins2);
		
		
		response.sendRedirect("insurancePage.jsp");
			
		
	}

}
