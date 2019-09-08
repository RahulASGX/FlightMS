<html>
    <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Search Results</title>
        

        
    </head>
    <body>
<H1>BOOKING DETAILS</H1>	
<table cellpadding="0" cellspacing="0" border="0">  
                    <tbody> 
                <thead>
      <tr>
        <th>NAME</th>
        <th>SOURCE</th>
        <th>DESTINATION</th>
        <th>DISCOUNT ON</th>
         <th>PAYMENT STATUS</th>
        <th>CLASS</th>
        <th>TRID</th>
        <th>PRICE</th>
        <th>JOURNEY DATE</th>
        
      </tr>
    </thead>
    <%@page import="java.io.*,com.dbConnection.DBconnection" %>
    
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
               <%  Statement st;
               
              
       	
               try{
               Connection con=new DBconnection().getConnection();
               System.out.println("connected succesfully");
               Statement stmt=con.createStatement();
               String  uid  = (String) session.getAttribute("userid");
               System.out.println(uid);
               int i=0;
               ArrayList al=null;
               ArrayList F_list =new ArrayList();
               String query=new String();
              
                query = "select concat(b.first_name,' ',b.last_name),f.source,f.destination,b.spcl_type,b.payment_status,b.trid,b.price,b.jdate from booking_details b inner join flights f on b.fid=f.fid where cid='"+uid+"'";     
               st = con.createStatement();
               ResultSet  rs = st.executeQuery(query);

              System.out.println(rs.next());
               while(rs.next()){
              // al  = new ArrayList();
             // out.print("inside rs");%>
               <tr>
               
               <td><%=rs.getString(1)%></td>
               <td><%=rs.getString(2)%></td>
               <td><%=rs.getString(3)%></td>
               <td><%=rs.getString(4)%></td>
               <td><%=rs.getString(5)%></td> 
               <td><%=rs.getString(6)%></td>
               <td><%=rs.getInt(7)%></td>
               <td><%=rs.getString(8) %></td>
         <% System.out.println(rs.getString(2)); }%>

           <%    request.setAttribute("FList",F_list);
               //HttpSession session=request.getSession();  
              // session.setAttribute("date",date);
               response.setContentType("text/html");
					
               
                con.close();
                System.out.println("Disconnected from database");
                
                } catch (Exception e) {
                e.printStackTrace();
                }
               
            
                 %>
               
               
  <H1>BLOCKING DETAILS</H1>	
                     </tbody>
                     </table>
                     
                     
                     
                     <table cellpadding="0" cellspacing="0" border="0">  
                    <tbody> 
                <thead>
      <tr>
        <th>NAME</th>
        <th>SOURCE</th>
        <th>DESTINATION</th>
        <th>DISCOUNT ON</th>
         <th>RESERVATION STATUS</th>
        <th>CLASS</th>
        <th>TRID</th>
        <th>PRICE</th>
        <th>JOURNEY DATE</th>
        
      </tr>
    </thead>
    <%@page import="java.io.*,com.dbConnection.DBconnection" %>
    
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
               <% // Statement st2;
              
       	
               try{
               Connection con=new DBconnection().getConnection();
               System.out.println("connected succesfullybl");
               Statement stmt=con.createStatement();
               String  uid  = request.getParameter("uid");
               int i=0;
               ArrayList al=null;
               ArrayList F_list =new ArrayList();
               String query=new String();
              
                query = "select concat(b.first_name,' ',b.last_name),f.source,f.destination,b.spcl_type,b.reservation_status,b.trid,b.price,b.jdate from blocking_details b inner join flights f on b.fid=f.fid where cid='"+uid+"'";   
              
             
                  // query = "select * from flights where source='"+source+"'and destination='"+destination+"' and days like '"+stringDate+"%' and bseat>="+passengers+"";   
                 
               stmt = con.createStatement();
               ResultSet  rs = stmt.executeQuery(query);


               while(rs.next()){
              // al  = new ArrayList();
             // out.print("inside rs");%>
               <tr>
               
               <td><%=rs.getString(1)%></td>
               <td><%=rs.getString(2)%></td>
               <td><%=rs.getString(3)%></td>
               <td><%=rs.getString(4)%></td>
               <td><%=rs.getString(5)%></td> 
               <td><%=rs.getString(6)%></td>
               <td><%=rs.getString(7)%></td>
               <td><%=rs.getString(8) %></td>
         

           <%    request.setAttribute("FList",F_list);
               //HttpSession session=request.getSession();  
              // session.setAttribute("date",date);
               response.setContentType("text/html");
					
               }
                con.close();
                System.out.println("Disconnected from databasebl");
                
                } catch (Exception e) {
               System.out.println(e);
                }
               
            
                 %>
               
               
  
                     </tbody>
                     </table>
                     
                     
                     <form action="viewSearch.jsp" method="post">

<table>
<tr>
<th>SOURCE</th>
<td>
<select name="source">
<option value="KOLKATA">KOLKATA</option>
<option value="DELHI">DELHI </option>
<option value="MUMBAI">MUMBAI</option>
<option value="BANGALORE">BANGALORE</option>
<option value="NAGPUR">NAGPUR</option>
<option value="CHENNAI">CHENNAI</option>
<option value="PUNE">PUNE</option>
<option value="DURGAPUR">DURGAPUR</option>
</select></td>
</tr>
<tr>
<th>DESTINATION</th>
<td>
<select name="destination">
<option value="DURGAPUR">DURGAPUR</option>
<option value="KOLKATA">KOLKATA</option>
<option value="DELHI">DELHI</option>
<option value="MUMBAI">MUMBAI</option>
<option value="BANGALORE">BANGALORE</option>
<option value="NAGPUR">NAGPUR</option>
<option value="CHENNAI">CHENNAI</option>
<option value="PUNE">PUNE</option>
</select>
</td>
</tr>
<tr>
<th>DATE</th>
<td>
<input type="date" name="date">
</td>
</tr>

<tr><th>PASSENGERS</th>
<td><input type="number" name=passengers></td>
</tr>

<tr><th>CLASS</th>
<td><select name="class"><option value="0">SELECT CLASS</option><option value="economy">ECONOMY</option><option  value="business">BUSINESS</option></select></td>
</tr>

<tr><td><input type="submit" value="SEARCH FLIGHT"></td>
</tr>
</table>
</form>
                     
               <form action="Logout"><input type="submit" value="LOGOUT"></form>
                     
                     
                     </body>
                     </html>