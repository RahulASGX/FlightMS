package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dbConnection.DBconnection;

/**
 * Servlet implementation class Pay
 */
public class Pay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session=request.getSession(false);
		 System.out.println("hi");
		 String nop=(String) session.getAttribute("nop");
		 System.out.println(nop);
		 double price=0.0;
		 String selectclass=request.getParameter("class"); System.out.println(selectclass);
		 if(selectclass.equals("economy"))
			 price=4000.00;
		 else
			 price=5600.00;
		 double veg=300; double nonveg=500;
		double handicapped=20; double ss=50; double stu=10; double def=50; double air=50; double none=0;
		 System.out.println("yellow");
		 if(nop.equals("1")) {
			 int status=0;  
		        try{  
		            Connection con=new DBconnection().getConnection(); 

		            PreparedStatement ps=con.prepareStatement(  
		                         "update booking_details"
		                         + " "
		                         + "set payment_status='paid' where id=?");  
		            //ps.setString(1,e.getName());  
		           
		              
		            status=ps.executeUpdate();  
		              
		            con.close();  
		        }catch(Exception ex){ex.printStackTrace();}  
			 String f_name1=(String) session.getAttribute("f_name1");
			
			 String l_name1=(String) session.getAttribute("l_name1");
	 
			 
			// String age1=(String)session.getAttribute("age1");
	      
	      String sex1=(String) session.getAttribute("sex1");
	     
	        String email1=	(String) session.getAttribute("email1");
	     
	        	String spcl_type1=(String) session.getAttribute("spcl_type1");
	        	System.out.println(spcl_type1);
	        String contact1=	(String) session.getAttribute("contact1");
	      
	        	 String seattypeone1=(String) session.getAttribute("seattypeone1");
	        
	        	 String seattypetwo1=(String) session.getAttribute("seattypetwo1");
	        
	        	 String mealtype1=(String) session.getAttribute("mealtype1");
	        	
	       String special_requirement1=(String) session.getAttribute("special_requirement1");
	     
	        	 String payment_status1=(String) session.getAttribute("payment_status1");
	        	
	        	 if(mealtype1.equals("veg")) {
	        	 price=price+veg; System.out.println((handicapped/100));	}
	        	 else
	        		 price=price+nonveg;
	        	 
	        	 if(spcl_type1.equals("none"))
	        		 price= price-((none/100)*price);
	        	 else if(spcl_type1.equals("handicapped")) {
	        		 price=price-((handicapped/100)*price);
	        	System.out.println(price);	 
	        	 }
	        	 else if(spcl_type1.equals("senor_citizen"))
	        		 price=price-((ss/100)*price);
	        	 else if(spcl_type1.equals("student"))
	        		 price=price-((stu/100)*price);
	        	 else if(spcl_type1.equals("defense"))
	        		 price=price-((def/100)*price);
	        	 else if(spcl_type1.equals("airline"))
	        		 price=price-((air/100)*price);
	        	 System.out.print(price);
	        	 
		 }
		 
if(nop.equals("2")) {
			 
			 String f_name1=(String) session.getAttribute("f_name1");
			 String l_name1=(String) session.getAttribute("l_name1");
	       String age1=(String) session.getAttribute("age1");
	      String sex1=(String) session.getAttribute("sex1");
	        String email1=	(String) session.getAttribute("email1");
	        	String spcl_type1=(String) session.getAttribute("spcl_type1");
	        String contact1=	(String) session.getAttribute("contact1");
	        	 String seattypeone1=(String) session.getAttribute("seattypeone1");
	        	 String seattypetwo1=(String) session.getAttribute("seattypetwo1");
	        	 String mealtype1=(String) session.getAttribute("mealtype1");
	       String special_requirement1=(String) session.getAttribute("special_requirement1");
	        	 String payment_status1=(String) session.getAttribute("payment_status1");
	        	 
	        	 
				 String f_name2=(String) session.getAttribute("f_name2");
				 String l_name2=(String) session.getAttribute("l_name2");
		       String age2=(String) session.getAttribute("age2");
		      String sex2=(String) session.getAttribute("sex2");
		        String email2=	(String) session.getAttribute("email2");
		        	String spcl_type2=(String) session.getAttribute("spcl_type2");
		        String contact2=	(String) session.getAttribute("contact2");
		        	 String seattypeone2=(String) session.getAttribute("seattypeone2");
		        	 String seattypetwo2=(String) session.getAttribute("seattypetwo2");
		        	 String mealtype2=(String) session.getAttribute("mealtype2");
		       String special_requirement2=(String) session.getAttribute("special_requirement2");
		        	 String payment_status2=(String) session.getAttribute("payment_status2");
		 }

