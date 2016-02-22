<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.example.hibernate.User"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>table</title>
</head>
<body>
     <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>userId</th>
                <th>username</th>
                <th>createdBy</th>
            </tr>
               <%
                  List object = (List)request.getAttribute("data");
                  Iterator itr = object.iterator();
                  while(itr.hasNext()){
                  User user = (User)itr.next();
                %>
                <tr>
  		<td><%=user.getUserId()%></td>
  		<td><%=user.getUsername()%></td>
  		<td><%=user.getCreatedBy()%></td>
  		</tr>

  	<%
  	}
  	%>
        </table>
    </div>
</body>
</html>
