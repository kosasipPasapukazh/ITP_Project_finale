package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.ServiceModel;
import com.model.stock_insurance;
import com.service.addInsurancesService;
import com.service.addSofteService;

/**
 * Servlet implementation class addSerS
 */
@WebServlet("/addSerS")
public class addSerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addSerS() {
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
		
		 ServiceModel se1 = new ServiceModel();
		
		
		se1.setFname(request.getParameter("fName"));
		se1.setPhone(Integer.parseInt(request.getParameter("contact")));
		se1.setEmail(request.getParameter("email"));
	     se1.setComment(request.getParameter("address"));
		
		
		addSofteService s2 = new addSofteService();
		
		s2.addSoft(se1);
		
		
		response.sendRedirect("servS.jsp");
			
		
	}

}
