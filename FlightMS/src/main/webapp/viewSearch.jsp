<html>
    <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Search Results</title>
        
        <style>
             .container {
    border-radius: 5px;
    
  background: -webkit-linear-gradient(left, #000000, #25b7c4);
  background: linear-gradient(to right, #000000, #25b7c4);
  font-family: 'Roboto', sans-serif; 
}
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:450px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

input[type=submit]:hover {
    background-color: black;
}

input[type=submit] {
    background-color: #595959;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: left;
      margin:10px 10px 10px 10px; 
}
       input[type=number]{
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
}


    



body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #000000, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}
  
        </style>
        
        
    </head>
    <body>

<table cellpadding="0" cellspacing="0" border="0">  
                    <tbody> 
                <thead>
      <tr>
        <th>FLIGHT ID</th>
        <th>SOURCE</th>
        <th>DESTINATION</th>
        <th>DAYS RUNNING</th>
         <th>DEPARTURE TIME</th>
        <th>ARRIVAL TIME</th>
        <th>ECONOMY CLASS SEAT</th>
        <th>BUSINESS CLASS SEAT</th>
        <th>ECONOMY CLASS SEATS COST</th>
        <th>BUSINESS CLASS SEAT COST</th>
        
      </tr>
    </thead>
    <%@page import="java.io.*,com.dbConnection.DBconnection" %>
    
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
               <%  Statement st;
               String date2 =request.getParameter("date");
               SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
               Date rdate=sdf1.parse(date2);
               Date curdate=new Date();
               SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
       		String crdate=sdf2.format(curdate);
       		Date cdate=sdf1.parse(crdate);
       		String uid=(String) session.getAttribute("userid");
       		System.out.println(uid);
       		//String rdate=sdf2.format(date2);
       		/* int c=Integer.parseInt(cdate);
       		int r=Integer.parseInt(date2);
       		int diff=c-r; */
       	  long diffInMillies = Math.abs(cdate.getTime() - rdate.getTime());
       	    long diff = diffInMillies/86400000;
       		out.print(diff);
               try{
               Connection con=new DBconnection().getConnection();
               System.out.println("connected succesfully");
               Statement stmt=con.createStatement();
               String  source  = request.getParameter("source");
               String  destination  = request.getParameter("destination");
               String passengers = request.getParameter("passengers");
               String classtype = request.getParameter("class");
               int p=Integer.parseInt(passengers);
               String date =request.getParameter("date");
              
               Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(date);  
             		SimpleDateFormat sdf = new SimpleDateFormat("EEE");
             		String stringDate = sdf.format(date1);
             		
            
               int i=0;
               ArrayList al=null;
               ArrayList F_list =new ArrayList();
               String query=new String();
               if(classtype.equals("economy")){
                query = "select * from flights where source='"+source+"'and destination='"+destination+"' and days like '"+stringDate+"%' and eseat>="+passengers+"";   
               }
               else if(classtype.equals("business")){
                   query = "select * from flights where source='"+source+"'and destination='"+destination+"' and days like '"+stringDate+"%' and bseat>="+passengers+"";   
                  }
               st = con.createStatement();
               ResultSet  rs = st.executeQuery(query);


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
               <td><%=rs.getString(8)%></td>
               <td><%=rs.getString(9)%></td>
               <td><%=rs.getString(10)%></td>
               <%if (diff>=96 && diff<=183 && !uid.equals(null)) { %>
                 <td><form action="Blocking.jsp" method="post">
                 <input type="hidden" name="date" value="<%=date%>">
               <input type="hidden" name="fid" value="<%=rs.getString(1)%>">
                <input type="hidden" name="class" value="<%=classtype%>">
                <input type="hidden" name="nop" value=<%=passengers %>>
               <input type="submit" value="BLOCK NOW">
               </form></td><%} %>
               <% if(diff<=95) {%>
               <td><form action="Booking.jsp" method="post">
               <input type="hidden" name="date" value="<%=date%>">
               <input type="hidden" name="fid" value="<%=rs.getString(1)%>">
                <input type="hidden" name="class" value="<%=classtype%>">
                <input type="hidden" name="nop" value=<%=passengers %>>
               <input type="submit" value="BOOK NOW">
               </form></td><%} %>
                <%if(diff>183) {%>
               <td><p>BOOKING NOT AVAILABLE NOW</p></td> <%} %> 
             </tr>
            
               
               <% }
               
               

               request.setAttribute("FList",F_list);
               //HttpSession session=request.getSession();  
              // session.setAttribute("date",date);
               response.setContentType("text/html");
					
               
                con.close();
                System.out.println("Disconnected from database");
                } catch (Exception e) {
                e.printStackTrace();
                }
               
            
                 %>
               
               
  
                     </tbody>
                     </table>   
                     
                      </body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      