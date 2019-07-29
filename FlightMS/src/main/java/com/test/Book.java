
  package com.test;
  import java.util.Random;
  import java.io.IOException; 
  import java.io.PrintWriter;
  import java.sql.Connection; 
  import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
  //import javax.servlet.http.Cookie;
  import javax.servlet.http.HttpServlet; 
  import javax.servlet.http.HttpServletRequest; 
  import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbConnection.*;
 /**
	 * Servlet implementation class Book
	 */

  public class Book extends HttpServlet { 
	  private static final long
  serialVersionUID = 1L;
  
 /**
	 * @see HttpServlet#HttpServlet()
	 */

  public Book() { super();  }
  
 
		  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { Connection con;
		  
		
		  String fid = request.getParameter("fid");
		  String f_name[]=new String[10];
		  String l_name[]=new String[10];
		  int age[]=new int[10];
		  String sex[]=new String[10];
		  String contact[]=new String[10];
		  String email[]=new String[10];
		  String spcl_type[]=new String[10];
		  String seattypeone[]=new String[10];
		  String seattypetwo[]=new String[10];
		  String mealtype[]=new String[10];
		  String any_spcl_req[]=new String[10];
		  String payment_status[]=new String[10];
		  String nop=request.getParameter("nop");
		  double trid=0.0;
		 // int n=Integer.parseInt(nop);
		  System.out.print(nop);
		  int j;
		  if(nop.equals("1")) {
			  j=1;
		         f_name[j]=(request.getParameter("f_name1"));
		        
		         j=1;
		         l_name[j]=(request.getParameter("l_name1"));
		         
		         j=1;
		        age[j]=Integer.parseInt(request.getParameter("age1")); 
		         
		         j=1;
		         
		         sex[j]=(request.getParameter("sex1"));
		        
		         j=1;
		         
		         contact[j]=(request.getParameter("contact1"));
		         
		         j=1;
		         
		         spcl_type[j]=(request.getParameter("spcl_type1"));
		         
		         j=1;
		         
		         email[j]=(request.getParameter("email1"));
		         
				  j=1;
				  
				  seattypeone[j]=(request.getParameter("seattypeone1"));
				  
				  j=1;

				  seattypetwo[j]=(request.getParameter("seattypetwo1"));
				  
				  j=1;
				  mealtype[j]=(request.getParameter("mealtype1"));
				  
				  j=1;
				  
				  any_spcl_req[j]=(request.getParameter("special_requirement1"));
				  
				  j=1;	
				  
				  payment_status[j]=(request.getParameter("payment_status1"));
				  
		  }
		  else  if(nop.equals("2")) {
			  j=1;
		         f_name[j]=(request.getParameter("f_name1"));
		         f_name[++j]=(request.getParameter("f_name2"));
		       
		         j=1;
		         l_name[j]=(request.getParameter("l_name1"));
		         l_name[++j]=(request.getParameter("l_name2"));
		         
		         j=1;
		         age[j]=Integer.parseInt(request.getParameter("age1")); 
		         age[++j]=Integer.parseInt(request.getParameter("age2")); 
		        
		         j=1;
		         
		         sex[j]=(request.getParameter("sex1"));
		         sex[++j]=(request.getParameter("sex2"));
		        
		         j=1;
		         
		         contact[j]=(request.getParameter("contact1"));
		         contact[++j]=(request.getParameter("contact2"));
		         
		         j=1;
		         
		         spcl_type[j]=(request.getParameter("spcl_type1"));
		         spcl_type[++j]=(request.getParameter("spcl_type2"));
		         
		         j=1;
		         
		         email[j]=(request.getParameter("email1"));
		         email[++j]=(request.getParameter("email2"));
		         
				  j=1;
				  
				  seattypeone[j]=(request.getParameter("seattypeone1"));
				  seattypeone[++j]=(request.getParameter("seattypeone2"));
				  
				  j=1;

				  seattypetwo[j]=(request.getParameter("seattypetwo1"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo2"));
				  
				  j=1;
				  mealtype[j]=(request.getParameter("mealtype1"));
				  mealtype[++j]=(request.getParameter("mealtype2"));
				 
				  j=1;
				  
				  any_spcl_req[j]=(request.getParameter("special_requirement1"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement2"));
				  
				  j=1;	
				  
				  payment_status[j]=(request.getParameter("payment_status1"));
				  payment_status[++j]=(request.getParameter("payment_status2"));
				 
		  }
		  
		  else  if(nop.equals("3")) {
			  j=1;
		         f_name[j]=(request.getParameter("f_name1"));
		         f_name[++j]=(request.getParameter("f_name2"));
		         f_name[++j]=(request.getParameter("f_name3"));
		        
		         j=1;
		         l_name[j]=(request.getParameter("l_name1"));
		         l_name[++j]=(request.getParameter("l_name2"));
		         l_name[++j]=(request.getParameter("l_name3"));
		        
		         j=1;
		         age[j]=Integer.parseInt(request.getParameter("age1")); 
		         age[++j]=Integer.parseInt(request.getParameter("age2")); 
		         age[++j]=Integer.parseInt(request.getParameter("age3")); 
		     
		         j=1;
		         
		         sex[j]=(request.getParameter("sex1"));
		         sex[++j]=(request.getParameter("sex2"));
		         sex[++j]=(request.getParameter("sex3"));
		        
		         j=1;
		         
		         contact[j]=(request.getParameter("contact1"));
		         contact[++j]=(request.getParameter("contact2"));
		         contact[++j]=(request.getParameter("contact3"));
		         
		         j=1;
		         
		         spcl_type[j]=(request.getParameter("spcl_type1"));
		         spcl_type[++j]=(request.getParameter("spcl_type2"));
		         spcl_type[++j]=(request.getParameter("spcl_type3"));
		        
		         j=1;
		         
		         email[j]=(request.getParameter("email1"));
		         email[++j]=(request.getParameter("email2"));
		         email[++j]=(request.getParameter("email3"));
		         
				  j=1;
				  
				  seattypeone[j]=(request.getParameter("seattypeone1"));
				  seattypeone[++j]=(request.getParameter("seattypeone2"));
				  seattypeone[++j]=(request.getParameter("seattypeone3"));
				
				  j=1;

				  seattypetwo[j]=(request.getParameter("seattypetwo1"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo2"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo3"));
				  
				  j=1;
				  mealtype[j]=(request.getParameter("mealtype1"));
				  mealtype[++j]=(request.getParameter("mealtype2"));
				  mealtype[++j]=(request.getParameter("mealtype3"));
				
				  j=1;
				  
				  any_spcl_req[j]=(request.getParameter("special_requirement1"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement2"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement3"));
				  
				  j=1;	
				  
				  payment_status[j]=(request.getParameter("payment_status1"));
				  payment_status[++j]=(request.getParameter("payment_status2"));
				  payment_status[++j]=(request.getParameter("payment_status3"));
				  
		  }
		  else	  if(nop.equals("4")) {
			  j=1;
		         f_name[j]=(request.getParameter("f_name1"));
		         f_name[++j]=(request.getParameter("f_name2"));
		         f_name[++j]=(request.getParameter("f_name3"));
		         f_name[++j]=(request.getParameter("f_name4"));
		         
		        
				  
		         j=1;
		         l_name[j]=(request.getParameter("l_name1"));
		         l_name[++j]=(request.getParameter("l_name2"));
		         l_name[++j]=(request.getParameter("l_name3"));
		         l_name[++j]=(request.getParameter("l_name4"));
		        
		        
		         j=1;
		         age[j]=Integer.parseInt(request.getParameter("age1")); 
		         age[++j]=Integer.parseInt(request.getParameter("age2")); 
		         age[++j]=Integer.parseInt(request.getParameter("age3")); 
		         age[++j]=Integer.parseInt(request.getParameter("age4")); 
		         
		         
		         j=1;
		         
		         sex[j]=(request.getParameter("sex1"));
		         sex[++j]=(request.getParameter("sex2"));
		         sex[++j]=(request.getParameter("sex3"));
		         sex[++j]=(request.getParameter("sex4"));
		         
		         
		         j=1;
		         
		         contact[j]=(request.getParameter("contact1"));
		         contact[++j]=(request.getParameter("contact2"));
		         contact[++j]=(request.getParameter("contact3"));
		         contact[++j]=(request.getParameter("contact4"));
		         
		         
		         j=1;
		         
		         spcl_type[j]=(request.getParameter("spcl_type1"));
		         spcl_type[++j]=(request.getParameter("spcl_type2"));
		         spcl_type[++j]=(request.getParameter("spcl_type3"));
		         spcl_type[++j]=(request.getParameter("spcl_type4"));
		        
		         
		         
		         j=1;
		         
		         email[j]=(request.getParameter("email1"));
		         email[++j]=(request.getParameter("email2"));
		         email[++j]=(request.getParameter("email3"));
		         email[++j]=(request.getParameter("email4"));
		        
		         
				  j=1;
				  
				  seattypeone[j]=(request.getParameter("seattypeone1"));
				  seattypeone[++j]=(request.getParameter("seattypeone2"));
				  seattypeone[++j]=(request.getParameter("seattypeone3"));
				  seattypeone[++j]=(request.getParameter("seattypeone4"));
				 
				  
				  j=1;

				  seattypetwo[j]=(request.getParameter("seattypetwo1"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo2"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo3"));
				  seattypetwo[++j]=(request.getParameter("seattypetwo4"));
				 
				  
				  j=1;
				  mealtype[j]=(request.getParameter("mealtype1"));
				  mealtype[++j]=(request.getParameter("mealtype2"));
				  mealtype[++j]=(request.getParameter("mealtype3"));
				  mealtype[++j]=(request.getParameter("mealtype4"));
				 
				  
				  j=1;
				  
				  any_spcl_req[j]=(request.getParameter("special_requirement1"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement2"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement3"));
				  any_spcl_req[++j]=(request.getParameter("special_requirement4"));
				
				  
				  j=1;	
				  
				  payment_status[j]=(request.getParameter("payment_status1"));
				  payment_status[++j]=(request.getParameter("payment_status2"));
				  payment_status[++j]=(request.getParameter("payment_status3"));
				  payment_status[++j]=(request.getParameter("payment_status4"));
				  
		  }
		  else {
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
		  
		  seattypeone[j]=(request.getParameter("seattypeone1"));
		  seattypeone[++j]=(request.getParameter("seattypeone2"));
		  seattypeone[++j]=(request.getParameter("seattypeone3"));
		  seattypeone[++j]=(request.getParameter("seattypeone4"));
		  seattypeone[++j]=(request.getParameter("seattypeone5"));
		  
		  j=1;

		  seattypetwo[j]=(request.getParameter("seattypetwo1"));
		  seattypetwo[++j]=(request.getParameter("seattypetwo2"));
		  seattypetwo[++j]=(request.getParameter("seattypetwo3"));
		  seattypetwo[++j]=(request.getParameter("seattypetwo4"));
		  seattypetwo[++j]=(request.getParameter("seattypetwo5"));
		  
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
		  
		  payment_status[j]=(request.getParameter("payment_status1"));
		  payment_status[++j]=(request.getParameter("payment_status2"));
		  payment_status[++j]=(request.getParameter("payment_status3"));
		  payment_status[++j]=(request.getParameter("payment_status4"));
		  payment_status[++j]=(request.getParameter("payment_status5"));
		  
          }
		  
         try { 
        	 //System.out.println(fid+" "+f_name+" "+l_name+" "+age); 
        	 con = new DBconnection().getConnection(); 
        	Random rand=new Random();
        	 trid=age[1]*(rand.nextDouble());
        	 for(j=1;j<=1;j++) {
        		 System.out.println("hello");
        	 if(!f_name[j].equals(" ") && !l_name[j].equals(" ") && age[j]!=0 && !sex[j].equals(" ") && !email[j].equals(" ") && !contact[j].equals(" ") && !spcl_type[j].equals(" ") ) 
        	 {
        		 System.out.println(fid+f_name[j]+" "+l_name[j]+" "+age[j]+" "+sex[j]+" "+email[j]+" "+spcl_type[j]+" "+seattypeone[j]+" "+seattypetwo[j]+" "+mealtype[j]+" "+any_spcl_req[j]+" "+payment_status[j]);
        	 PreparedStatement st=con.prepareStatement("insert into booking_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
        	 //System.out.println(fid+" "+f_name+" "+l_name+" "+age);
        		  st.setString(1,fid);
        		  st.setString(2,f_name[j]);
        		  st.setString(3,l_name[j]);
        		  st.setInt(4,age[j]);
        		  st.setString(5,sex[j]); 
        		  st.setString(8,email[j]);
        		  st.setString(6,spcl_type[j]);
        		  st.setString(7,contact[j]);
        		  st.setString(9,seattypeone[j]);
        		  st.setString(10,seattypetwo[j]);
        		  st.setString(11,mealtype[j]);
        		  st.setString(12,any_spcl_req[j]);
        		  st.setString(13,payment_status[j]);
        		  st.setDouble(14, trid);
        		  st.executeUpdate();
        		  HttpSession session=request.getSession();
        		  
        	        session.setAttribute("fid",fid);
        	        session.setAttribute("nop", nop);
        	        if(nop.equals("1")) {
        	        	session.setAttribute("f_name1",f_name[1]);
        	        	session.setAttribute("l_name1",l_name[1]);
        	        	
        	        	session.setAttribute("age1",age[1]);
        	        	
        	        	session.setAttribute("sex1",sex[1]);
        	        	session.setAttribute("email1",email[1]);
        	        	session.setAttribute("spcl_type1",spcl_type[1]);
        	        	session.setAttribute("contact1",contact[1]);
        	        	 session.setAttribute("seattypeone1",seattypeone[1]);
        	        	 session.setAttribute("seattypetwo1",seattypetwo[1]);
        	        	 session.setAttribute("mealtype1",mealtype[1]);
        	        	 session.setAttribute("special_requirement1",any_spcl_req[1]);
        	        	 session.setAttribute("payment_status1",payment_status[1]);
        	        	 
        	        	 System.out.println(session.getAttribute("age1"));
        	        }
        	        
        	        else if(nop.equals("2")) {session.setAttribute("f_name1",f_name[1]);
    	        	session.setAttribute("l_name1",l_name[1]);
    	        	session.setAttribute("age1",age[1]);
    	        	session.setAttribute("sex1",sex[1]);
    	        	session.setAttribute("email1",email[1]);
    	        	session.setAttribute("spcl_type1",spcl_type[1]);
    	        	session.setAttribute("contact1",contact[1]);
    	        	 session.setAttribute("seattypeone1",seattypeone[1]);
    	        	 session.setAttribute("seattypetwo1",seattypetwo[1]);
    	        	 session.setAttribute("mealtype1",mealtype[1]);
    	        	 session.setAttribute("special_requirement1",any_spcl_req[1]);
    	        	 session.setAttribute("payment_status1",payment_status[1]);
    	        	 
    	        	 session.setAttribute("f_name2",f_name[2]);
     	        	session.setAttribute("l_name2",l_name[2]);
     	        	session.setAttribute("age2",age[2]);
     	        	session.setAttribute("sex2",sex[2]);
     	        	session.setAttribute("email2",email[2]);
     	        	session.setAttribute("spcl_type2",spcl_type[2]);
     	        	session.setAttribute("contact2",contact[2]);
     	        	 session.setAttribute("seattypeone2",seattypeone[2]);
     	        	 session.setAttribute("seattypetwo2",seattypetwo[2]);
     	        	 session.setAttribute("mealtype2",mealtype[2]);
     	        	 session.setAttribute("special_requirement2",any_spcl_req[2]);
     	        	 session.setAttribute("payment_status2",payment_status[2]);
        	        
        	        }
        	        
        	        else if(nop.equals("3")) {
        	        	session.setAttribute("f_name1",f_name[1]);
        	        	session.setAttribute("l_name1",l_name[1]);
        	        	session.setAttribute("age1",age[1]);
        	        	session.setAttribute("sex1",sex[1]);
        	        	session.setAttribute("email1",email[1]);
        	        	session.setAttribute("spcl_type1",spcl_type[1]);
        	        	session.setAttribute("contact1",contact[1]);
        	        	 session.setAttribute("seattypeone1",seattypeone[1]);
        	        	 session.setAttribute("seattypetwo1",seattypetwo[1]);
        	        	 session.setAttribute("mealtype1",mealtype[1]);
        	        	 session.setAttribute("special_requirement1",any_spcl_req[1]);
        	        	 session.setAttribute("payment_status1",payment_status[1]);
        	        	 
        	        	 session.setAttribute("f_name2",f_name[2]);
         	        	session.setAttribute("l_name2",l_name[2]);
         	        	session.setAttribute("age2",age[2]);
         	        	session.setAttribute("sex2",sex[2]);
         	        	session.setAttribute("email2",email[2]);
         	        	session.setAttribute("spcl_type2",spcl_type[2]);
         	        	session.setAttribute("contact2",contact[2]);
         	        	 session.setAttribute("seattypeone2",seattypeone[2]);
         	        	 session.setAttribute("seattypetwo2",seattypetwo[2]);
         	        	 session.setAttribute("mealtype2",mealtype[2]);
         	        	 session.setAttribute("special_requirement2",any_spcl_req[2]);
         	        	 session.setAttribute("payment_status2",payment_status[2]);
         	        	 
         	        	 session.setAttribute("f_name3",f_name[3]);
          	        	session.setAttribute("l_name3",l_name[3]);
          	        	session.setAttribute("age3",age[3]);
          	        	session.setAttribute("sex3",sex[3]);
          	        	session.setAttribute("email3",email[3]);
          	        	session.setAttribute("spcl_type3",spcl_type[3]);
          	        	session.setAttribute("contact3",contact[3]);
          	        	 session.setAttribute("seattypeone3",seattypeone[3]);
          	        	 session.setAttribute("seattypetwo3",seattypetwo[3]);
          	        	 session.setAttribute("mealtype3",mealtype[3]);
          	        	 session.setAttribute("special_requirement3",any_spcl_req[3]);
          	        	 session.setAttribute("payment_status3",payment_status[3]);
        	        	
        	        }
        	        
        	        else if(nop.equals("4")) {
        	        	
        	        	session.setAttribute("f_name1",f_name[1]);
        	        	session.setAttribute("l_name1",l_name[1]);
        	        	session.setAttribute("age1",age[1]);
        	        	session.setAttribute("sex1",sex[1]);
        	        	session.setAttribute("email1",email[1]);
        	        	session.setAttribute("spcl_type1",spcl_type[1]);
        	        	session.setAttribute("contact1",contact[1]);
        	        	 session.setAttribute("seattypeone1",seattypeone[1]);
        	        	 session.setAttribute("seattypetwo1",seattypetwo[1]);
        	        	 session.setAttribute("mealtype1",mealtype[1]);
        	        	 session.setAttribute("special_requirement1",any_spcl_req[1]);
        	        	 session.setAttribute("payment_status1",payment_status[1]);
        	        	 
        	        	 session.setAttribute("f_name2",f_name[2]);
         	        	session.setAttribute("l_name2",l_name[2]);
         	        	session.setAttribute("age2",age[2]);
         	        	session.setAttribute("sex2",sex[2]);
         	        	session.setAttribute("email2",email[2]);
         	        	session.setAttribute("spcl_type2",spcl_type[2]);
         	        	session.setAttribute("contact2",contact[2]);
         	        	 session.setAttribute("seattypeone2",seattypeone[2]);
         	        	 session.setAttribute("seattypetwo2",seattypetwo[2]);
         	        	 session.setAttribute("mealtype2",mealtype[2]);
         	        	 session.setAttribute("special_requirement2",any_spcl_req[2]);
         	        	 session.setAttribute("payment_status2",payment_status[2]);
         	        	 
         	        	 session.setAttribute("f_name3",f_name[3]);
          	        	session.setAttribute("l_name3",l_name[3]);
          	        	session.setAttribute("age3",age[3]);
          	        	session.setAttribute("sex3",sex[3]);
          	        	session.setAttribute("email3",email[3]);
          	        	session.setAttribute("spcl_type3",spcl_type[3]);
          	        	session.setAttribute("contact3",contact[3]);
          	        	 session.setAttribute("seattypeone3",seattypeone[3]);
          	        	 session.setAttribute("seattypetwo3",seattypetwo[3]);
          	        	 session.setAttribute("mealtype3",mealtype[3]);
          	        	 session.setAttribute("special_requirement3",any_spcl_req[3]);
          	        	 session.setAttribute("payment_status3",payment_status[3]);
          	        	 
          	        	 session.setAttribute("f_name4",f_name[4]);
           	        	session.setAttribute("l_name4",l_name[4]);
           	        	session.setAttribute("age4",age[4]);
           	        	session.setAttribute("sex4",sex[4]);
           	        	session.setAttribute("email4",email[4]);
           	        	session.setAttribute("spcl_type4",spcl_type[4]);
           	        	session.setAttribute("contact4",contact[4]);
           	        	 session.setAttribute("seattypeone4",seattypeone[4]);
           	        	 session.setAttribute("seattypetwo4",seattypetwo[4]);
           	        	 session.setAttribute("mealtype4",mealtype[4]);
           	        	 session.setAttribute("special_requirement4",any_spcl_req[4]);
           	        	 session.setAttribute("payment_status4",payment_status[4]);
        	        }
        	        
        	        else if(nop.equals("5")) {
        	        	session.setAttribute("f_name1",f_name[1]);
        	        	session.setAttribute("l_name1",l_name[1]);
        	        	session.setAttribute("age1",age[1]);
        	        	session.setAttribute("sex1",sex[1]);
        	        	session.setAttribute("email1",email[1]);
        	        	session.setAttribute("spcl_type1",spcl_type[1]);
        	        	session.setAttribute("contact1",contact[1]);
        	        	 session.setAttribute("seattypeone1",seattypeone[1]);
        	        	 session.setAttribute("seattypetwo1",seattypetwo[1]);
        	        	 session.setAttribute("mealtype1",mealtype[1]);
        	        	 session.setAttribute("special_requirement1",any_spcl_req[1]);
        	        	 session.setAttribute("payment_status1",payment_status[1]);
        	        	 
        	        	 session.setAttribute("f_name2",f_name[2]);
         	        	session.setAttribute("l_name2",l_name[2]);
         	        	session.setAttribute("age2",age[2]);
         	        	session.setAttribute("sex2",sex[2]);
         	        	session.setAttribute("email2",email[2]);
         	        	session.setAttribute("spcl_type2",spcl_type[2]);
         	        	session.setAttribute("contact2",contact[2]);
         	        	 session.setAttribute("seattypeone2",seattypeone[2]);
         	        	 session.setAttribute("seattypetwo2",seattypetwo[2]);
         	        	 session.setAttribute("mealtype2",mealtype[2]);
         	        	 session.setAttribute("special_requirement2",any_spcl_req[2]);
         	        	 session.setAttribute("payment_status2",payment_status[2]);
         	        	 
         	        	 session.setAttribute("f_name3",f_name[3]);
          	        	session.setAttribute("l_name3",l_name[3]);
          	        	session.setAttribute("age3",age[3]);
          	        	session.setAttribute("sex3",sex[3]);
          	        	session.setAttribute("email3",email[3]);
          	        	session.setAttribute("spcl_type3",spcl_type[3]);
          	        	session.setAttribute("contact3",contact[3]);
          	        	 session.setAttribute("seattypeone3",seattypeone[3]);
          	        	 session.setAttribute("seattypetwo3",seattypetwo[3]);
          	        	 session.setAttribute("mealtype3",mealtype[3]);
          	        	 session.setAttribute("special_requirement3",any_spcl_req[3]);
          	        	 session.setAttribute("payment_status3",payment_status[3]);
          	        	 
          	        	 session.setAttribute("f_name4",f_name[4]);
           	        	session.setAttribute("l_name4",l_name[4]);
           	        	session.setAttribute("age4",age[4]);
           	        	session.setAttribute("sex4",sex[4]);
           	        	session.setAttribute("email4",email[4]);
           	        	session.setAttribute("spcl_type4",spcl_type[4]);
           	        	session.setAttribute("contact4",contact[4]);
           	        	 session.setAttribute("seattypeone4",seattypeone[4]);
           	        	 session.setAttribute("seattypetwo4",seattypetwo[4]);
           	        	 session.setAttribute("mealtype4",mealtype[4]);
           	        	 session.setAttribute("special_requirement4",any_spcl_req[4]);
           	        	 session.setAttribute("payment_status4",payment_status[4]);
           	        	 
          	        	 session.setAttribute("f_name5",f_name[5]);
           	        	session.setAttribute("l_name5",l_name[5]);
           	        	session.setAttribute("age5",age[5]);
           	        	session.setAttribute("sex5",sex[5]);
           	        	session.setAttribute("email5",email[5]);
           	        	session.setAttribute("spcl_type5",spcl_type[5]);
           	        	session.setAttribute("contact5",contact[5]);
           	        	 session.setAttribute("seattypeone5",seattypeone[5]);
           	        	 session.setAttribute("seattypetwo5",seattypetwo[5]);
           	        	 session.setAttribute("mealtype5",mealtype[5]);
           	        	 session.setAttribute("special_requirement5",any_spcl_req[5]);
           	        	 session.setAttribute("payment_status5",payment_status[5]);
        	        	
        	        }
        	        
					/*
					 * if(!f_name[1].equals(" ")) { session.setAttribute("f_name1",f_name[1]);}
					 * 
					 * if(!l_name[1].equals(" ")) { session.setAttribute("l_name1",l_name[1]); }
					 * 
					 * if(age[1]!=0) { session.setAttribute("age1",age[1]);}
					 * 
					 * if(!sex[1].equals("0")) { session.setAttribute("sex1",sex[1]);}
					 * 
					 * if(!email[1].equals("0")) { session.setAttribute("email1",email[1]);}
					 * 
					 * if(!spcl_type[1].equals("0")) {
					 * session.setAttribute("spcl_type1",spcl_type[1]);}
					 * 
					 * if(!contact[1].equals("0")) { session.setAttribute("contact1",contact[1]);}
					 * 
					 * if(!seattypeone[1].equals("0")) {
					 * session.setAttribute("seattypeone1",seattypeone[1]);}
					 * 
					 * if(!seattypetwo[1].equals("0")) {
					 * session.setAttribute("seattypetwo1",seattypetwo[1]);}
					 * 
					 * if(!mealtype[1].equals("0")) {
					 * session.setAttribute("mealtype1",mealtype[1]);}
					 * 
					 * if(!any_spcl_req[1].equals("0")) {
					 * session.setAttribute("special_requirement1",any_spcl_req[1]);}
					 * 
					 * if(!payment_status[1].equals(" ")) {
					 * session.setAttribute("payment_status1",payment_status[1]);}
					 * 
					 * //session.setAttribute("fid",fid); if(!f_name[2].equals(" ")) {
					 * session.setAttribute("f_name2",f_name[2]);}
					 * 
					 * if(!l_name[2].equals(" ")) { session.setAttribute("l_name2",l_name[2]); }
					 * 
					 * if(age[2]!=0) { session.setAttribute("age2",age[2]);}
					 * 
					 * if(!sex[2].equals("0")) { session.setAttribute("sex2",sex[2]);}
					 * 
					 * if(!email[2].equals("0")) { session.setAttribute("email2",email[2]);}
					 * 
					 * if(!spcl_type[2].equals("0")) {
					 * session.setAttribute("spcl_type2",spcl_type[2]);}
					 * 
					 * if(!contact[2].equals("0")) { session.setAttribute("contact2",contact[2]);}
					 * 
					 * if(!seattypeone[2].equals("0")) {
					 * session.setAttribute("seattypeone2",seattypeone[2]);}
					 * 
					 * if(!seattypetwo[2].equals("0")) {
					 * session.setAttribute("seattypetwo2",seattypetwo[2]);}
					 * 
					 * if(!mealtype[2].equals("0")) {
					 * session.setAttribute("mealtype2",mealtype[2]);}
					 * 
					 * if(!any_spcl_req[2].equals("0")) {
					 * session.setAttribute("special_requirement2",any_spcl_req[2]);}
					 * 
					 * if(!payment_status[2].equals(" ")) {
					 * session.setAttribute("payment_status2",payment_status[2]);}
					 * 
					 * if(!f_name[3].equals(" ")) { session.setAttribute("f_name3",f_name[3]);}
					 * 
					 * if(!l_name[3].equals(" ")) { session.setAttribute("l_name3",l_name[3]); }
					 * 
					 * if(age[3]!=0) { session.setAttribute("age3",age[3]);}
					 * 
					 * if(!sex[3].equals("0")) { session.setAttribute("sex3",sex[3]);}
					 * 
					 * if(!email[3].equals("0")) { session.setAttribute("email3",email[3]);}
					 * 
					 * if(!spcl_type[3].equals("0")) {
					 * session.setAttribute("spcl_type3",spcl_type[3]);}
					 * 
					 * if(!contact[3].equals("0")) { session.setAttribute("contact3",contact[3]);}
					 * 
					 * if(!seattypeone[3].equals("0")) {
					 * session.setAttribute("seattypeone3",seattypeone[3]);}
					 * 
					 * if(!seattypetwo[3].equals("0")) {
					 * session.setAttribute("seattypetwo3",seattypetwo[3]);}
					 * 
					 * if(!mealtype[3].equals("0")) {
					 * session.setAttribute("mealtype3",mealtype[3]);}
					 * 
					 * if(!any_spcl_req[3].equals("0")) {
					 * session.setAttribute("special_requirement3",any_spcl_req[3]);}
					 * 
					 * if(!payment_status[3].equals(" ")) {
					 * session.setAttribute("payment_status3",payment_status[3]);}
					 * 
					 * if(!f_name[4].equals(" ")) { session.setAttribute("f_name4",f_name[4]);}
					 * 
					 * if(!l_name[4].equals(" ")) { session.setAttribute("l_name4",l_name[4]); }
					 * 
					 * if(age[4]!=0) { session.setAttribute("age4",age[4]);}
					 * 
					 * if(!sex[4].equals("0")) { session.setAttribute("sex4",sex[4]);}
					 * 
					 * if(!email[4].equals("0")) { session.setAttribute("email4",email[4]);}
					 * 
					 * if(!spcl_type[4].equals("0")) {
					 * session.setAttribute("spcl_type4",spcl_type[4]);}
					 * 
					 * if(!contact[4].equals("0")) { session.setAttribute("contact4",contact[4]);}
					 * 
					 * if(!seattypeone[4].equals("0")) {
					 * session.setAttribute("seattypeone4",seattypeone[4]);}
					 * 
					 * if(!seattypetwo[4].equals("0")) {
					 * session.setAttribute("seattypetwo4",seattypetwo[4]);}
					 * 
					 * if(!mealtype[4].equals("0")) {
					 * session.setAttribute("mealtype4",mealtype[4]);}
					 * 
					 * if(!any_spcl_req[4].equals("0")) {
					 * session.setAttribute("special_requirement4",any_spcl_req[4]);}
					 * 
					 * if(!payment_status[4].equals(" ")) {
					 * session.setAttribute("payment_status4",payment_status[4]);}
					 * 
					 * if(!f_name[5].equals(" ")) { session.setAttribute("f_name5",f_name[5]);}
					 * 
					 * if(!l_name[5].equals(" ")) { session.setAttribute("l_name5",l_name[5]); }
					 * 
					 * if(age[5]!=0) { session.setAttribute("age5",age[5]);}
					 * 
					 * if(!sex[5].equals("0")) { session.setAttribute("sex1",sex[5]);}
					 * 
					 * if(!email[5].equals("0")) { session.setAttribute("email5",email[5]);}
					 * 
					 * if(!spcl_type[5].equals("0")) {
					 * session.setAttribute("spcl_type5",spcl_type[5]);}
					 * 
					 * if(!contact[5].equals("0")) { session.setAttribute("contact5",contact[5]);}
					 * 
					 * if(!seattypeone[5].equals("0")) {
					 * session.setAttribute("seattypeone5",seattypeone[5]);}
					 * 
					 * if(!seattypetwo[5].equals("0")) {
					 * session.setAttribute("seattypetwo5",seattypetwo[5]);}
					 * 
					 * if(!mealtype[5].equals("0")) {
					 * session.setAttribute("mealtype5",mealtype[5]);}
					 * 
					 * if(!any_spcl_req[5].equals("0")) {
					 * session.setAttribute("special_requirement5",any_spcl_req[5]);}
					 * 
					 * if(!payment_status[5].equals(" ")) {
					 * session.setAttribute("payment_status5",payment_status[5]);}
					 */			 
        	        
        	        
        		  response.sendRedirect("Payment.jsp");
        		 
        	 st.close(); 
				 } }
        	 con.close();
        	 
        	 
        		  PrintWriter out = response.getWriter();
        		  //out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
        		  
        	 }
        		  catch (Exception e) { System.out.println(e); }
         
		  
		  
		  
		  
  }
  }
		 