package com.example.hibernate;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class HelloWorld extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    Session session = HibernateSessionManager.getSessionFactory().openSession();
    session.beginTransaction();
    Query query = session.createQuery("from User");
    List list = query.list();
    PrintWriter out = response.getWriter();
    request.setAttribute("data",list);
    request.getRequestDispatcher("/table.jsp").forward(request, response);

  }
}
