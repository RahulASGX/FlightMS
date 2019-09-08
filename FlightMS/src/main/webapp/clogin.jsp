<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url('itc1.jpg');
	height: 100vh;
	background-size: cover;
	background-position: center
}
</style>
</head>
<body>
<form action="Customer_Login" method="post">
<table style="background-color: rgba(255,255,255,.5); float: laft; position: absolute; top: 48%; left: 30%; margin-left: 20px;">
<tr><td> USERID:<input type="text" name="userid"><br/></td></tr>
<tr><td> PASSWORD:<input type="password" name="password"><br/></td></tr>
<!-- <tr><td> CONFIRM PASSWORD:<input type="text" name="cpassword"><br/></td></tr> -->
<tr><td><input type="submit" value="LOGIN"></td></tr>
</form>
</body>
</html>