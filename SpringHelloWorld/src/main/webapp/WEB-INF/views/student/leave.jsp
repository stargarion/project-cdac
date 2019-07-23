<%@page import="com.spring.dto.Leaver"%>
<%@page import="java.util.List"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser1 = (Login) session.getAttribute("login");
	List<Leaver> loggedUserl = (List<Leaver>) session.getAttribute("leave");
	if (loggedUserl != null) {
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
			for (Leaver ul : loggedUserl) {
		%>

		<tr style="text-align: center;">
			<td><%=ul.getUid()%></td>
			<td><%=ul.getStartdate()%></td>
			<td><%=ul.getEnddate()%></td>
			<td><%=ul.getReason()%></td>
			<td><%=ul.getStatus()%></td>
		</tr>

		<%
			}
		%>

	</table>



	<spr:form action="leave_give" modelAttribute="Leaver">
		<%-- <spr:hidden path="uid" value="<%=loggedUser1.getId() %>"/> --%>
		<%-- <spr:input type="number" path="slno"/> --%>
		<spr:input path="uid"/>
		<spr:input type="date" path="startdate"/>
		<spr:input type="date" path="enddate"/>
		<spr:input path="reason"/>
		<spr:hidden path="status" value="Pending"/>
		<input type="submit" value="submit">
	</spr:form>
	<%
		} else {
			response.sendRedirect("logout");
		}
	%>
</body>
</html>