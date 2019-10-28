<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String firstname=request.getParameter("firstname");
String surname=request.getParameter("surname");
String email=request.getParameter("email");

String position=request.getParameter("position");
String address1=request.getParameter("address1");
String address2=request.getParameter("address2");

String city=request.getParameter("city");
String county=request.getParameter("county");
String phone=request.getParameter("phone");
String eircode=request.getParameter("eircode");


String userid=request.getParameter("userid");
String password=request.getParameter("password");
%>
<%Connection connection = null; 
%>

<%
try
{
	String connectionURL = "jdbc:mysql://aa16jpqllno762g.cgfmf3c6nnwv.eu-west-1.rds.amazonaws.com:3306/FleetManagement"; 
	
	
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	connection = DriverManager.getConnection(connectionURL,"root","rootpass");
	out.println("Connection Opened to database.");
   	Statement st=connection.createStatement();
   	
   	String InsertQuery="insert into employee(emp_id,emp_position,emp_first,emp_surname,emp_add1,emp_add2,emp_city,emp_county,emp_phone,emp_eircode,emp_user,emp_pass,emp_email) values(null,'"+position+"','"+firstname+"','"+surname+"','"+address1+"','"+address2+"','"+city+"','"+county+"','"+phone+"','"+eircode+"','"+userid+"','"+password+"','"+email+"');";
   	
   	
   	int updateQuery=st.executeUpdate(InsertQuery);
   	if (updateQuery != 0) {%>
   	<br>
   	<TABLE style="background-color: #E3E4FA;" width="30%" border="1">
   	<tr><th>Data is inserted successfully in database.</th></tr>
   	</table>
   	out.println("Thank you for register ! Please <a href='index.jsp'>Login</a> to continue.");
   	<%
}


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>