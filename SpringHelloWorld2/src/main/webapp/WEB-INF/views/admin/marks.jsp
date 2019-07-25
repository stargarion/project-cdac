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
		style="background-image: url(../assets/TigerAquaBlue.jpg)">
		<div>
			<!--************************header meanu**********************8-->
			<div class="header position-sticky" style="top: 0; z-index: 100;">
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

			<div class="marks" style="margin-top: 1px">
				<div class="row"
					style="height: 4rem; background-color: rgb(96, 57, 168); opacity: 0.7">
					<div class="col-12"
						style="display: flex; justify-content: left; align-items: center; color: lightyellow; font-family: cursive">
						<h1>Marksheet</h1>
					</div>
				</div>
				<div class="row"
					style="background-color: purple; opacity: 0.7; color: wheat; font-family: cursive">
					<div class="col-6">
						<h4>PG-DAC FEB-2019</h4>
					</div>
				</div>
			</div>
			<!--**************************body*****************************-->

			<div class="row" style="height: 100%">
				<div class="table-responsive pt-lg-4">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="1">Rank</th>
								<th colspan="1">Student Id</th>
								<th colspan="1">Student Name</th>
								<th colspan="3">OOPC++</th>
								<th colspan="3">DS</th>
								<th colspan="3">OSC</th>
								<th colspan="3">DBT</th>
								<th colspan="3">CORE JAVA</th>
								<th colspan="3">AWEP</th>
								<th colspan="3">J2EE</th>
								<th colspan="3">MEANSTACK</th>
								<th colspan="3">MS.NET</th>
								<th colspan="3">ASDM</th>
								<th colspan="1">TOTAL</th>
								<th colspan="1">PERCENTAGE</th>


							</tr>

							<tr>
								<th></th>
								<th></th>
								<th></th>
								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>LAB(40)</th>
								<th>MCQ(20)</th>
								<th>CCEE(40)</th>

								<th>(1000)</th>
								<th>(%)</th>
							</tr>
						</thead>
						<tbody>
							<tr class="table-info">

								<td>1</td>
								<td>190240320056</td>
								<td>Mahesh Bhalke</td>
								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<td>26</td>
								<td>15</td>
								<td>28</td>

								<th>600</th>
								<th>60.00</th>

							</tr>

						</tbody>
					</table>



				</div>
			</div>

			<!--***************************Footer*************************-->

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
</body>
</html>
