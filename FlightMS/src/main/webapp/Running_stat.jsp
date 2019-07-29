
<%@ page import="java.util.*" %> 
<html>
<head>
</head>
<body>

<br><br><br><br><br><br>
<table width="700px" align="center"
style="border:1px solid #000000;">
<tr>
<td colspan=8 align="center"
style="background-color:ffeeff">
<b>SEARCH RESULT</b></td>
</tr>
<tr style="background-color:efefef;">
<td><b>Travel ID</b></td>
<td><b>Flight ID</b></td>
<td><b>Delayed Departure Time</b></td>
<td><b>Delayed Arrival Time</b></td>

</tr>
<%
int count=0;
String color = "#F9EBB3";


if(request.getAttribute("FList")!=null)
{
ArrayList al = (ArrayList)request.getAttribute("FList");
Iterator itr = al.iterator();


while(itr.hasNext()){

if((count%2)==0){
color = "#eeffee";
}
else{
color = "#F9EBB3";
}
count++;
ArrayList F_list = (ArrayList)itr.next();
%>
<tr style="background-color:<%=color%>;">
<td><%=F_list.get(0)%></td>
<td><%=F_list.get(1)%></td>
<td><%=F_list.get(2)%></td>
<td><%=F_list.get(3)%></td>

</tr>
<%
}
}
%>
<%
if(count==0){
%>
<tr>
<td colspan=8 align="center"
style="background-color:eeffee"><b>No Record</b></td>
</tr>
<%
}
%>
</table>
</body>
</html>