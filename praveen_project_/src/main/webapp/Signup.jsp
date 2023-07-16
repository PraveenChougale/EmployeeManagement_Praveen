<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To Our Page</title>
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
</head>
<body>
<center><h1 style="color:red">SIGNUP PAGE </h1></center>

<fieldset id="border">

<form action="sign_up" id="form">
<table cellspacing="15px" >
<tr>   
<td>  <label for="first">Employee ID</label></td>
<td>   <input type="number" name="id" id="first" placeholder="Enter Your ID"></td>
</tr>
<tr>   
<td>  <label for="second">Name </label></td>
<td>   <input type="text" name="name" id="second" placeholder="Enter Your Name"></td>
</tr>
<tr>   
<td>  <label for="third">Address</label> </td>
<td>  <textarea   name="address" rows="2" cols="25" id="third" placeholder="Enter Your Adress"></textarea></td>
</tr>
</tr>
<tr>   
<td>  <label for="hi" > Gender</label></td>
<td>  male <input type="radio" id="hi" name="male" value="male">
      female<input type="radio" id="hi" name="male" value="female">
    other<input type="radio" id="hi" name="male" value="others"></td>
</tr>



<tr>   
<td>  <label for="fifth">Salary</label></td>
<td>  <input type="text" name="salary" placeholder="Enter Your Salary" id="fifth"></td>
</tr>
<tr>   
<td>  <label for="sixth">Birth Date</label> </td>
<td>
<input type="date" name="dob" placeholder="Enter Your Salary" id="sixth"></td>
</tr>
</tr>
<tr>
<td>
<button >sign_up </button></td>
<td><button type="reset">cancel</button></td>
</tr>
</table>
<a href="list">Emplyoee List</a>
</form>
</fieldset>
</body>
</html>