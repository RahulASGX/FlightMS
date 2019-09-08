<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container" style=" width: 1500px; margin:0 auto;">
       <br/><br/>
        <div class="container " style="width:1400px; margin:0 auto;">
                
                 
                 <br/><br/><br/>
<table class="table table-striped">
 <thead>
      <tr>
        <th class="textcolor">FID</th>	
        <th class="textcolor">FIRST NAME</th>
        <th class="textcolor">LAST NAME</th>
        <th class="textcolor">AGE</th>
        <th class="textcolor">EMAIL</th>
        <th class="textcolor">CONTACT</th>        
        <th class="textcolor">SEX</th>
        <th class="textcolor">SPECIAL STATUS</th>
        <th class="textcolor">SEAT TYPE 1</th>
        <th class="textcolor">SEAT TYPE 2</th>
        <th class="textcolor">MEAL TYPE</th>  
        <th class="textcolor">ANY SPECIAL REQUIREMENT</th>
        <th class="textcolor">PAYMENT STATUS</th>
        <th class="textcolor">CLASS</th>
      </tr>
    </thead>
      <%@page import="java.io.*,com.dbConnection.DBconnection" %>
    
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
    <%@ page import="com.dbConnection.*,java.sql.Connection,java.sql.PreparedStatement"%>
    <%@page import="javax.servlet.http.HttpSession"%>
    <%  //HttpSession session1=request.getSession(false);  
   // String n=(String)session.getAttribute("age1");
   /*  out.print(session.getAttribute("age2"));
    if(session.getAttribute("age2").equals(0)) out.println("hi"); */
    String nop=(String)session.getAttribute("nop");
    int n=Integer.parseInt(nop);
    
    String trid=request.getParameter("trid");
    System.out.println(trid);
    %>
    <tbody>
    
    <% int j;  
    try{ Statement st;
        Connection con=new DBconnection().getConnection();
        System.out.println("connected succesfully");
        Statement stmt=con.createStatement();
        int i=0;
        ArrayList al=null;
        ArrayList F_list =new ArrayList();
        String query=new String();
        query = "select * from blocking_details where trid='"+trid+"'";
        st = con.createStatement();
        ResultSet  rs = st.executeQuery(query);
        while(rs.next()){
    
  
    
     %>
     <tr><td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(8)%></td>
    <td><%=rs.getString(9)%></td>
    <td><%=rs.getString(10)%></td>
    <td><%=rs.getString(11)%></td>
    <td><%=rs.getString(12)%></td>
    <td><%=rs.getString(13)%></td>
    <td><%=rs.getString(14)%></td>
	</tr>
	<%//System.out.println(session.getAttribute("f_name"+i)+" "+session.getAttribute("age"+i)); %>
    <%
        }
    } catch(Exception e ){ 
    	} %>
    
    
    <%
   // String trid=(String)session.getAttribute("trid");
   
	try{ int i;
		
		Connection con=new DBconnection().getConnection(); 
    for(i=1;i<=n;i++)
    {
    	
   	 PreparedStatement st=con.prepareStatement("insert into booking_details (select * from blocking_details where trid=?)"); 
   	 st.setString(1,trid);
	
	  st.executeUpdate();
	  st.close();  
		 con.close();
    }
    
	}catch(Exception e){
		
	}
	
	 
    %>
    <% 
    try{
    	Connection con=new DBconnection().getConnection(); 
    	
 PreparedStatement st=con.prepareStatement("delete from blocking_details where trid=?");
 st.setString(1,trid);
 st.executeUpdate();
 st.close();  
	 con.close();
    	
    	
    }catch(Exception e){
    	
    	
    }
    
    
    %>
    
    
    
      <tr>
    <td>
    <form action="Pay" method="post">

    </td>
    <tr><td><input type="text" name="cardnumber" placeholder="Card Number"></td></tr><br/><br/>
   <tr><td><input type="text" name="expirymonth" placeholder="Expiry Month"></td></tr>
   <tr><td><input type="text" name="cvv" placeholder="CVV"></td></tr><%System.out.println(trid); %>
    <tr><td><input type="hidden" name="trid"  value=<%=trid %>></td></tr>
    <tr><td><input type="submit" value="PAY NOW"></td></tr> </form>
</tr>


 <tr>
    <td>
    <form action="homepage.html" method="post">

    </td>
    
    <tr><td><input type="submit" value="HOME"></td></tr> </form>
</tr>
</tbody></table>
</div>
</div>


</body>
</html>