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
      </tr>
    </thead>
    <%@ page import="javax.servlet.http.HttpSession"
     %>
    <%  //HttpSession session1=request.getSession(false);  
   // String n=(String)session.getAttribute("age1");
   /*  out.print(session.getAttribute("age2"));
    if(session.getAttribute("age2").equals(0)) out.println("hi"); */
    String nop=(String)session.getAttribute("nop");
    
    %>
    <tbody>
    
    <%if(nop.equals("1")) { %>
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name1").equals(" ")) out.println(session.getAttribute("f_name1"));%></td>
    <td><%if(!session.getAttribute("l_name1").equals(" ")) out.println(session.getAttribute("l_name1"));%></td>
    <td><%if(!session.getAttribute("age1").equals(0)) out.println(session.getAttribute("age1"));%></td>
    <td><%if(!session.getAttribute("email1").equals(" ")) out.println(session.getAttribute("email1"));%></td>
    <td><%if(!session.getAttribute("contact1").equals(" ")) out.println(session.getAttribute("contact1"));%></td>
    <td><%if(!session.getAttribute("sex1").equals("0")) out.println(session.getAttribute("sex1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type1").equals("0")) out.println(session.getAttribute("spcl_type1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone1").equals("0")) out.println(session.getAttribute("seattypeone1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo1").equals("0")) out.println(session.getAttribute("seattypetwo1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype1").equals("0")) out.println(session.getAttribute("mealtype1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement1").equals("0")) out.println(session.getAttribute("special_requirement1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status1").equals("0")) out.println(session.getAttribute("payment_status1")); else out.println(" ");%></td>
	</tr>
    <%} %>
    
    <%if(nop.equals("2")) { %>
    <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name1").equals(" ")) out.println(session.getAttribute("f_name1"));%></td>
    <td><%if(!session.getAttribute("l_name1").equals(" ")) out.println(session.getAttribute("l_name1"));%></td>
    <td><%if(!session.getAttribute("age1").equals(0)) out.println(session.getAttribute("age1"));%></td>
    <td><%if(!session.getAttribute("email1").equals(" ")) out.println(session.getAttribute("email1"));%></td>
    <td><%if(!session.getAttribute("contact1").equals(" ")) out.println(session.getAttribute("contact1"));%></td>
    <td><%if(!session.getAttribute("sex1").equals("male")) out.println(session.getAttribute("sex1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type1").equals("none")) out.println(session.getAttribute("spcl_type1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone1").equals("window")) out.println(session.getAttribute("seattypeone1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo1").equals("front")) out.println(session.getAttribute("seattypetwo1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype1").equals("veg")) out.println(session.getAttribute("mealtype1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement1").equals("none")) out.println(session.getAttribute("special_requirement1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status1").equals("not paid")) out.println(session.getAttribute("payment_status1")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name2").equals(" ")) out.println(session.getAttribute("f_name2"));%></td>
    <td><%if(!session.getAttribute("l_name2").equals(" ")) out.println(session.getAttribute("l_name2"));%></td>
    <td><%if(!session.getAttribute("age2").equals(0)) out.println(session.getAttribute("age2"));%></td>
    <td><%if(!session.getAttribute("email2").equals(" ")) out.println(session.getAttribute("email2"));%></td>
    <td><%if(!session.getAttribute("contact2").equals(" ")) out.println(session.getAttribute("contact2"));%></td>
     <td><%if(!session.getAttribute("sex2").equals("male")) out.println(session.getAttribute("sex2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type2").equals("none")) out.println(session.getAttribute("spcl_type2"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone2").equals("window")) out.println(session.getAttribute("seattypeone2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo2").equals("front")) out.println(session.getAttribute("seattypetwo2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype2").equals("veg")) out.println(session.getAttribute("mealtype2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement2").equals("none")) out.println(session.getAttribute("special_requirement2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status2").equals("not paid")) out.println(session.getAttribute("payment_status2")); else out.println(" ");%></td>
	</tr>
    
    <%} %>
    
    <%if(nop.equals("3")) { %>
    
    <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name1").equals(" ")) out.println(session.getAttribute("f_name1"));%></td>
    <td><%if(!session.getAttribute("l_name1").equals(" ")) out.println(session.getAttribute("l_name1"));%></td>
    <td><%if(!session.getAttribute("age1").equals(0)) out.println(session.getAttribute("age1"));%></td>
    <td><%if(!session.getAttribute("email1").equals(" ")) out.println(session.getAttribute("email1"));%></td>
    <td><%if(!session.getAttribute("contact1").equals(" ")) out.println(session.getAttribute("contact1"));%></td>
    <td><%if(!session.getAttribute("sex1").equals("male")) out.println(session.getAttribute("sex1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type1").equals("none")) out.println(session.getAttribute("spcl_type1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone1").equals("window")) out.println(session.getAttribute("seattypeone1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo1").equals("front")) out.println(session.getAttribute("seattypetwo1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype1").equals("veg")) out.println(session.getAttribute("mealtype1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement1").equals("none")) out.println(session.getAttribute("special_requirement1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status1").equals("not paid")) out.println(session.getAttribute("payment_status1")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name2").equals(" ")) out.println(session.getAttribute("f_name2"));%></td>
    <td><%if(!session.getAttribute("l_name2").equals(" ")) out.println(session.getAttribute("l_name2"));%></td>
    <td><%if(!session.getAttribute("age2").equals(0)) out.println(session.getAttribute("age2"));%></td>
    <td><%if(!session.getAttribute("email2").equals(" ")) out.println(session.getAttribute("email2"));%></td>
    <td><%if(!session.getAttribute("contact2").equals(" ")) out.println(session.getAttribute("contact2"));%></td>
     <td><%if(!session.getAttribute("sex2").equals("male")) out.println(session.getAttribute("sex2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type2").equals("none")) out.println(session.getAttribute("spcl_type2"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone2").equals("window")) out.println(session.getAttribute("seattypeone2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo2").equals("front")) out.println(session.getAttribute("seattypetwo2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype2").equals("veg")) out.println(session.getAttribute("mealtype2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement2").equals("none")) out.println(session.getAttribute("special_requirement2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status2").equals("not paid")) out.println(session.getAttribute("payment_status2")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name3").equals(" ")) out.println(session.getAttribute("f_name3"));%></td>
    <td><%if(!session.getAttribute("l_name3").equals(" ")) out.println(session.getAttribute("l_name3"));%></td>
    <td><%if(!session.getAttribute("age3").equals(0)) out.println(session.getAttribute("age3"));%></td>
    <td><%if(!session.getAttribute("email3").equals(" ")) out.println(session.getAttribute("email3"));%></td>
    <td><%if(!session.getAttribute("contact3").equals(" ")) out.println(session.getAttribute("contact3"));%></td>
     <td><%if(!session.getAttribute("sex3").equals("male")) out.println(session.getAttribute("sex3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type3").equals("none")) out.println(session.getAttribute("spcl_type3"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone3").equals("window")) out.println(session.getAttribute("seattypeone3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo3").equals("front")) out.println(session.getAttribute("seattypetwo3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype3").equals("veg")) out.println(session.getAttribute("mealtype3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement3").equals("none")) out.println(session.getAttribute("special_requirement3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status3").equals("not paid")) out.println(session.getAttribute("payment_status3")); else out.println(" ");%></td>
	</tr>
    <%} %>
   <%if(nop.equals("4")) { %> 
    <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name1").equals(" ")) out.println(session.getAttribute("f_name1"));%></td>
    <td><%if(!session.getAttribute("l_name1").equals(" ")) out.println(session.getAttribute("l_name1"));%></td>
    <td><%if(!session.getAttribute("age1").equals(0)) out.println(session.getAttribute("age1"));%></td>
    <td><%if(!session.getAttribute("email1").equals(" ")) out.println(session.getAttribute("email1"));%></td>
    <td><%if(!session.getAttribute("contact1").equals(" ")) out.println(session.getAttribute("contact1"));%></td>
    <td><%if(!session.getAttribute("sex1").equals("male")) out.println(session.getAttribute("sex1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type1").equals("none")) out.println(session.getAttribute("spcl_type1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone1").equals("window")) out.println(session.getAttribute("seattypeone1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo1").equals("front")) out.println(session.getAttribute("seattypetwo1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype1").equals("veg")) out.println(session.getAttribute("mealtype1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement1").equals("none")) out.println(session.getAttribute("special_requirement1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status1").equals("not paid")) out.println(session.getAttribute("payment_status1")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name2").equals(" ")) out.println(session.getAttribute("f_name2"));%></td>
    <td><%if(!session.getAttribute("l_name2").equals(" ")) out.println(session.getAttribute("l_name2"));%></td>
    <td><%if(!session.getAttribute("age2").equals(0)) out.println(session.getAttribute("age2"));%></td>
    <td><%if(!session.getAttribute("email2").equals(" ")) out.println(session.getAttribute("email2"));%></td>
    <td><%if(!session.getAttribute("contact2").equals(" ")) out.println(session.getAttribute("contact2"));%></td>
     <td><%if(!session.getAttribute("sex2").equals("male")) out.println(session.getAttribute("sex2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type2").equals("none")) out.println(session.getAttribute("spcl_type2"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone2").equals("window")) out.println(session.getAttribute("seattypeone2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo2").equals("front")) out.println(session.getAttribute("seattypetwo2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype2").equals("veg")) out.println(session.getAttribute("mealtype2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement2").equals("none")) out.println(session.getAttribute("special_requirement2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status2").equals("not paid")) out.println(session.getAttribute("payment_status2")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name3").equals(" ")) out.println(session.getAttribute("f_name3"));%></td>
    <td><%if(!session.getAttribute("l_name3").equals(" ")) out.println(session.getAttribute("l_name3"));%></td>
    <td><%if(!session.getAttribute("age3").equals(0)) out.println(session.getAttribute("age3"));%></td>
    <td><%if(!session.getAttribute("email3").equals(" ")) out.println(session.getAttribute("email3"));%></td>
    <td><%if(!session.getAttribute("contact3").equals(" ")) out.println(session.getAttribute("contact3"));%></td>
     <td><%if(!session.getAttribute("sex3").equals("male")) out.println(session.getAttribute("sex3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type3").equals("none")) out.println(session.getAttribute("spcl_type3"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone3").equals("window")) out.println(session.getAttribute("seattypeone3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo3").equals("front")) out.println(session.getAttribute("seattypetwo3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype3").equals("veg")) out.println(session.getAttribute("mealtype3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement3").equals("none")) out.println(session.getAttribute("special_requirement3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status3").equals("not paid")) out.println(session.getAttribute("payment_status3")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name4").equals(" ")) out.println(session.getAttribute("f_name4"));%></td>
    <td><%if(!session.getAttribute("l_name4").equals(" ")) out.println(session.getAttribute("l_name4"));%></td>
    <td><%if(!session.getAttribute("age4").equals(0)) out.println(session.getAttribute("age4"));%></td>
    <td><%if(!session.getAttribute("email4").equals(" ")) out.println(session.getAttribute("email4"));%></td>
    <td><%if(!session.getAttribute("contact4").equals(" ")) out.println(session.getAttribute("contact4"));%></td>
     <td><%if(!session.getAttribute("sex4").equals("male")) out.println(session.getAttribute("sex4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type4").equals("none")) out.println(session.getAttribute("spcl_type4"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone4").equals("window")) out.println(session.getAttribute("seattypeone4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo4").equals("front")) out.println(session.getAttribute("seattypetwo4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype4").equals("veg")) out.println(session.getAttribute("mealtype4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement4").equals("none")) out.println(session.getAttribute("special_requirement4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status4").equals("not paid")) out.println(session.getAttribute("payment_status4")); else out.println(" ");%></td>
	</tr>
    
    <%} %>
    <%if(nop.equals("5")) { %> 
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name1").equals(" ")) out.println(session.getAttribute("f_name1"));%></td>
    <td><%if(!session.getAttribute("l_name1").equals(" ")) out.println(session.getAttribute("l_name1"));%></td>
    <td><%if(!session.getAttribute("age1").equals(0)) out.println(session.getAttribute("age1"));%></td>
    <td><%if(!session.getAttribute("email1").equals(" ")) out.println(session.getAttribute("email1"));%></td>
    <td><%if(!session.getAttribute("contact1").equals(" ")) out.println(session.getAttribute("contact1"));%></td>
    <td><%if(!session.getAttribute("sex1").equals("male")) out.println(session.getAttribute("sex1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type1").equals("none")) out.println(session.getAttribute("spcl_type1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone1").equals("window")) out.println(session.getAttribute("seattypeone1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo1").equals("front")) out.println(session.getAttribute("seattypetwo1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype1").equals("veg")) out.println(session.getAttribute("mealtype1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement1").equals("none")) out.println(session.getAttribute("special_requirement1")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status1").equals("not paid")) out.println(session.getAttribute("payment_status1")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name2").equals(" ")) out.println(session.getAttribute("f_name2"));%></td>
    <td><%if(!session.getAttribute("l_name2").equals(" ")) out.println(session.getAttribute("l_name2"));%></td>
    <td><%if(!session.getAttribute("age2").equals(0)) out.println(session.getAttribute("age2"));%></td>
    <td><%if(!session.getAttribute("email2").equals(" ")) out.println(session.getAttribute("email2"));%></td>
    <td><%if(!session.getAttribute("contact2").equals(" ")) out.println(session.getAttribute("contact2"));%></td>
     <td><%if(!session.getAttribute("sex2").equals("male")) out.println(session.getAttribute("sex2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type2").equals("none")) out.println(session.getAttribute("spcl_type2"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone2").equals("window")) out.println(session.getAttribute("seattypeone2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo2").equals("front")) out.println(session.getAttribute("seattypetwo2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype2").equals("veg")) out.println(session.getAttribute("mealtype2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement2").equals("none")) out.println(session.getAttribute("special_requirement2")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status2").equals("not paid")) out.println(session.getAttribute("payment_status2")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name3").equals(" ")) out.println(session.getAttribute("f_name3"));%></td>
    <td><%if(!session.getAttribute("l_name3").equals(" ")) out.println(session.getAttribute("l_name3"));%></td>
    <td><%if(!session.getAttribute("age3").equals(0)) out.println(session.getAttribute("age3"));%></td>
    <td><%if(!session.getAttribute("email3").equals(" ")) out.println(session.getAttribute("email3"));%></td>
    <td><%if(!session.getAttribute("contact3").equals(" ")) out.println(session.getAttribute("contact3"));%></td>
     <td><%if(!session.getAttribute("sex3").equals("male")) out.println(session.getAttribute("sex3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type3").equals("none")) out.println(session.getAttribute("spcl_type3"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone3").equals("window")) out.println(session.getAttribute("seattypeone3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo3").equals("front")) out.println(session.getAttribute("seattypetwo3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype3").equals("veg")) out.println(session.getAttribute("mealtype3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement3").equals("none")) out.println(session.getAttribute("special_requirement3")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status3").equals("not paid")) out.println(session.getAttribute("payment_status3")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name4").equals(" ")) out.println(session.getAttribute("f_name4"));%></td>
    <td><%if(!session.getAttribute("l_name4").equals(" ")) out.println(session.getAttribute("l_name4"));%></td>
    <td><%if(!session.getAttribute("age4").equals(0)) out.println(session.getAttribute("age4"));%></td>
    <td><%if(!session.getAttribute("email4").equals(" ")) out.println(session.getAttribute("email4"));%></td>
    <td><%if(!session.getAttribute("contact4").equals(" ")) out.println(session.getAttribute("contact4"));%></td>
     <td><%if(!session.getAttribute("sex4").equals("male")) out.println(session.getAttribute("sex4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type4").equals("none")) out.println(session.getAttribute("spcl_type4"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone4").equals("window")) out.println(session.getAttribute("seattypeone4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo4").equals("front")) out.println(session.getAttribute("seattypetwo4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype4").equals("veg")) out.println(session.getAttribute("mealtype4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement4").equals("none")) out.println(session.getAttribute("special_requirement4")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status4").equals("not paid")) out.println(session.getAttribute("payment_status4")); else out.println(" ");%></td>
	</tr>
    
     <tr><td><%=session.getAttribute("fid")%></td>
    <td><% if(!session.getAttribute("f_name5").equals(" ")) out.println(session.getAttribute("f_name5"));%></td>
    <td><%if(!session.getAttribute("l_name5").equals(" ")) out.println(session.getAttribute("l_name5"));%></td>
    <td><%if(!session.getAttribute("age5").equals(0)) out.println(session.getAttribute("age5"));%></td>
    <td><%if(!session.getAttribute("email5").equals(" ")) out.println(session.getAttribute("email5"));%></td>
    <td><%if(!session.getAttribute("contact5").equals(" ")) out.println(session.getAttribute("contact5"));%></td>
     <td><%if(!session.getAttribute("sex5").equals("male")) out.println(session.getAttribute("sex5")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("spcl_type5").equals("none")) out.println(session.getAttribute("spcl_type5"));  else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypeone5").equals("window")) out.println(session.getAttribute("seattypeone5")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("seattypetwo5").equals("front")) out.println(session.getAttribute("seattypetwo5")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("mealtype5").equals("veg")) out.println(session.getAttribute("mealtype5")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("special_requirement5").equals("none")) out.println(session.getAttribute("special_requirement5")); else out.println(" ");%></td>
    <td><%if(!session.getAttribute("payment_status5").equals("not paid")) out.println(session.getAttribute("payment_status5")); else out.println(" ");%></td>
	</tr>
	<%} %>
	
    <tr>
    <td>
    <form action="Pay" method="post">
 <select name="class"><option value="0">SELECT CLASS</option> <option value="business">BUSINESS</option> <option value="economy">ECONOMY</option></select>   
    
   
    </td>
    
    <tr><td><input type="submit" value="PAY NOW"></td></tr> </form>
</tr>
</tbody></table>
</div>
</div>


</body>
</html>