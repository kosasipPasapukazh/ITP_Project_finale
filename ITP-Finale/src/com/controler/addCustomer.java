package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Customer;
import com.model.OT;
import com.service.IOTServiceImp;
import com.service.OTServiceImp;
import com.service.addCustomerService;

/**
 * Servlet implementation class addCustomer
 */
@WebServlet("/addCustomer")
public class addCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCustomer() {
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
		

		Customer cus= new Customer();
		cus.setFname(request.getParameter("firstName"));
		cus.setDateOfbirth(request.getParameter("DOB"));
		cus.setEmail(request.getParameter("Enteremail"));
		cus.setLname(request.getParameter("lastName"));
		cus.setPass(request.getParameter("pw"));
		cus.setPhone(Integer.parseInt(request.getParameter("num")));
		cus.setAddress(request.getParameter("add"));
		
		
		
		addCustomerService cust1 = new addCustomerService();
		
		
		cust1.addCustomer(cus);
		
		
		
		
		response.sendRedirect("UserRegistration.jsp");
		
		
		
		
		
		
		
		
		
	}

}
