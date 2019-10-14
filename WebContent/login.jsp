<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
try {

String connectionURL = "jdbc:mysql://localhost:3306/FleetManagement"; 
Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
connection = DriverManager.getConnection(connectionURL,"root","rootpass");
if(!connection.isClosed())
%>
<% 
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
String userName = request.getParameter("username");
String password = request.getParameter("password");

Statement st = connection.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from EMPLOYEE where emp_user='"
   + userName + "' and emp_pass='" + password + "'");
if (rs.next()) {
session.setAttribute("username", userName);
response.sendRedirect("success.jsp");
}
else
{
out.println("Invalid password <a href='index.jsp'>try again</a>");
   }
connection.close();

}
catch(Exception ex){
%>
<%
out.println("Unable to connect to database.");
}
%>



</body>
</html>