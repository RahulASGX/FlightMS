package com.test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import com.dbConnection.DBconnection;

public class Search extends HttpServlet{ 
 
 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
  response.setContentType("text/html");
  PrintWriter out = response.getWriter();

	

  
  Statement st;
  try {
	  Connection con=new DBconnection().getConnection();
			/*
			 * Class.forName(driver).newInstance(); conn =
			 * DriverManager.getConnection(url+dbName,userName,password);
			 * System.out.println("Connected to the database");
			 */
  String  source  = request.getParameter("source");
  String  destination  = request.getParameter("destination");
  String passengers = request.getParameter("passengers");
  
  int p=Integer.parseInt(passengers);
  String date =request.getParameter("date");
  Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(date);  
		SimpleDateFormat sdf = new SimpleDateFormat("EEE");
		String stringDate = sdf.format(date1);
		//System.out.println("Today is: "+stringDate);
  ArrayList al=null;
  ArrayList F_list =new ArrayList();
  String query = "select * from flights where source='"+source+"'and destination='"+destination+"' and days like '"+stringDate+"%' and eseat>="+passengers+" and bseat>="+passengers+"";
  
  System.out.println("query " + query);
  st = con.createStatement();
  ResultSet  rs = st.executeQuery(query);


  while(rs.next()){
  al  = new ArrayList();
  
  al.add(rs.getString(1));
  al.add(rs.getString(2));
  al.add(rs.getString(3));
  al.add(rs.getString(4));
  al.add(rs.getString(5));
  al.add(rs.getString(6));
  al.add(rs.getString(7));
  al.add(rs.getString(8));
  al.add(rs.getString(9));
  al.add(rs.getString(10));
  System.out.println("al :: "+al);
  F_list.add(al);
  }

  request.setAttribute("FList",F_list);
  
 System.out.println("FList " + F_list);

  // out.println("emp_list " + emp_list);

 //Cookie rdate = new Cookie("date",request.getParameter("date"));

 //pass.setMaxAge(60*60*24);
// response.addCookie(rdate);
 
 HttpSession session=request.getSession();  
 session.setAttribute("date",date);
 response.setContentType("text/html");

  RequestDispatcher dispatcher = request.getRequestDispatcher("/viewSearch.jsp");

  dispatcher.forward(request,response);
  con.close();
  System.out.println("Disconnected from database");
  } catch (Exception e) {
  e.printStackTrace();
  }
  }
}