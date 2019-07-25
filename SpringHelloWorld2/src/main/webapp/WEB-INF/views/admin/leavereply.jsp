<%@page import="java.util.List"%>
<%@page import="com.spring.dto.Feedback"%>
<%@page import="com.spring.dto.Leaver"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser1 = (Login) session.getAttribute("login");
	List<Leaver> loggedUserl = (List<Leaver>) session.getAttribute("leave");
	if (loggedUser1 != null && loggedUser1.getFirstname() != null) {
		int i = 1;
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.my-custom-scrollbar {
	position: relative;
	height: 200px;
	overflow: auto;
}

.table-wrapper-scroll-y {
	display: block;
}
</style>
</head>
<body>

	<div class="container-fluid"
		style="background-image: url(../assets/5.jpg)">
		<div>
			<!--************************header menu**********************8-->
			<div class="header position-sticky" style="top: 0; z-index: 100;">
				<div class="row"
					style="height: 5rem; background-color: rgb(14, 71, 156)">
					<div class="col-5 d-flex justify-content-center"
						style="align-items: center">
						<img src="https://www.cdac.in/index.aspx?id=img_cdac-logo"
							alt="CDAC Kharghar">
					</div>
					<div class="col-7 d-flex justify-content-end"
						style="align-items: center; color: white">Address: Raintree
						Marg, Near Bharati Vidyapeeth, Opp. Kharghar Railway Station,
						Sector 7, CBD Belapur, Navi Mumbai, Maharashtra 400614</div>
				</div>
				<div class="row"
					style="background-color: rgb(231, 170, 135); margin-top: 1px; height: 3rem">
					<ul class="nav nav-pills" routerLinkActive="active">
						<li class="nav-item d-flex"
							style="justify-content: center; align-items: center; color: rgb(44, 44, 85); padding-left: 7px; font-family: times new roman"><h3>
								<b>Admin profile</b>
							</h3></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="up_loads"><b>Uploads</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="le_avereply"><b>Leave Reply</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="reg_form"><b>Student Registration</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="no_tice"><b>Notice Board</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="re_examapproval"><b>Reexam approval</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="ma_rksa"><b>Show Marks</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="sh_feed"><b>Show Feedback</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="lo_gout"><b>Logout</b></a></li>
					</ul>
				</div>
			</div>

			<div class="marks" style="margin-top: 1px">
				<div class="row"
					style="height: 4rem; background-color: rgb(96, 57, 168); opacity: 0.7">
					<div class="col-12"
						style="display: flex; justify-content: left; align-items: center; color: lightyellow; font-family: cursive">
						<h1>Leave Request</h1>
					</div>
				</div>
			</div>
			<div class="table-wrapper-scroll-y my-custom-scrollbar">
				<table class="table table-bordered table-striped mb-0">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">ID</th>
							<th scope="col">From date</th>
							<th scope="col">To Date</th>
							<th scope="col">Reason</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Leaver ul : loggedUserl) {
						%>

						<tr style="text-align: center;">
							<td><%=i++%></td>
							<td><%=ul.getUid()%></td>
							<td><%=ul.getStartdate()%></td>
							<td><%=ul.getEnddate()%></td>
							<td><%=ul.getReason()%></td>
							<td><%=ul.getStatus()%></td>
						</tr>

						<%
							}
						%>
					</tbody>
				</table>

			</div>
			<div class="row"
				style="background-color: rgb(109, 112, 114); color: white"
				style="display: flex;justify-content: center;align-items: center">
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<div class="col-md-12 col-xs-12 custom-paddingproducts">
							<p class="visible-xs">&nbsp;</p>

							<p class="presskitlinks">
								<a href="index.aspx?id=website_policies" class="copyrights">Website
									Policies</a><span class="copyrights">|</span> <a
									href="index.aspx?id=legal_notice#2" class="copyrights">Copyright
									Policy</a> <span class="copyrights">|</span> <a
									href="index.aspx?id=terms_conditions" class="copyrights">Terms
									&amp; Conditions </a> <span class="copyrights">|</span> <a
									href="index.aspx?id=help" class="copyrights">Help</a> <span
									class="copyrights">|</span> <span class="copyrights">©
									2019</span> <span class="copyrights"> C-DAC. All rights
									reserved</span> <span class="copyrights">|</span> <span
									id="lblLastUpdated" class="copyrights">Last Updated:
									Thursday, June 06, 2019</span> <br> Website owned &amp;
								maintained by: Centre for Development of Advanced Computing
								(C-DAC)
							</p>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>
	<%
		} else {
			response.sendRedirect("lo_gout");
		}
	%>
</body>
</html>