<%@page import="java.util.List"%>
<%@page import="com.spring.dto.Feedback"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser1 = (Login) session.getAttribute("login");
	if (loggedUser1 != null && loggedUser1.getFirstname() != null) {
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script>
	function show() {
		var inputs = document.getElementsByTagName('input');
		for (i = 0; i < inputs.length; i++) {
			inputs[i].disabled = false;
		}
		document.getElementById('submit').hidden = false;
		document.getElementById('reset').hidden = false;
		document.getElementById('select').hidden = false;
		document.getElementById('edit').hidden = true;
		document.getElementById('input1').hidden = true;
	}
</script>
</head>

<body>

	<div class="container-fluid" style="background-image: url(index1.jpg)">
		<div>
			<!--*******************header*******************-->
			<div class="header position-sticky" style="top: 0; z-index: 100">
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
							style="justify-content: center; align-items: center; color: rgb(44, 44, 85); padding-left: 7px; font-family: times new roman">
							<h3>
								<b>Welcome </b><font color="red"><%=loggedUser1.getFirstname()%></font>
							</h3>
						</li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="ma_rks"><b>Marks</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="re_exam"><b>Re-Exam</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="le_ave"><b>Leave</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="fe_edback"><b>Feedback</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="pr_ofile"><b>Profile</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="lo_gout"><b>Logout</b></a></li>
						<li class="d-flex justify-content-end"><b
							style="color: blue; margin-top: 9px; margin-right: -550px"><%=loggedUser1.getId()%></b></li>
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
					<spr:form action="update" class="form-sample"
						modelAttribute="login">
						<spr:hidden path="id" value="<%=loggedUser1.getId()%>" />
						<spr:hidden path="password"
							value="<%=loggedUser1.getPassword()%>" />
						<spr:hidden path="username" value="<%=loggedUser1.getUsername()%>" />
						<spr:hidden path="userrole"
							value="<%=loggedUser1.getUserrole()%>" />
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">First Name</label>
									<div class="col-sm-9">
										<spr:input path="firstname" type="text" class="form-control"
											value="<%=loggedUser1.getFirstname()%>" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Last Name</label>
									<div class="col-sm-9">
										<spr:input path="lastname" type="text" id="in"
											class="form-control" value="<%=loggedUser1.getLastname()%>"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Gender</label>
									<div class="col-sm-9">
										<label id="input1" class="form-control"
											style="background: #ced4da"><%=loggedUser1.getGender()%></label>
										<spr:select path="gender" id="select" class="form-control"
											hidden="true" value="<%=loggedUser1.getGender()%>">
											<spr:option value="Male"></spr:option>
											<spr:option value="Female"></spr:option>
										</spr:select>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Date of Birth</label>
									<div class="col-sm-9">
										<spr:input path="dob" type="date" class="form-control"
											placeholder="dd/mm/yyyy" value="<%=loggedUser1.getDob()%>"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Email id</label>
									<div class="col-sm-9">
										<spr:input path="email" type="text" class="form-control"
											value="<%=loggedUser1.getEmail()%>" disabled="true" />
									</div>
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Gender</label>
									<div class="col-sm-4">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios1" value="" checked=""> Male <i
												class="input-helper"></i></label>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios2" value="option2"> Female
												<i class="input-helper"></i></label>
										</div>
									</div>
								</div>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Phone number</label>
									<div class="col-sm-9">
										<spr:input path="phone" type="text" class="form-control"
											disabled="true" value="<%=loggedUser1.getPhone()%>" />
									</div>
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">State</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Address</label>
									<div class="col-sm-9">
										<spr:input path="address" type="text" class="form-control"
											disabled="true" value="<%=loggedUser1.getAddress()%>" />
									</div>
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Postcode</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">City</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div> -->
						</div>
						<!-- <div class="col-md-6">
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
						</div>-->
						<div class="d-flex justify-content-end">
							<span class="btn btn-success btn-rounded btn-fw" onclick="show()"
								id="edit">Edit</span>
						</div>
						<div>
							<input id="submit" type="submit"
								class="btn btn-success btn-rounded btn-fw" hidden="true"
								value="Submit"> <input id="reset" type="reset"
								class="btn btn-primary btn-rounded btn-fw"
								style="margin-left: 10px" hidden="true" value="Reset">
						</div>
					</spr:form>
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
								maintained by: Project Team 04, Feb 2019
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



<%-- <%@page import="java.util.List"%>
<%@page import="com.spring.dto.Feedback"%>
<%@page import="com.spring.dto.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ include file="../no-cache-page.jsp"%>
<%
	Login loggedUser1 = (Login) session.getAttribute("login");
	if (loggedUser1!= null) {
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script>
	function show() {
		var inputs = document.getElementsByTagName('input');
		for (i = 0; i < inputs.length; i++) {
			inputs[i].disabled = false;
		}
		document.getElementById('submit').hidden = false;
		document.getElementById('reset').hidden = false;
		document.getElementById('select').disabled = false;
		document.getElementById('edit').hidden = true;
	}
</script>
</head>

<body>

	<div class="container-fluid" style="background-image: url(index1.jpg)">
		<div>
			<!--*******************header*******************-->
			<div class="header position-sticky" style="top: 0; z-index: 100">
				<div class="row"
					style="height: 5rem; background-color: rgb(14, 71, 156)">
					<div class="col-5 d-flex justify-content-center"
						style="align-items: center">
						<img src="https://www.cdac.in/index.aspx?id=img_cdac-logo" alt="CDAC Kharghar">
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
							style="justify-content: center; align-items: center; color: rgb(44, 44, 85); padding-left: 7px; font-family: times new roman">
							<h3>
								<b>Welcome </b><%=loggedUser1.getFirstname()%>
							</h3>
						</li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="ma_rks"><b>Marks</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="re_exam"><b>Re-Exam</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="le_ave"><b>Leave</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="fe_edback"><b>Feedback</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="pr_ofile"><b>Profile</b></a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="lo_gout"><b>Logout</b></a></li>
						<li class="nav-item" class="d-flex justify-content-end"><b><%=loggedUser1.getId()%></b></li>
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
										<input type="text" class="form-control"
											value="<%=loggedUser1.getFirstname()%>" disabled="true">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Last Name</label>
									<div class="col-sm-9">
										<input type="text" id="input1" class="form-control"
											value="<%=loggedUser1.getLastname()%>" disabled="true">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Gender</label>
									<div class="col-sm-9">
										<select id="select" class="form-control" disabled="true">
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
										<input type="date" class="form-control"
											placeholder="dd/mm/yyyy" value="<%=loggedUser1.getDob()%>"
											disabled="true">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Email id</label>
									<div class="col-sm-9">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
							 <!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Gender</label>
									<div class="col-sm-4">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios1" value="" checked=""> Male <i
												class="input-helper"></i></label>
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-check">
											<label class="form-check-label"> <input type="radio"
												class="form-check-input" name="membershipRadios"
												id="membershipRadios2" value="option2"> Female
												<i class="input-helper"></i></label>
										</div>
									</div>
								</div>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Phone number</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">State</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div> -->
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Address</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">Postcode</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group row">
									<label class="col-sm-3 col-form-label">City</label>
									<div class="col-sm-9">
										<input type="text" class="form-control" disabled="true">
									</div>
								</div> -->
							</div>
							<!-- <div class="col-md-6">
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
						</div>-->
						<div class="d-flex justify-content-end">
							<span class="btn btn-success btn-rounded btn-fw" onclick="show()" id="edit">Edit</span>
						</div>
						<div>
							<input id="submit" type="submit"
								class="btn btn-success btn-rounded btn-fw" hidden="true"
								value="Submit"> <input id="reset" type="reset"
								class="btn btn-primary btn-rounded btn-fw"
								style="margin-left: 10px" hidden="true" value="Reset">
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
	<%
		} else {
			response.sendRedirect("lo_gout");
		}
	%>
</body>

</html> --%>




<!-- student welcomes
<a href="feed_form">feedback</a>
<a href="lea_ve">leave</a>
<a href="log_out">logout</a>
<a href="ma_rks">show marks</a>
<input type="hidden" value="1" name="uid"> -->