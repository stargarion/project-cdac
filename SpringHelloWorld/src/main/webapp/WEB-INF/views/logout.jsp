
<%
	session.removeAttribute("login");
	session.invalidate();
	response.sendRedirect("login");
%>