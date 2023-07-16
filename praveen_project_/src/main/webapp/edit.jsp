  <%@page import="dto.User"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%int id=Integer.parseInt(request.getParameter("id")); 
UserDao u=new UserDao();
 User user=u.find(id);%>
 <form Style="color:orange; border:thick; border-style: groove;" action="update">
 <input type="text" name="id" value=<%=user.getID()%>  hidden="hidden">
 <table border="5px ">
 <tr>
 <th>Employee ID</th>
 <th>Name</th>
 <th>Address</th>
 <th>Gender</th>
  <th>Salary</th>
 <th>Birth Date</th>
 
 </tr>
 
 <tr>
 <td>  <input type="text" name="id" value=<%=user.getID()%>  disabled ></td>
 <td><input type="text" name="name" value=<%=user.getName()%>> </td>
 <td><input type="text" name="address" value=<%=user.getAddress()%>>  </td>
 <td><input type="text" name="male" value=<%=user.getGender()%>>  </td>
 <td><input type="text" name="salary" value=<%=user.getSalary()%>>  </td>
 <td><input type="text" name="dob" value=<%=user.getDob()%>></td>
 </tr>
 
 </table>
 

 <button >update</button> 
 </form>
    
</body>
