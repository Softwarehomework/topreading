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

public class searchbook extends HttpServlet {

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//HttpSession session = request.getSession();
		//PrintWriter out =response.getWriter();
		//out.println("a.txt");
		/*String user_name=new String(request.getParameter("Post_Name"));
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
		}*/
		String bookname =new String(request.getParameter("sousuo"));
		TreeMap<Long,File> tm = new TreeMap<Long,File>();
		
		  File file = new File("E:\\ ÈºÆ\\ È");
		  File subFile[] = file.listFiles();
		  int fileNum = subFile.length;
		  for (int i = 0; i < fileNum; i++) {
		   Long tempLong = new Long(subFile[i].lastModified());
		   tm.put(tempLong, subFile[i]);
		  }
		  
		  Set<Long> set = tm.keySet();
		  Iterator<Long> it = set.iterator();
		  
		  int i = 0;
		  int size = set.size();
		  String names[] = new String[size];
		  
		  while (it.hasNext()) {
		   Object key = it.next();
		   Object objValue = tm.get(key);
		   File tempFile = (File) objValue;
		   Date date=new Date((Long)key);
		  // System.out.println(tempFile.getPath() + "\t"+date);
		   names[i] = new String(tempFile.getName());
				   
			i ++;
			
			if(i == size)
				break;
		  }
		  
		  String[] true_names = new String[9];
		  
		  for(i = 0; i < 9; i ++)
		  {
			  true_names[i] = names[size - i - 1].split("\\.")[0];
			  //System.out.println(true_names[i]);
		  }
		  
		  String[] random_names = new String[8];
		  int ra = new Random().nextInt(size - 1) % size;
		  for(int j = 0; j < 8; j ++)
		  {
			  int k = (ra + j) % size;
			  System.out.printf("k is %d\n", k);
			  random_names[j] = names[k];
			  System.out.println(random_names[j]);
		  }
		  
		  boolean is_exist = false;
		  for(int j = 0; j < size; j ++)
		  {
			  if(bookname.equals(names[j]))
			  {
				  is_exist = true;
				  break;
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