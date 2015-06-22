package org.top.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.top.bean.User;
import org.top.dao.LoginDAOImpl;

public class Register extends HttpServlet {

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		User user = new User();
		user.setUid(request.getParameter("uname"));
		LoginDAOImpl impl = new LoginDAOImpl();
		boolean judge = impl.getUser(user);
		out.print(judge);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		user.setUid(request.getParameter("uname"));
		user.setPwd(request.getParameter("password"));
		LoginDAOImpl impl = new LoginDAOImpl();
		
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = response.getWriter();
		
		boolean judge = impl.register(user);
		if (judge){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			session.setAttribute("userName",user.getUid());
			response.sendRedirect("index.jsp");
		}
			
		out.print(judge);
	}

	public void init() throws ServletException {
	}
}