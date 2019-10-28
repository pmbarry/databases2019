<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html>


<html>
<head>
<title>Fleet List</title>
</head>
<body>
<table style= "border: solid 2px red;">
<tr>
<td>Vehicle ID</td>
<td>Vehicle Make</td>
<td>Vehicle Model</td>
<td>Vehicle Registration</td>
<td>Vehicle Odometer</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://aa16jpqllno762g.cgfmf3c6nnwv.eu-west-1.rds.amazonaws.com:3306/FleetManagement";
String username="root";
String password="rootpass";
String query="select * from fleet";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr>
<td><%=rs.getInt("vehicle_ID") %></td>
<td><%=rs.getString("vehicle_make") %></td>
<td><%=rs.getString("vehicle_model") %></td>
<td><%=rs.getString("vehicle_reg") %></td>
<td><%=rs.getInt("vehicle_odo") %></td>
</tr>



 <%

}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</body>
</html>
