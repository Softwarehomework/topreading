package org.top.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.top.listener.loginListener;
import org.top.bean.User;
import org.top.dao.LoginDAOImpl;

public class Login extends HttpServlet {

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		User user = new User();
		user.setUid(request.getParameter("uid"));
		user.setPwd(request.getParameter("pwd"));
		LoginDAOImpl impl = new LoginDAOImpl();
		
		response.setContentType("text/html;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = response.getWriter();
		out = response.getWriter();
		
		//验证登录
		if (impl.login(user)) {
			// 防止重复登录
			if (!getRepeat(request, response)) {
				session.setAttribute("user", user);
				session.setAttribute("userName",user.getUid());
				
				out.print("success");
				//response.sendRedirect("index.jsp");
			} else {
				//session.setAttribute("message", "此用户已登录！");
				//response.sendRedirect("jsp/login.jsp");
				out.print("fail1");
			}
			
		}
		else{
			//session.setAttribute("message", "密码或用户名错误！");
			//response.sendRedirect("jsp/login.jsp");
			out.print("fail2");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {
	}
	
	private static boolean getRepeat(HttpServletRequest request,
			HttpServletResponse response) {
		boolean flag = false;
		List<User> list = loginListener.list;
		for (int i = 0; i < list.size(); i++) {
			User usr = list.get(i);			
			if (request.getParameter("uid").equals(usr.getUid())) {
				flag = true;
			}
		}
		return flag;
		
	}
}