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
        <th class="textcolor">RESERVATION STATUS</th>
        <th class="textcolor">CLASS</th>
      </tr>
    </thead>
    <%@ page import="javax.servlet.http.HttpSession"
     %>
    <%  //HttpSession session1=request.getSession(false);  
   // String n=(String)session.getAttribute("age1");
   /*  out.print(session.getAttribute("age2"));
    if(session.getAttribute("age2").equals(0)) out.println("hi"); */
    String nop=(String)session.getAttribute("nop");
    int n=Integer.parseInt(nop);
    %>
    <tbody>
    
    <% int j;
    for(j=1;j<=n;j++)
    {
    
     %>
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><%=session.getAttribute("f_name"+j)%></td>
    <td><%=session.getAttribute("l_name"+j)%></td>
    <td><%=session.getAttribute("age"+j)%></td>
    <td><%=session.getAttribute("email"+j)%></td>
    <td><%=session.getAttribute("contact"+j)%></td>
    <td><%=session.getAttribute("sex"+j)  %></td>
    <td><%=session.getAttribute("spcl_type"+j) %></td>
    <td><%=session.getAttribute("seattypeone"+j) %></td>
    <td><%=session.getAttribute("seattypetwo"+j)  %></td>
    <td><%=session.getAttribute("mealtype"+j) %></td>
    <td><%=session.getAttribute("special_requirement"+j )%></td>
    <td><%=session.getAttribute("reservation_status"+j)  %></td>
    <td><%=session.getAttribute("class")  %></td>
	</tr>
	<%//System.out.println(session.getAttribute("f_name"+i)+" "+session.getAttribute("age"+i)); %>
    <%} %>
    
    
    
    
      <tr>
    <td>
    <form action="ViewBooking2.jsp" method="post">
<!--  <select name="class"><option value="0">SELECT CLASS</option> <option value="business">BUSINESS</option> <option value="economy">ECONOMY</option></select>   
   -->
   <input type="hidden" name="trid" value=<%=session.getAttribute("trid")%>>
    </td>
    
    <tr><td><input type="submit" value="BOOK NOW"></td></tr> </form>
</tr>
 <tr>
    <td>
    <form action="homepage.html" method="post">
<!--  <select name="class"><option value="0">SELECT CLASS</option> <option value="business">BUSINESS</option> <option value="economy">ECONOMY</option></select>   
   -->
   
    </td>
    
    <tr><td><input type="submit" value="HOME"></td></tr> </form>
</tr>


</tbody></table>
</div>
</div>


</body>
</html>