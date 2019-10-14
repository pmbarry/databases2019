<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<script type="text/javascript">
   
</script>


<body>
<form method="post" action="login.jsp">

<table 	Style="border:2px; 
		width=30%; 
		padding=3;">
<thead>
<tr>
<th colspan="2">Login Example</th>
</tr>
</thead>
<tbody>
<tr><td>User Name</td>
<td>
<input type="text" name="username" value="" />
</td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" value="" /></td>
</tr>
<tr>
<td><input type="submit" value="Login" /></td>
<td><input type="reset" value="Reset" /></td>
</tr>
<tr>
<td colspan="2">New User <a href="registerpage.html">Register Here</a></td>
</tr>
</tbody>
</table>

</form>
   
</body>
</html>