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
<h1>Connection tester</h1>
<% 
try {
/*here mysqltest is the database name. you have to give the database name you have created and 3306 is the default sql port */
String connectionURL = "jdbc:mysql://localhost:3306/FleetManagement"; 
 
Connection connection = null; 
 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
 
/* "root" and "root" are the mysql username and password . if you have a different user name and password you have to change that in code */
 
connection = DriverManager.getConnection(connectionURL,"root","rootpass");
 
if(!connection.isClosed())

out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){

out.println("Unable to connect to database.");
}
%>
</body>
</html>