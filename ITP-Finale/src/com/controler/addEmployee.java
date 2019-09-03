package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.model.stock_insurance;
import com.service.addEmployeeService;
import com.service.addInsurancesService;

/**
 * Servlet implementation class addEmployee
 */
@WebServlet("/addEmployee")
public class addEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addEmployee() {
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
		
		Employee e2 = new Employee();
		
		e2.setDOB(request.getParameter("AddEmployeeDOB"));
		e2.setAddress(request.getParameter("AddEmployeeAddress"));
		
		e2.setDepartment(request.getParameter("AddEmployeeDepartment"));
		e2.setEID(request.getParameter("AddEmployeeEID"));
		e2.setFname(request.getParameter("AddEmployeeFirstName"));
		e2.setEmail(request.getParameter("AddEmployeeEmail"));
		e2.setNIC(request.getParameter("AddEmployeeNIC"));
		e2.setPass(request.getParameter("AddEmployeePassword"));
		e2.setPhonenumber(Integer.parseInt(request.getParameter("phoneNumber")));
		
		e2.setPosition(request.getParameter("AddEmployeePosition"));
		
		e2.setGender(request.getParameter("AddEmployeeGender"));
		e2.setLname(request.getParameter("AddEmployeeLastName"));
		
	
		
		
		addEmployeeService es = new addEmployeeService();
		
		es.addEmployee(e2);
		
		
		response.sendRedirect("EmployeeManagerpage.jsp");
			
	}

}
