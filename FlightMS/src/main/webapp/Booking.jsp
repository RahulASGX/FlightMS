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
       <form action="Book" method="post">
      
             <div class="container " style="width:1400px; margin:0 auto;">
                
                 
                 <br/><br/><br/>
           <table class="table table-striped">
                 <thead>
      <tr>
        
        <th class="textcolor">FIRST NAME</th>
        <th class="textcolor">LAST NAME</th>
        <th class="textcolor">AGE</th>
        <th class="textcolor">EMAIL</th>
        <th class="textcolor">CONATCT</th>        
        <th class="textcolor">SEX</th>
        <th class="textcolor">SPECIAL STATUS</th>
        <th class="textcolor">SEAT TYPE 1</th>
        <th class="textcolor">SEAT TYPE 2</th>
        <th class="textcolor">MEAL TYPE</th>  
        <th class="textcolor">ANY SPECIAL REQUIREMENT</th>
      </tr>
    </thead>
   <% String nop=request.getParameter("nop");
   //out.print(nop);
   if(nop.equals("1")){
   %>
   
   
    <tbody>
        <tr>
          <!--  <td><input type="hidden" name="Trid1" style=" width: 100px"  value="" ></td> -->
            <td><input type="text" name="f_name1" style=" width: 100px"  value=" " ></td>
            <td><input type="text" name="l_name1"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age1"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email1"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact1" style="width: 100px" value=" "></td>
            <td><select name="sex1"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone1"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
            <td><select name="seattypetwo1"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
            <td><select name="mealtype1"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
             <td><input type="hidden" name="payment_status1" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
<%} %>

<% if(nop.equals("2")) { %>

 <tr>
           
            <td><input type="text" name="f_name1" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name1"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age1"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email1"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact1" style="width: 100px" value=" "></td>
            <td><select name="sex1"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone1"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
            <td><select name="seattypetwo1"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
            <td><select name="mealtype1"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
             <td><input type="hidden" name="payment_status1" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <tr>
           
            <td><input type="text" name="f_name2" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name2"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age2"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email2"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact2" style="width: 100px" value=" "></td>
            <td><select name="sex2"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>
            <td><select name="seattypeone2"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>  
            <td><select name="seattypetwo2"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td> 
            <td><select name="mealtype2"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
            <td><input type="hidden" name="payment_status2" style=" width: 100px" id="itno1" value="not paid" ></td>
                    </tr>
                    
                    <%} %>
        

