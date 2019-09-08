<html>
    <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Search Results</title>
        
    </head>
    <body>

<table cellpadding="0" cellspacing="0" border="0">  
                    <tbody> 
                <thead>
      <tr>
        <th>NAME</th>
        <th>FLIGHT ID</th>
        <th>DISCOUNT ON CATEGORY</th>
        <th>MEAL TYPE</th>
         <th>CLASS</th>
        <th>PRICE</th>
       <th>PAYMENT STATUS</th>
        
      </tr>
    </thead>
    <%@page import="java.io.*,com.dbConnection.DBconnection" %>
    
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
    
    <% String payment_status=""; String reservation_status="";%>
               <%  Statement st;
             
               String  trid  = request.getParameter("trid");
       	
               try{
            	  
               Connection con=new DBconnection().getConnection();
               System.out.println("connected succesfully");
               Statement stmt=con.createStatement();
              
               System.out.println(trid);
            
               int i=0;
               ArrayList al=null;
               ArrayList F_list =new ArrayList();
               String query=new String();
             
            
                   query = "select concat(first_name,' ',last_name),fid,spcl_type,mealtype,class,price,payment_status from booking_details where trid='"+trid+"'";   
                  
               st = con.createStatement();
               ResultSet  rs = st.executeQuery(query);


               while(rs.next()){
              // al  = new ArrayList();
             %>
               <tr>
               
               <td><%=rs.getString(1)%></td>
               <td><%=rs.getString(2)%></td>
               <td><%=rs.getString(3)%></td>
               <td><%=rs.getString(4)%></td>
               <td><%=rs.getString(5)%></td> 
               <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td> <% 
                
                payment_status=rs.getString(7);
               
               }%>
              
               
               

             <% 
               
             
             con.close();
             request.setAttribute("FList",F_list);
               //HttpSession session=request.getSession();  
              // session.setAttribute("date",date);
               response.setContentType("text/html");
					
               
               
               // System.out.println("Disconnected from database");
                }
               catch (Exception e) {
              //  System.out.print(e.printStackTrace());
                }
               
            
                 %> 
                 <%  
              try{
            	  
               Connection con=new DBconnection().getConnection();
               System.out.println("connected succesfully");
               Statement stmt=con.createStatement();
              
               System.out.println(trid);
            
               int i=0;
               ArrayList al=null;
               ArrayList F_list =new ArrayList();
               String query=new String();
             
            
                   query = "select concat(first_name,' ',last_name),fid,spcl_type,mealtype,class,price,reservation_status from blocking_details where trid='"+trid+"'";   
                  
               st = con.createStatement();
               ResultSet  rs = st.executeQuery(query);


               while(rs.next()){
              // al  = new ArrayList();
             %>
               <tr>
               
               <td><%=rs.getString(1)%></td>
               <td><%=rs.getString(2)%></td>
               <td><%=rs.getString(3)%></td>
               <td><%=rs.getString(4)%></td>
               <td><%=rs.getString(5)%></td> 
               <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td> <% 
                
                reservation_status=rs.getString(7);
               
               }%>
              
               
               

             <% 
               
             
             con.close();
             request.setAttribute("FList",F_list);
               //HttpSession session=request.getSession();  
              // session.setAttribute("date",date);
               response.setContentType("text/html");
					
               
               
               // System.out.println("Disconnected from database");
                }
               catch (Exception e) {
              //  System.out.print(e.printStackTrace());
                }
               
            
                 %>
               
                 
               
               
  
                     </tbody>
                  
                     
                     </table>
                     
                      <table>
                      
                        
                     <% if (payment_status.equals("not paid")) { %>
                <form action="Pay2" method="post">
               <tr>  <td><input type="text" name="cardnumber" placeholder="Card Number"></td><br/> </tr>
				<tr> <td><input type="text" name="expirymonth" placeholder="Expiry Month"></td></tr>
				<tr> <td><input type="text" name="cvv" placeholder="CVV"></td></tr>
				<input type="hidden" name="trid" value="<%=trid%>">
                 <tr><td><input type="submit" value="PAY NOW"> </td></tr> 
               </form> <%} %>
               <%  if(payment_status.equals("paid")) {%>
               	<form action="homepage.html" method="post">
                
               <tr><td><input type="submit" value="HOME"></td></tr>
               </form>
               <form action="Cancel" method="post">
                <input type="hidden" name="trid" value="<%=trid%>">
               <tr><td><input type="submit" value="CANCEL TICKET"></td></tr>
               </form>
               
               <%} %> 
               <%if(reservation_status.equals("blocked")) { %>
                <form action="ViewBooking2.jsp" method="post">
              
				<input type="hidden" name="trid" value="<%=trid%>">
                 <tr><td><input type="submit" value="BOOK NOW"> </td></tr> 
               </form> <%} %>
               
             
               
               </table>
             
                           
  
                     </tbody>
                  
                     
                     </table>
                     
                      <table>
                      
                        
                     
              <%--   <form action="#" method="post">
              
				<input type="hidden" name="trid" value="<%=trid%>">
                 <tr><td><input type="submit" value="BOOK NOW"> </td></tr> 
               </form>  --%>
              
               
               
               </table>
             
             
               
               </body>
               </html>