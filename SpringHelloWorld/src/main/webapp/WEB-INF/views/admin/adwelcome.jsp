<%@page import="org.hibernate.Session"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%
	Login login = (Login) session.getAttribute("login");
%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser = (Login) session.getAttribute("login");
	if (loggedUser != null && loggedUser.getUsername() != null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	welcome
	<%=login.getName()%>
	<a href="lo_gout">logout</a>
	<spr:form action="stu_upl" modelAttribute="Login">
		<input type="file">
		<input type="submit" value="Submit">
	</spr:form>
	<a href="reg_form">Register student</a>
	<%
		} else {
			response.sendRedirect("logout.jsp");
		}
	%>
</body>
</html>