package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dbConnection.DBconnection;
/**
 * Servlet implementation class Running_status
 */
public class Running_status extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Running_status() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();

			

		  
		  Statement st;
		  try {
			  Connection con=new DBconnection().getConnection();
					
			/*
			 * String source = request.getParameter("source"); String destination =
			 * request.getParameter("destination"); String passengers =
			 * request.getParameter("passengers"); String date
			 * =request.getParameter("date"); Date date1=new
			 * SimpleDateFormat("yyyy-MM-dd").parse(date); SimpleDateFormat sdf = new
			 * SimpleDateFormat("EEE"); String stringDate = sdf.format(date1);
			 * //System.out.println("Today is: "+stringDate);
			 */		  ArrayList al=null;
		  ArrayList F_list =new ArrayList();
		  String query = "select * from running_status";
		  
		  System.out.println("query " + query);
		  st = con.createStatement();
		  ResultSet  rs = st.executeQuery(query);


		  while(rs.next()){
		  al  = new ArrayList();
		  
		  al.add(rs.getString(1));
		  al.add(rs.getString(2));
		  al.add(rs.getString(3));
		  al.add(rs.getString(4));
		  
		  System.out.println("al :: "+al);
		  F_list.add(al);
		  }

		  request.setAttribute("FList",F_list);
		  
		 System.out.println("FList " + F_list);

		  // out.println("emp_list " + emp_list);


		  RequestDispatcher dispatcher = request.getRequestDispatcher("/Running_stat.jsp");
		  dispatcher.forward(request,response);
		  con.close();
		  System.out.println("Disconnected from database");
		  } catch (Exception e) {
		  e.printStackTrace();
		  }
	}

}
