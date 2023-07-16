<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<style>
#form{
  
  font-size: 20px;

  
}
#border{
border-width: 10px;
border-color: yellow red ;
border-style: double;
margin-left: 380px;
margin-right: 380px;
	}
	#legend{
	color:red;
	font-size:30px;
	text-align: center;
	font-weight:bolder;
	text-shadow: 2px 2px 4px black;
	}
</style>
<body>
<center><h1 style="color:red">LOGIN PAGE </h1></center>

<fieldset id="border">

<form action="login" id="form">
<table cellspacing="15px" >
<tr>   
<td>  <label for="first">Employee ID</label></td>
<td>   <input type="text" name="id" id="first" placeholder="Enter Your ID"></td>
</tr>
<tr>   
<td>  <label for="second">Name </label></td>
<td>   <input type="text" name="name" id="second" placeholder="Enter Your Name"></td>
</tr>

</tr>
<tr>
<td>
<button >login </button></td>
<td><button type="reset">cancel</button></td>
</tr>
</table>
</form>
</fieldset>
</body>
</html>