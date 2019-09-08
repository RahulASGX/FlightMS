<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="Update_Flights_Process" method="post">
      
             <div class="container " style="width:1400px; margin:0 auto;">
                
                 
                 <br/><br/><br/>
           <table class="table table-striped">
                 <thead>
      <tr>
        
        <th class="textcolor">FLIGHT ID</th>
        <th class="textcolor">SOURCE</th>
        <th class="textcolor">DESTINATION</th>
        <th class="textcolor">DAYS</th>
       <th class="textcolor">DEPARTURE TIME</th>
       <th class="textcolor">ARRIVAL TIME</th>
       <th class="textcolor">ECONOMY CLASS SEAT</th>
       <th class="textcolor">BUSINESS CLASS SEATS</th>
       <th class="textcolor">BUSINESS CLASS PRICE</th>
       <th class="textcolor">BUSINESS CLASS PRICE</th>
      </tr>
    </thead>
  
   
   
    <tbody>
        <tr>
          <!--  <td><input type="hidden" name="Trid1" style=" width: 100px"  value="" ></td> -->
            <td><input type="text" name="fid" style=" width: 100px"  value=" " ></td>
            <td><input type="text" name="source"  style="width: 100px" value=" "></td>
            <td><input type="text" name="destination"  style="width: 120px" value=" "></td>
            <td><input type="text" name="days"  style="width: 120px" value=" "></td>
             <td><input type="text" name="depttime" style=" width: 100px"  value=" " ></td>
            <td><input type="text" name="arrtime"  style="width: 100px" value=" "></td>
            <td><input type="number" name="ecseat"  style="width: 120px" value="0"></td>
            <td><input type="number" name="bcseat"  style="width: 120px" value="0"></td>
            <td><input type="number" name="ecp"  style="width: 120px" value="0"></td>
            <td><input type="number" name="bcp"  style="width: 120px" value="0"></td>
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