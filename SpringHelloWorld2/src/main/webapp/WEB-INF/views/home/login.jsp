<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid"
		style="background-image: url('../../assetss/bg-01.jpg' ')">
		<div>
			<!--***********************header*********************-->
			<div class="header position-sticky" style="top: 0; z-index: 100">
				<div class="row position-sticky"
					style="height: 5rem; top: 0; z-index: inherit 100;; background-color: rgb(14, 71, 156)">
					<div class="col-5 d-flex justify-content-center"
						style="align-items: center">
						<img src="https://www.cdac.in/index.aspx?id=img_cdac-logo" alt="CDAC Kharghar">
					</div>
					<div class="col-7 d-flex justify-content-end"
						style="align-items: center; color: white">Address: Raintree
						Marg, Near Bharati Vidyapeeth, Opp. Kharghar Railway Station,
						Sector 7, CBD Belapur, Navi Mumbai, Maharashtra 400614</div>
				</div>
				<!--********************MENUE**************************-->
				<div class="row"
					style="background-color: rgb(231, 170, 135); margin-top: 1px">
					<ul class="nav nav-pills" hrefActive="active">
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="login">Home</a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="ab_out">About</a></li>
						<li class="nav-item"><a class="nav-link" style="color: black"
							href="sy_llabus">syllabus</a></li>
					</ul>
				</div>
			</div>


			<div class="row"
				style="height: 25rem; margin-top: 1px; background-image: linear-gradient(rgb(161, 161, 226), rgb(194, 124, 124), rgb(229, 229, 160))">

				<!--*****************LEFT***********************-->
				<div class="col-3">
					<textarea name="notice" id="100" cols="30" rows="10"
						style="width: 100%; scroll-behavior: auto; margin-top: 10px; border: rebeccapurple; border-block-end-width: thick"
						disabled="disabled">Notice...</textarea>
				</div>

				<!-- **************MODDLE***************-->
				<div class="col-lg-5">
					<div class="w3-content w3-display-container">
						<img class="mySlides" src="data:image/jpeg;base64,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" style="width: 100%">
					</div>
				</div>
				<!--********************RIGHT*********************-->
				<div class="col-lg-4 mx-auto">
					<div class="auth-form-light text-left py-3 px-4 px-sm-5">
						<h4>Hello!</h4>
						<h6 class="font-weight-light">Log in to continue.</h6>

						<spr:form action="login_do" modelAttribute="Login" class="pt-3">
							<div class="form-group">
								<spr:input path="username" class="form-control form-control-lg"
									id="exampleInputEmail1" placeholder="Username" required="true" />
								<!-- <input type="email" class="form-control form-control-lg"
									id="exampleInputEmail1" placeholder="Username"> -->
							</div>
							<div class="form-group">
								<spr:password path="password"
									class="form-control form-control-lg" id="exampleInputPassword1"
									placeholder="Password" required="true" />
								<!-- <input type="password" class="form-control form-control-lg"
									id="exampleInputPassword1" placeholder="Password"> -->
							</div>

							<div class="form-group">
								<spr:select path="userrole" class="form-control">
									<!-- <select class="form-control"> -->
									<spr:option value="student"></spr:option>
									<spr:option value="admin"></spr:option>
									<!-- <option>Admin</option>
									<option>Student</option>
									<option>Faculty</option> -->
								</spr:select>
								<!-- </select> -->
							</div>

							<div class="mt-3">
								<input type="submit" value="Login"
									class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" />
								<!-- <a
									class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
									onclick="submit()" href="studentprofile">SIGN IN</a> -->
							</div>
							<div
								class="my-2 d-flex justify-content-between align-items-center">
								<!-- 								<div class="form-check">
									<label class="form-check-label text-muted"> <input
										type="checkbox" class="form-check-input"> Keep me
										signed in <i class="input-helper"></i></label>
								</div> -->
								<a href="for_got" class="auth-link text-black">Forgot password?</a>
							</div>
							<!-- 							<div class="mb-2"></div>
							<div class="text-center mt-4 font-weight-light">
								Don't have an account? <a href="register.html"
									class="text-primary">Create</a>
							</div> -->
						</spr:form>
					</div>
				</div>
			</div>
			<!--************************footer************************-->
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
								maintained by:  Project Team 04, Feb 2019
							</p>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>

	<%-- <spr:form action="login_do" modelAttribute="Login" >
		User Name : <spr:input path="username" /><br>
		Password : <spr:password path="password" /><br>
		Role: <spr:select path="userrole">
		<spr:option value="admin"></spr:option>
		<spr:option value="student"></spr:option>
		</spr:select>
		<input type="submit" value="Login" /><br>
	</spr:form> --%>
</body>
</html>