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

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
//		out.println("this is update servlet");
		try {
			
			int note_id=Integer.parseInt(request.getParameter("note_id").trim());
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			
			Session session=FactoryProvider.factory.openSession();
			Transaction tx=session.beginTransaction();
			
			Note note=session.get(Note.class, note_id);
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			
			tx.commit();
			session.close();
			
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}