if(nop.equals("3")) {
	 
	 String f_name1=(String) session.getAttribute("f_name1");
	 String l_name1=(String) session.getAttribute("l_name1");
  String age1=(String) session.getAttribute("age1");
 String sex1=(String) session.getAttribute("sex1");
   String email1=	(String) session.getAttribute("email1");
   	String spcl_type1=(String) session.getAttribute("spcl_type1");
   String contact1=	(String) session.getAttribute("contact1");
   	 String seattypeone1=(String) session.getAttribute("seattypeone1");
   	 String seattypetwo1=(String) session.getAttribute("seattypetwo1");
   	 String mealtype1=(String) session.getAttribute("mealtype1");
  String special_requirement1=(String) session.getAttribute("special_requirement1");
   	 String payment_status1=(String) session.getAttribute("payment_status1");
   	 
   	 
		 String f_name2=(String) session.getAttribute("f_name2");
		 String l_name2=(String) session.getAttribute("l_name2");
      String age2=(String) session.getAttribute("age2");
     String sex2=(String) session.getAttribute("sex2");
       String email2=	(String) session.getAttribute("email2");
       	String spcl_type2=(String) session.getAttribute("spcl_type2");
       String contact2=	(String) session.getAttribute("contact2");
       	 String seattypeone2=(String) session.getAttribute("seattypeone2");
       	 String seattypetwo2=(String) session.getAttribute("seattypetwo2");
       	 String mealtype2=(String) session.getAttribute("mealtype2");
      String special_requirement2=(String) session.getAttribute("special_requirement2");
       	 String payment_status2=(String) session.getAttribute("payment_status2");
       	 
    	 String f_name3=(String) session.getAttribute("f_name3");
		 String l_name3=(String) session.getAttribute("l_name3");
      String age3=(String) session.getAttribute("age3");
     String sex3=(String) session.getAttribute("sex3");
       String email3=	(String) session.getAttribute("email3");
       	String spcl_type3=(String) session.getAttribute("spcl_type3");
       String contact3=	(String) session.getAttribute("contact3");
       	 String seattypeone3=(String) session.getAttribute("seattypeone3");
       	 String seattypetwo3=(String) session.getAttribute("seattypetwo3");
       	 String mealtype3=(String) session.getAttribute("mealtype3");
      String special_requirement3=(String) session.getAttribute("special_requirement3");
       	 String payment_status3=(String) session.getAttribute("payment_status3");
}

if(nop.equals("4")) {
	 
	 String f_name1=(String) session.getAttribute("f_name1");
	 String l_name1=(String) session.getAttribute("l_name1");
 String age1=(String) session.getAttribute("age1");
String sex1=(String) session.getAttribute("sex1");
  String email1=	(String) session.getAttribute("email1");
  	String spcl_type1=(String) session.getAttribute("spcl_type1");
  String contact1=	(String) session.getAttribute("contact1");
  	 String seattypeone1=(String) session.getAttribute("seattypeone1");
  	 String seattypetwo1=(String) session.getAttribute("seattypetwo1");
  	 String mealtype1=(String) session.getAttribute("mealtype1");
 String special_requirement1=(String) session.getAttribute("special_requirement1");
  	 String payment_status1=(String) session.getAttribute("payment_status1");
  	 
  	 
		 String f_name2=(String) session.getAttribute("f_name2");
		 String l_name2=(String) session.getAttribute("l_name2");
     String age2=(String) session.getAttribute("age2");
    String sex2=(String) session.getAttribute("sex2");
      String email2=	(String) session.getAttribute("email2");
      	String spcl_type2=(String) session.getAttribute("spcl_type2");
      String contact2=	(String) session.getAttribute("contact2");
      	 String seattypeone2=(String) session.getAttribute("seattypeone2");
      	 String seattypetwo2=(String) session.getAttribute("seattypetwo2");
      	 String mealtype2=(String) session.getAttribute("mealtype2");
     String special_requirement2=(String) session.getAttribute("special_requirement2");
      	 String payment_status2=(String) session.getAttribute("payment_status2");
      	 
   	 String f_name3=(String) session.getAttribute("f_name3");
		 String l_name3=(String) session.getAttribute("l_name3");
     String age3=(String) session.getAttribute("age3");
    String sex3=(String) session.getAttribute("sex3");
      String email3=	(String) session.getAttribute("email3");
      	String spcl_type3=(String) session.getAttribute("spcl_type3");
      String contact3=	(String) session.getAttribute("contact3");
      	 String seattypeone3=(String) session.getAttribute("seattypeone3");
      	 String seattypetwo3=(String) session.getAttribute("seattypetwo3");
      	 String mealtype3=(String) session.getAttribute("mealtype3");
     String special_requirement3=(String) session.getAttribute("special_requirement3");
      	 String payment_status3=(String) session.getAttribute("payment_status3");
      	 
      	 String f_name4=(String) session.getAttribute("f_name4");
		 String l_name4=(String) session.getAttribute("l_name4");
     String age4=(String) session.getAttribute("age4");
    String sex4=(String) session.getAttribute("sex4");
      String email4=	(String) session.getAttribute("email4");
      	String spcl_type4=(String) session.getAttribute("spcl_type4");
      String contact4=	(String) session.getAttribute("contact4");
      	 String seattypeone4=(String) session.getAttribute("seattypeone4");
      	 String seattypetwo4=(String) session.getAttribute("seattypetwo4");
      	 String mealtype4=(String) session.getAttribute("mealtype4");
     String special_requirement4=(String) session.getAttribute("special_requirement4");
      	 String payment_status4=(String) session.getAttribute("payment_status4");
}

