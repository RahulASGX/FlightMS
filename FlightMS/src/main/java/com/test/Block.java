
  package com.test;
  
  import java.io.IOException; 
  import java.io.PrintWriter;
  import java.sql.Connection; 
  import java.sql.PreparedStatement;
  import javax.servlet.ServletException; 
  //import javax.servlet.http.Cookie;
  import javax.servlet.http.HttpServlet; 
  import javax.servlet.http.HttpServletRequest; 
  import javax.servlet.http.HttpServletResponse; 
  import com.dbConnection.*;
 /**
	 * Servlet implementation class Book
	 */

  public class Block extends HttpServlet { 
	  private static final long
  serialVersionUID = 1L;
  
 /**
	 * @see HttpServlet#HttpServlet()
	 */

  public Block() { super();  }
  
 
		  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { Connection con;
		  
		
		  String fid = request.getParameter("fid");
		  String f_name[]=new String[10];
		  String l_name[]=new String[10];
		  int age[]=new int[10];
		  String sex[]=new String[10];
		  String contact[]=new String[10];
		  String email[]=new String[10];
		  String spcl_type[]=new String[10];
		  String seattype1[]=new String[10];
		  String seattype2[]=new String[10];
		  String mealtype[]=new String[10];
		  String any_spcl_req[]=new String[10];
		  String payment_status[]=new String[10];
		  
		  int j;
          
          j=1;
         f_name[j]=(request.getParameter("f_name1"));
         f_name[++j]=(request.getParameter("f_name2"));
         f_name[++j]=(request.getParameter("f_name3"));
         f_name[++j]=(request.getParameter("f_name4"));
         f_name[++j]=(request.getParameter("f_name5"));
        
		  
         j=1;
         l_name[j]=(request.getParameter("l_name1"));
         l_name[++j]=(request.getParameter("l_name2"));
         l_name[++j]=(request.getParameter("l_name3"));
         l_name[++j]=(request.getParameter("l_name4"));
         l_name[++j]=(request.getParameter("l_name5"));
        
         j=1;
         age[j]=Integer.parseInt(request.getParameter("age1")); 
         age[++j]=Integer.parseInt(request.getParameter("age2")); 
         age[++j]=Integer.parseInt(request.getParameter("age3")); 
         age[++j]=Integer.parseInt(request.getParameter("age4")); 
         age[++j]=Integer.parseInt(request.getParameter("age5")); 
         
         j=1;
         
         sex[j]=(request.getParameter("sex1"));
         sex[++j]=(request.getParameter("sex2"));
         sex[++j]=(request.getParameter("sex3"));
         sex[++j]=(request.getParameter("sex4"));
         sex[++j]=(request.getParameter("sex5"));
         
         j=1;
         
         contact[j]=(request.getParameter("contact1"));
         contact[++j]=(request.getParameter("contact2"));
         contact[++j]=(request.getParameter("contact3"));
         contact[++j]=(request.getParameter("contact4"));
         contact[++j]=(request.getParameter("contact5"));
         
         j=1;
         
         spcl_type[j]=(request.getParameter("spcl_type1"));
         spcl_type[++j]=(request.getParameter("spcl_type2"));
         spcl_type[++j]=(request.getParameter("spcl_type3"));
         spcl_type[++j]=(request.getParameter("spcl_type4"));
         spcl_type[++j]=(request.getParameter("spcl_type5"));
         
         
         j=1;
         
         email[j]=(request.getParameter("email1"));
         email[++j]=(request.getParameter("email2"));
         email[++j]=(request.getParameter("email3"));
         email[++j]=(request.getParameter("email4"));
         email[++j]=(request.getParameter("email5"));
         
		  j=1;
		  
		  seattype1[j]=(request.getParameter("seattypeone1"));
		  seattype1[++j]=(request.getParameter("seattypeone2"));
		  seattype1[++j]=(request.getParameter("seattypeone3"));
		  seattype1[++j]=(request.getParameter("seattypeone4"));
		  seattype1[++j]=(request.getParameter("seattypeone5"));
		  
		  j=1;
		  seattype2[j]=(request.getParameter("seattypetwo1"));
		  seattype2[++j]=(request.getParameter("seattypetwo2"));
		  seattype2[++j]=(request.getParameter("seattypetwo3"));
		  seattype2[++j]=(request.getParameter("seattypetwo4"));
		  seattype2[++j]=(request.getParameter("seattypetwo5"));
		  
		  j=1;
		  mealtype[j]=(request.getParameter("mealtype1"));
		  mealtype[++j]=(request.getParameter("mealtype2"));
		  mealtype[++j]=(request.getParameter("mealtype3"));
		  mealtype[++j]=(request.getParameter("mealtype4"));
		  mealtype[++j]=(request.getParameter("mealtype5"));
		  
		  j=1;
		  any_spcl_req[j]=(request.getParameter("special_requirement1"));
		  any_spcl_req[++j]=(request.getParameter("special_requirement2"));
		  any_spcl_req[++j]=(request.getParameter("special_requirement3"));
		  any_spcl_req[++j]=(request.getParameter("special_requirement4"));
		  any_spcl_req[++j]=(request.getParameter("special_requirement5"));
		  
		  j=1;
		  payment_status[j]=(request.getParameter("special_requirement1"));
		  payment_status[++j]=(request.getParameter("special_requirement2"));
		  payment_status[++j]=(request.getParameter("special_requirement3"));
		  payment_status[++j]=(request.getParameter("special_requirement4"));
		  payment_status[++j]=(request.getParameter("special_requirement5"));
         
         try { 
        	 //System.out.println(fid+" "+f_name+" "+l_name+" "+age); 
        	 con = new DBconnection().getConnection(); 
        	 
        	 for(j=1;j<=5;j++) {
        		 
        	 if(!f_name[j].equals(" ") && !l_name[j].equals(" ") && age[j]!=0 && !sex[j].equals(" ") && !email[j].equals(" ") && !contact[j].equals(" ") && !spcl_type[j].equals(" ") ) 
        	 {
        	 PreparedStatement st=con.prepareStatement("insert into blocking_details values(?,?,?,?,?,?,?,?)"); 
        	 //System.out.println(fid+" "+f_name+" "+l_name+" "+age);
        		  st.setString(1,fid);
        		  st.setString(2,f_name[j]);
        		  st.setString(3,l_name[j]);
        		  st.setInt(4,age[j]);
        		  st.setString(5,sex[j]); 
        		  st.setString(8,email[j]);
        		  st.setString(6,spcl_type[j]);
        		  st.setString(7,contact[j]);
        	 
        		  
        		  st.executeUpdate();
        	 
        		 
        	 st.close(); 
        	 } }
        	 con.close();
        	 
        	 
        		  PrintWriter out = response.getWriter();
        		  out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
        		  
        	 }
        		  catch (Exception e) { System.out.println(e); }
         
		  
		  
		  
		  
  }
  }
		 