<%if (nop.equals("3")) { %>

<tr>
           
            <td><input type="text" name="f_name1" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name1"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age1"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email1"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact1" style="width: 100px" value=" "></td>
            <td><select name="sex1"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone1"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
            <td><select name="seattypetwo1"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
            <td><select name="mealtype1"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
             <td><input type="hidden" name="payment_status1" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <tr>
           
            <td><input type="text" name="f_name2" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name2"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age2"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email2"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact2" style="width: 100px" value=" "></td>
            <td><select name="sex2"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>
            <td><select name="seattypeone2"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>  
            <td><select name="seattypetwo2"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td> 
            <td><select name="mealtype2"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
            <td><input type="hidden" name="payment_status2" style=" width: 100px" id="itno1" value="not paid" ></td>
                    </tr>
 <tr>
           
            <td><input type="text" name="f_name3" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name3"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age3"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email3"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact3" style="width: 100px" value=" "></td>
            <td><select name="sex3"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone3"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo3"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype3"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status3" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        
        <%} %>
        
        <%if(nop.equals("4")) { %>
        <tr>
           
            <td><input type="text" name="f_name1" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name1"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age1"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email1"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact1" style="width: 100px" value=" "></td>
            <td><select name="sex1"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone1"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
            <td><select name="seattypetwo1"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
            <td><select name="mealtype1"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
             <td><input type="hidden" name="payment_status1" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <tr>
           
            <td><input type="text" name="f_name2" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name2"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age2"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email2"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact2" style="width: 100px" value=" "></td>
            <td><select name="sex2"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>
            <td><select name="seattypeone2"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>  
            <td><select name="seattypetwo2"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td> 
            <td><select name="mealtype2"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
            <td><input type="hidden" name="payment_status2" style=" width: 100px" id="itno1" value="not paid" ></td>
                    </tr>
 <tr>
           
            <td><input type="text" name="f_name3" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name3"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age3"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email3"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact3" style="width: 100px" value=" "></td>
            <td><select name="sex3"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone3"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo3"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype3"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status3" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        
        <tr>
           
            <td><input type="text" name="f_name4" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name4"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age4"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email4"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact4" style="width: 100px" value=" "></td>
            <td><select name="sex4"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone4"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo4"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype4"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status4" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <%} %>
        
        <%if(nop.equals("5"))  {%>
        
        <tr>
           
            <td><input type="text" name="f_name1" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name1"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age1"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email1"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact1" style="width: 100px" value=" "></td>
            <td><select name="sex1"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone1"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
            <td><select name="seattypetwo1"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
            <td><select name="mealtype1"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement1"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
             <td><input type="hidden" name="payment_status1" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <tr>
           
            <td><input type="text" name="f_name2" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name2"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age2"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email2"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact2" style="width: 100px" value=" "></td>
            <td><select name="sex2"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>
            <td><select name="seattypeone2"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>  
            <td><select name="seattypetwo2"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td> 
            <td><select name="mealtype2"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
            <td><input type="hidden" name="payment_status2" style=" width: 100px" id="itno1" value="not paid" ></td>
                    </tr>
 <tr>
           
            <td><input type="text" name="f_name3" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name3"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age3"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email3"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact3" style="width: 100px" value=" "></td>
            <td><select name="sex3"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone3"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo3"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype3"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status3" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        
        <tr>
           
            <td><input type="text" name="f_name4" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name4"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age4"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email4"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact4" style="width: 100px" value=" "></td>
            <td><select name="sex4"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone4"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo4"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype4"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status4" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        
         <tr>
           
            <td><input type="text" name="f_name5" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name5"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age5"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email5"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact5" style="width: 100px" value=" "></td>
            <td><select name="sex5"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type5"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone5"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
             <td><select name="seattypetwo5"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype5"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement5"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
        <td><input type="hidden" name="payment_status5" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>    
        
        <%} %>
        
        <%if(!nop.equals("1") &&  !nop.equals("2") && !nop.equals("3") && !nop.equals("4") && !nop.equals("5")) { out.println("you can book only 5 seats at a time");  }%>        
		<!-- <tr>
           
            <td><input type="text" name="f_name2" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name2"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age2"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email2"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact2" style="width: 100px" value=" "></td>
            <td><select name="sex2"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>
            <td><select name="seattypeone2"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>  
            <td><select name="seattypetwo2"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td> 
            <td><select name="mealtype2"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
            <td><select name="special_requirement2"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
            <td><input type="hidden" name="payment_status2" style=" width: 100px" id="itno1" value="not paid" ></td>
                    </tr>
        <tr>
           
            <td><input type="text" name="f_name3" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name3"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age3"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email3"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact3" style="width: 100px" value=" "></td>
            <td><select name="sex3"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone3"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo3"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype3"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement3"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status3" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>
        <tr>
           
            <td><input type="text" name="f_name4" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name4"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age4"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email4"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact4" style="width: 100px" value=" "></td>
            <td><select name="sex4"><option value="0">SELECT CHOICE</option> <option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>  
            <td><select name="seattypeone4"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td> 
             <td><select name="seattypetwo4"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype4"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement4"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
       <td><input type="hidden" name="payment_status4" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr> -->
       <!--  <tr>
           
            <td><input type="text" name="f_name5" style=" width: 100px" id="itno1" value=" " ></td>
            <td><input type="text" name="l_name5"  style="width: 100px" value=" "></td>
            <td><input type="number" name="age5"  style="width: 120px" value="0"></td>
            <td><input type="text" name="email5"  style="width: 120px" value=" "></td>
            <td><input type="text" name="contact5" style="width: 100px" value=" "></td>
            <td><select name="sex5"> <option value="0">SELECT CHOICE</option><option value="male">MALE</option> <option value="female">FEMALE</option></select></td>
         	<td><select name="spcl_type5"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="handicapped">HANDICAPPED</option><option value="senior_citizen">SENIOR CITIZEN</option>
            <option value="student">STUDENT</option><option value="defense">DEFENCE PERSONNEL</option><option value="airline">AIRLINE STAFF</option></select> </td>   
            <td><select name="seattypeone5"><option value="0">SELECT CHOICE</option><option value="window">WINDOW</option><option value="aisle">AISLE</option><option value="emergency">NEAR EMERGENCY</option></td>
             <td><select name="seattypetwo5"><option value="0">SELECT CHOICE</option><option value="front">FRONT</option><option value="middle">MIDDLE</option><option value="back">BACK</option></td>
             <td><select name="mealtype5"><option value="0">SELECT CHOICE</option><option value="veg">VEG</option><option value="non_veg">NON-VEG</option></td>
             <td><select name="special_requirement5"><option value="0">SELECT CHOICE</option><option value="none">NONE</option><option value="wheelchair">WHEELCHAIR</option><option value="nurses">NURSES</option><option value="attendents">ATTENDENTS</option><option value="special_medi">SPECIAL MEDICINES</option></td>
        <td><input type="hidden" name="payment_status5" style=" width: 100px" id="itno1" value="not paid" ></td>
        </tr>         -->
         
    </tbody>      
               
               
           </table>
            <br/> 
                 <div>
  <input type="hidden" value="<%=request.getParameter("fid") %>" name="fid">
  <input type="hidden" value="<%=nop%>" name="nop">
                     <input  type="submit" value="BOOK" >
                     
                     
                     
                <br/><br/> <br/> <br/> <br/> <br/>    
           </div>
           </div>
                    
       </form> 
    </div>
 
            
        </div>
</body>
</html>