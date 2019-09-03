package com.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Supplier;
import com.service.supplierServiceImp;




/**
 * Servlet implementation class AddSupplier
 */

@WebServlet("/AddSupplier")
public class AddSupplier extends HttpServlet {
	
	private static final int serialVersionUID = (int) 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public AddSupplier() {
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
		
		Supplier sup = new Supplier();
		
		sup.setNic(request.getParameter("nIc"));
		sup.setfName(request.getParameter("fName"));
		sup.setlName(request.getParameter("lName"));
		sup.setPassword(request.getParameter("password"));
		sup.setBrand(request.getParameter("brand"));
		sup.setCategory(request.getParameter("category"));
		sup.setAddress(request.getParameter("address"));
		sup.setEmail(request.getParameter("email"));
		sup.setContact(request.getParameter("contact"));
		// worker.setWorkingHrs(Integer.parseInt(request.getParameter("workingHrs")));
		
		
		supplierServiceImp addSup=new supplierServiceImp();
		
		addSup.addSupplier(sup);
		
		response.sendRedirect("supReg.jsp");
		
		
	}

}
