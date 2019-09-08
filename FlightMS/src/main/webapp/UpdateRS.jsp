<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="Update_Status" method="post">
      
             <div class="container " style="width:1400px; margin:0 auto;">
                
                 
                 <br/><br/><br/>
           <table class="table table-striped">
                 <thead>
      <tr>
        
        <th class="textcolor">TRAVEL ID</th>
        <th class="textcolor">FLIGHT ID</th>
        <th class="textcolor">DELAYED ARRIVAL TIME</th>
        <th class="textcolor">DELAYED DEPARTURE TIME</th>
       
      </tr>
    </thead>
  
   
   
    <tbody>
        <tr>
          <!--  <td><input type="hidden" name="Trid1" style=" width: 100px"  value="" ></td> -->
            <td><input type="text" name="tid" style=" width: 100px"  value=" " ></td>
            <td><input type="text" name="fid"  style="width: 100px" value=" "></td>
            <td><input type="text" name="dat"  style="width: 120px" value=" "></td>
            <td><input type="text" name="ddt"  style="width: 120px" value=" "></td>
            
        </tr>
        <tr>
        <td><input type="submit" value="UPDATE"></td>
        
        </tr>		
        </form>
        
        
        
        </tbody>
        </table>
        <a href="Admin_home.jsp">Home</a>
        
        
        <form action="Delete_Status" method="post"><input type="text" name="fid"><input type="submit" value="DELETE FLIGHT STATUS"></form>

</body>
</html>