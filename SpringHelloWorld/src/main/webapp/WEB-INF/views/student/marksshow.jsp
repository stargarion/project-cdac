<%@page import="com.spring.dto.Marks"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Marks ul = (Marks) session.getAttribute("marks");
	if (ul != null) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr style="text-align: center;">
			<td><%=ul.getUid()%></td>
			<td><%=ul.getCpplab()%></td>
			<td><%=ul.getCppmcq()%></td>
			<td><%=ul.getDblab()%></td>
			<td><%=ul.getDbmcq()%></td>
			<td><%=ul.getDslab()%></td>
			<td><%=ul.getDsmcq()%></td>
			<td><%=ul.getJavalab()%></td>
			<td><%=ul.getJavamcq()%></td>
			<td><%=ul.getOslab()%></td>
			<td><%=ul.getOsmcq()%></td>
		</tr>
	</table>

	<%
		}
	%>

</body>
</html>