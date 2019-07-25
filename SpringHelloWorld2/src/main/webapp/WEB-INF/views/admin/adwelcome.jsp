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
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid"
		style="background-image: url(../assets/bg-01.jpg)">
		<div>
			<!--*******************header*******************-->
			<div class="header position-sticky" style="top: 0; z-index: 100">
				<div class="row"
					style="height: 5rem; background-color: rgb(14, 71, 156)">
					<div class="col-5 d-flex justify-content-center"
						style="align-items: center">
						<img src="../assets/index.jpg" alt="CDAC Kharghar">
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
			<!--********************student profile**************************-->
			<div class="row"
				style="font-weight: bold; font-family: times new roman; height: 85%; background-image: repeating-linear-gradient(rgb(241, 216, 216), rgb(241, 241, 192), rgb(155, 211, 233))">
				<div class="card-body">
					<h2 class="card-title" style="color: rgb(116, 114, 114)">
						<b>Personal Information</b>
					</h2>
					<form class="form-sample">

						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">First Name</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Last Name</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Gender</label>
									<div class="col-sm-9">
										<select class="form-control">
											<option>Male</option>
											<option>Female</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Date of Birth</label>
									<div class="col-sm-9">
										<input class="form-control" placeholder="dd/mm/yyyy">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Category</label>
									<div class="col-sm-9">
										<select class="form-control">
											<option>Category1</option>
											<option>Category2</option>
											<option>Category3</option>
											<option>Category4</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Course</label>
									<div class="col-sm-4">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios1" value="" checked=""> PG-DAC <i
												class="input-helper"></i></label>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios2" value="option2"> Other <i
												class="input-helper"></i></label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<p class="card-description">Address</p>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Address 1</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">State</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Address 2</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Postcode</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">City</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Country</label>
									<div class="col-sm-9">
										<select class="form-control">
											<option>India</option>
											<option>America</option>
											<option>Italy</option>
											<option>Russia</option>
											<option>Britain</option>
										</select>
									</div>
								</div>
							</div>
						</div>

					</form>
				</div>
			</div>
			<!--************************Footer*********************************8-->

			<div class="row"
				style="background-color: rgb(109, 112, 114); color: white"
				style="display: flex;justify-content: center;align-items: center">
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<div class="col-md-12 col-xs-12 custom-paddingproducts">
							<p class="visible-xs">&nbsp;</p>
							<div>------------------------------------------------------------------------------------------
								--------------------------------------------------------</div>
							<p class="presskitlinks">
								<a href="index.aspx?id=website_policies
                    "
									class="copyrights">Website Policies</a><span class="copyrights">|</span>
								<a href="index.aspx?id=legal_notice#2" class="copyrights">Copyright
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

	<%-- welcome
	<%=login.getFirstname()%>
	<a href="lo_gout">logout</a>
	<spr:form action="stu_upl" modelAttribute="login">
		<spr:input type="file" path="address"/>
		<input type="submit" value="Submit">
	</spr:form>
	<a href="reg_form">Register student</a> --%>
	<%
		} else {
			response.sendRedirect("logout.jsp");
		}
	%>
</body>
</html>