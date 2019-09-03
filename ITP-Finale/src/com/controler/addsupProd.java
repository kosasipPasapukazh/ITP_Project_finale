package com.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.supProduct;
import com.service.supProductServiceImp;




/**
 * Servlet implementation class addsupProd
 */
@WebServlet("/addsupProd")
public class addsupProd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addsupProd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		supProduct sup = new supProduct();
		
	
		sup.setSupId(Integer.parseInt(request.getParameter("supId")));
		sup.setSupProduct(request.getParameter("supProduct"));
		

		supProductServiceImp addSup = new supProductServiceImp();
		
		addSup.addProd(sup);
		
	
		response.sendRedirect("supProductUpdate.jsp");
		
		
		
		
		
		
	}

}
