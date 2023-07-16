<%@page import="dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%List<User> list=(List) request.getAttribute("list");
 %>
 <form action="list">
 <table border="5px ">
 <tr>
 <th>Employee ID</th>
 <th>Name</th>
 <th>Address</th>
 <th>Gender</th>
  <th>Salary</th>
 <th>Birth Date</th>
  <th>Delete</th>
 <th>Edit</th>
 </tr>
 <%for(User user:list)
 {%>
 <tr>
 <td><%=user.getID() %></td>
 <td><%=user.getName() %></td>
 <td><%=user.getAddress() %></td>
 <td><%=user.getGender() %></td>
 <td><%=user.getSalary()%></td>
 <td><%=user.getDob() %></td>
 <td><a href="delete?id=<%=user.getID()%>"><button type="submit">delete</button></a></td>
 <td> <a href="edit.jsp?id=<%=user.getID()%>"><button type="submit">edit</button></a></td>
 

 
 </tr>
 <%} %>
 </table>
 </form>
</body>
</html>