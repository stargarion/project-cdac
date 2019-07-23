<%@page import="java.util.List"%>
<%@page import="com.spring.dto.Feedback"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser1 = (Login) session.getAttribute("login");
	List<Feedback> loggedUser = (List<Feedback>) session.getAttribute("feedback");
	if (loggedUser != null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align="center" style="background-color: gray; color: #ffffff">
		<%
			for (Feedback u : loggedUser) {
		%>

		<tr style="text-align: center;">
			<td><%=u.getUid()%></td>
			<td><%=u.getFeedtext()%></td>
			<td><%=u.getModule()%></td>
		</tr>

		<%
			}
		%>

	</table>



	<spr:form action="feed_back" modelAttribute="Feedback">
		<%-- <spr:hidden path="uid" value="<%=loggedUser1.getId() %>"/> --%>
		<spr:select path="module">
			<spr:option value="CPP">CPP</spr:option>
			<spr:option value="DS">DS</spr:option>
			<spr:option value="OS">OS</spr:option>
		</spr:select>
		<spr:textarea path="feedtext" />
		<input type="submit" value="submit">
	</spr:form>
	<%
		} else {
			response.sendRedirect("logout");
		}
	%>
</body>
</html>