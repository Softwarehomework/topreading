package org.top.servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TransComment extends HttpServlet {

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//HttpSession session = request.getSession();
		//PrintWriter out =response.getWriter();
		//out.println("a.txt");
		String user_name=new String(request.getParameter("Post_Name"));
		System.out.println(user_name);
		String book_name=new String(request.getParameter("Book_Name"));
		System.out.println(book_name);
		String content=new String(request.getParameter("Post_Content"));
		//System.out.println(content);
		SimpleDateFormat simple=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=simple.format(new Date());
		BufferedWriter out = null; 
		try { 
			out = new BufferedWriter(new FileWriter("D:\\comment.txt", true)); 
		    if(content.equals("")||user_name.equals("")||book_name.equals(""))
		    	response.sendRedirect("/topreading/comment.jsp");
		    else{
		    	out.write(book_name+"\t"+content+"\t"+user_name+"\t"+date+"\n");
		    	response.sendRedirect("/topreading/bookmark.jsp");
		    }
		} catch (IOException e) { 
		    // error processing code 
		} finally { 
		    if (out != null) { 
		         out.close(); 
		    } 
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {
	}
	
}