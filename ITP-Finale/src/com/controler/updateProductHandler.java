package com.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.model.Product;
import com.service.ProductServiceImp;

/**
 * Servlet implementation class updateProductHandler
 */
@WebServlet("/updateProductHandler")
public class updateProductHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateProductHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: xxx ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
			
			Product prom=new Product();
			
//			OT(Integer.parseInt(request.getParameter("empId")),request.getParameter("date"),Integer.parseInt(request.getParameter("hours")));
			
			prom.setProductCode(request.getParameter("productCode"));
			prom.setProductName(request.getParameter("productName"));
			prom.setUnitPrice(Double.parseDouble(request.getParameter("unitPrice")));
			prom.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		
			
			
			ProductServiceImp service=new ProductServiceImp();
			
			int rows=service.edit(prom.getProductCode(),prom.getProductName(),prom.getUnitPrice(),prom.getQuantity());
			
			request.setAttribute("rowsEditProm",rows);
			RequestDispatcher rd =request.getRequestDispatcher("productUpdateView.jsp");
		 	rd.forward(request, response);
			}
			catch(Exception e)
			{
				
				e.printStackTrace();
			}
			
			
			
			
		}
		
		
		
		
	}