if(nop.equals("5")) {
	 
	 String f_name1=(String) session.getAttribute("f_name1");
	 String l_name1=(String) session.getAttribute("l_name1");
String age1=(String) session.getAttribute("age1");
String sex1=(String) session.getAttribute("sex1");
 String email1=	(String) session.getAttribute("email1");
 	String spcl_type1=(String) session.getAttribute("spcl_type1");
 String contact1=	(String) session.getAttribute("contact1");
 	 String seattypeone1=(String) session.getAttribute("seattypeone1");
 	 String seattypetwo1=(String) session.getAttribute("seattypetwo1");
 	 String mealtype1=(String) session.getAttribute("mealtype1");
String special_requirement1=(String) session.getAttribute("special_requirement1");
 	 String payment_status1=(String) session.getAttribute("payment_status1");
 	 
 	 
		 String f_name2=(String) session.getAttribute("f_name2");
		 String l_name2=(String) session.getAttribute("l_name2");
    String age2=(String) session.getAttribute("age2");
   String sex2=(String) session.getAttribute("sex2");
     String email2=	(String) session.getAttribute("email2");
     	String spcl_type2=(String) session.getAttribute("spcl_type2");
     String contact2=	(String) session.getAttribute("contact2");
     	 String seattypeone2=(String) session.getAttribute("seattypeone2");
     	 String seattypetwo2=(String) session.getAttribute("seattypetwo2");
     	 String mealtype2=(String) session.getAttribute("mealtype2");
    String special_requirement2=(String) session.getAttribute("special_requirement2");
     	 String payment_status2=(String) session.getAttribute("payment_status2");
     	 
  	 String f_name3=(String) session.getAttribute("f_name3");
		 String l_name3=(String) session.getAttribute("l_name3");
    String age3=(String) session.getAttribute("age3");
   String sex3=(String) session.getAttribute("sex3");
     String email3=	(String) session.getAttribute("email3");
     	String spcl_type3=(String) session.getAttribute("spcl_type3");
     String contact3=	(String) session.getAttribute("contact3");
     	 String seattypeone3=(String) session.getAttribute("seattypeone3");
     	 String seattypetwo3=(String) session.getAttribute("seattypetwo3");
     	 String mealtype3=(String) session.getAttribute("mealtype3");
    String special_requirement3=(String) session.getAttribute("special_requirement3");
     	 String payment_status3=(String) session.getAttribute("payment_status3");
     	 
     	 String f_name4=(String) session.getAttribute("f_name4");
		 String l_name4=(String) session.getAttribute("l_name4");
    String age4=(String) session.getAttribute("age4");
   String sex4=(String) session.getAttribute("sex4");
     String email4=	(String) session.getAttribute("email4");
     	String spcl_type4=(String) session.getAttribute("spcl_type4");
     String contact4=	(String) session.getAttribute("contact4");
     	 String seattypeone4=(String) session.getAttribute("seattypeone4");
     	 String seattypetwo4=(String) session.getAttribute("seattypetwo4");
     	 String mealtype4=(String) session.getAttribute("mealtype4");
    String special_requirement4=(String) session.getAttribute("special_requirement4");
     	 String payment_status4=(String) session.getAttribute("payment_status4");
     	 
     	 
     	 String f_name5=(String) session.getAttribute("f_name5");
		 String l_name5=(String) session.getAttribute("l_name5");
    String age5=(String) session.getAttribute("age5");
   String sex5=(String) session.getAttribute("sex5");
     String email5=	(String) session.getAttribute("email5");
     	String spcl_type5=(String) session.getAttribute("spcl_type5");
     String contact5=	(String) session.getAttribute("contact5");
     	 String seattypeone5=(String) session.getAttribute("seattypeone5");
     	 String seattypetwo5=(String) session.getAttribute("seattypetwo5");
     	 String mealtype5=(String) session.getAttribute("mealtype5");
    String special_requirement5=(String) session.getAttribute("special_requirement5");
     	 String payment_status5=(String) session.getAttribute("payment_status5");
}
		 
		 
	}

}
