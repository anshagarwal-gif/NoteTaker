package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.*;
import com.helper.factoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
//			fetch data from website
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note note=new Note(title,content,new Date());
//			now we save this data into database using hibernate	
		
			
			Session s=factoryProvider.getFactory().openSession();
			
			Transaction tx=s.beginTransaction();
			
			s.save(note);
			tx.commit();
			
			
			s.close();
			response.sendRedirect("index.html");
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1>Node is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>");
		}catch(Exception e)
			{
			e.printStackTrace();
			}
		
	}

}
