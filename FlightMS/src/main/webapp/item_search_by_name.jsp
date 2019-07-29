<%-- 
    Document   : stock_search_by_name
    Created on : 11 Feb, 2018, 11:44:13 AM
    Author     : CYBERBOY
--%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

  
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
         <% 

	 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
                 System.out.println("connected succesfully");
                 Statement stmt=conn.createStatement();
                 String name;
                 name=(request.getParameter("search"));    
                 
          
                 %>
                
                <H1>SEARCH RESULTS FOR <%=request.getParameter("search")%></H1> 
                <nav class="navbar navbar-inverse ">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>  
                        
                    </button>
                    <a class="navbar-brand" href="index.html"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar" > 
                    <ul class="nav navbar-nav">
                       <li><a href="home.jsp" target=""><span class="glyphicon glyphicon-home" style="width: 100px"> HOME</span></a></li>
                        <li><a href="item_interface.jsp" target=""><span class="glyphicon glyphicon-list-alt" style="width: 100px"> ITEMS</span></a></li>
                          <li><a href="stock_interface.jsp" target=""><span class="glyphicon glyphicon-hdd" style="width: 100px"> STOCK</span></a></li>
                        <li><a href="sales_interface.jsp" target=""><span class="  glyphicon glyphicon-folder-open" style="width: 100px"> SALES</span></a></li>
                        <li><a href="accounts_interface.jsp" target=""><span class="  glyphicon glyphicon-alert" style="width: 100px"> ACCOUNTS</span></a></li>
                         
                          <li><a href="logout_exit.jsp" target=""><span class=" glyphicon glyphicon-off" style="width: 100px"> EXIT</span></a></li>
                    </ul> 
                         </div>
            </div>
        </nav>
                <table cellpadding="0" cellspacing="0" border="0">  
                    <tbody> 
                <thead>
      <tr>
        <th>ITEM NUMBER</th>
        <th>ITEM NAME</th>
        <th>DESCRIPTION</th>
        <th>CATEGORY</th>
         <th>PRICE</th>
        <th>STOCK</th>
        
      </tr>
    </thead>
               <%   int i=0;
                  
                 ResultSet rs=stmt.executeQuery("select * from stock where item_name like '"+name+"'");
                 out.println("<table>");%>
               <%while(rs.next()){ 
                   System.out.println("inside loop");
                 %>
               
                 <tr>
       
        <td><%=rs.getInt("item_no")%></td>
        <td><%=rs.getString("item_name")%></td>
        <td><%=rs.getString("description")%></td>
        <td><%=rs.getString("category")%></td>
        <td><%=rs.getInt("price")%></td> 
        <td><%=rs.getInt("stock")%></td>
        
      </tr>
  
      <%   
           
               }    rs.close(); 
                    conn.close();
  

 %>
                     </tbody>
                     </table>
                     <br/><br/>
                 <form> 
                 <input type="submit" value="INSERT AGAIN" formaction="add_item_interface.jsp"> 
                
                     </form>
                 
    </body>
</html>
