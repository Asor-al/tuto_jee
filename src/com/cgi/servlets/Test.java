package com.cgi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;;

public class Test extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String paramAuteur = req.getParameter("auteur");
		String message = "L'auteur est : "+paramAuteur;
		req.setAttribute("test", message);
		this.getServletContext().getRequestDispatcher( "/WEB-INF/test.jsp" ).forward( req, resp );
	}

}
