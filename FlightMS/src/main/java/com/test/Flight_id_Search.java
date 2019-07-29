package com.test;
 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import com.dbConnection.DBconnection;

import com.dbConnection.DBconnection;
public class Flight_id_Search extends HttpServlet{ 
 
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
  String  fid  = request.getParameter("fid");
  
  ArrayList al=null;
  ArrayList F_list =new ArrayList();
  String query = "select * from flights where fid='"+fid+"'";
  
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


  RequestDispatcher dispatcher = request.getRequestDispatcher("/fid_Search.jsp");
  dispatcher.forward(request,response);
  con.close();
  System.out.println("Disconnected from database");
  } catch (Exception e) {
  e.printStackTrace();
  }
  }
}