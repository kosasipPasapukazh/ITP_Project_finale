package com.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BasicSalary;
import com.service.BasicSalaryServiceImp;
/*fuck

/**
 * Servlet implementation class addBasicSalary
 */
@WebServlet("/addBasicSalary")
public class addBasicSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addBasicSalary() {
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
		
		BasicSalary bs=new BasicSalary();
		
		bs.setPostion(request.getParameter("position"));
		bs.setBasicsalary(Double.parseDouble(request.getParameter("basicSalary")));
		bs.setDate(request.getParameter("date"));
		
		
		BasicSalaryServiceImp imp=new BasicSalaryServiceImp();
		
		int rows=imp.addBS(bs);
				
		HttpSession session=request.getSession();
		
		session.setAttribute("rowsBS",rows);
		
		response.sendRedirect("SalaryManagement.jsp");
		
		
		
		
		
		
		
	}

}
