
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <% Connection c= DriverManager.getConnection("jdbc:derby://localhost:1527/manu"); 
 Statement st=c.createStatement();%>
 <table border=2 style="border-collapse: collapse">
 <tr> <th> title </th><th> value</th></tr>

 <% ResultSet rs=st.executeQuery("select * from employee");%>
  <tr><td> <% out.println("no of employee");%> </td>
<%
  while(rs.next()){%>
     <td> <%out.println(rs.getInt(1));%> </td></tr>
<%}
 ResultSet rt=st.executeQuery("select avg(salary) from employee");%>
     <tr><td> <% out.println("avg salary of employee");%> </td>
  <%while(rt.next()){%>
  <td> <% out.println(rt.getInt(1));%> </td></tr>
 <%}
 ResultSet rst=st.executeQuery("select max(salary) from employee");%>

 <tr><td> <% out.println("max salary of employee");%> </td>

 <%while(rst.next()){%>
     <td> <% out.println(rst.getInt(1));%> </td></tr>
 <% }
 %>       
    </body>
</html>
