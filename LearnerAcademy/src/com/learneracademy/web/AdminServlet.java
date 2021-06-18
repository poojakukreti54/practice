package com.learneracademy.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learneracademy.dao.AdminDAO;
import com.learneracademy.models.Admin;

public class AdminServlet extends HttpServlet {

	AdminDAO adminDAO;

	private static final long serialVersionUID = 1L;

	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		adminDAO = new AdminDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		System.out.println(action);

		try {

			switch (action) {
			case "/newAdmin":
				newAdminForm(request, response);
				break;

			case "/insertAdmin":
				insertAdmin(request, response);
				break;

			case "/listAdmin":
				listAdmin(request, response);
				break;

			case "/delete":
				deleteAdmin(request, response);
				break;

			case "/updateAdmin":
				updateAdmin(request, response);
				break;

			default:
				listAdmin(request, response);
				break;
			}
			// listEmployees(request, response);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}

	}

	private void updateAdmin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	private void deleteAdmin(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// TODO Auto-generated method stub

		/*
		 * Admin admid = new Admin(); admid.setAdminid(request.getParameter("adminid"));
		 * adminDAO.deleteAdmin(admid);
		 */

		 int admid = Integer.parseInt(request.getParameter("adminid"));
		 //String admin = request.getParameter("adminid"); 
		 adminDAO.deleteAdmin(admid);
		 
		listAdmin(request, response);

		/*
		 * if (request.getAttribute("adminid") == null) { System.out.println("bye"); }
		 * else { System.out.println(request.getParameter("adminid")); } // int id =
		 * Integer.parseInt(request.getParameter("deptid")); PrintWriter out =
		 * response.getWriter(); out.println("deleting admin...");
		 */

	}

	private void listAdmin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		List<Admin> adminList = adminDAO.getAllAdmin();
		request.setAttribute("admins", adminList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
		dispatcher.forward(request, response);

	}

	private void insertAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Admin admin = new Admin();
		admin.setAdminname(request.getParameter("adminname"));
		admin.setAdminpassword(request.getParameter("adminpassword"));
		adminDAO.insertAdmin(admin);
		response.sendRedirect("listAdmin");

	}

	private void newAdminForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("newAdminForm.jsp");
		dispatcher.forward(request, response);

	}

}
