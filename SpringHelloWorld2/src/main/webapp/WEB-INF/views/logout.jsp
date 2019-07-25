
<%
	session.removeAttribute("login");
	session.invalidate();
	//out.println(session.getAttribute("login"));
	response.sendRedirect("login");
%>