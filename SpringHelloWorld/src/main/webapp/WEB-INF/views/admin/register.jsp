<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>register Page</h1>
<spr:form action="regis_ter" modelAttribute="Login" >
		Id: <spr:input path="id"/><br>
		Name: <spr:input path="name"/><br>
		User Name : <spr:input path="username" /><br>
		Password : <spr:password path="password" /><br>
		D.O.B:<spr:input type="date" path="dob"/><br>
		Address:<spr:input path="address"/><br>
		<spr:input type="hidden" value="student" path="userrole"/><br>
		<input type="submit" value="Register" /><br>
	</spr:form>
</body>
</html>