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
		style="background-image: url(../assets/8.jpg)">
		<div>
			<div class="header position-sticky" style="top: 0; z-index: 100">
				<div class="row position-sticky"
					style="height: 5rem; top: 0; z-index: inherit 100;; background-color: rgb(14, 71, 156)">
					<div class="col-5 d-flex justify-content-center"
						style="align-items: center">
						<img src='<c:url value="../../assetss/cdac.jpg"></c:url>'
							alt="CDAC Kharghar">
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


			<div>
				<!--************************************************-->
				<div class="col-12 grid-margin" id="doc-intro">
					<div class="card">
						<div class="card-body">
							<h3 class="mb-4 mt-4">Introduction</h3>
							<p>Centre for Development of Advanced Computing (C-DAC) is
								the premier R&D organization of the Ministry of Electronics and
								Information Technology (MeitY) for carrying out R&D in IT,
								Electronics and associated areas. Different areas of C-DAC, had
								originated at different times, many of which came out as a
								result of identification of opportunities.</p>
							<ul>
								<li>The setting up of C-DAC in 1988 itself was to built
									Supercomputers in context of denial of import of Supercomputers
									by USA. Since then C-DAC has been undertaking building of</li>multiple
								generations of Supercomputer starting from PARAM with 1 GF in
								1988.
								<li>Almost at the same time, C-DAC started building Indian
									Language Computing Solutions with setting up of GIST group
									(Graphics and Intelligence based Script Technology); National
									Centre for Software Technology (NCST) set up in 1985 had also
									initiated work in Indian Language Computing around the same
									period.</li>
								<li>Electronic Research and Development Centre of India
									(ER&DCI) with various constituents starting as adjunct entities
									of various State Electronic Corporations, had been brought
									under the hold of Department of Electronics and
									Telecommunications (now MeitY) in around 1988. They were
									focusing on various aspects of applied electronics, technology
									and applications.</li>
								<li>With the passage of time as a result of creative
									ecosystem that got set up in C-DAC, more areas such as Health
									Informatics, etc., got created; while right from the beginning
									the focus of NCST was on Software Technologies; similarly C-DAC
									started its education & training activities in 1994 as a
									spin-off with the passage of time, it grew to a large efforts
									to meet the growing needs of Indian Industry for finishing
									schools.</li>
							</ul>
						</div>
					</div>
				</div>
				<!--***********************************************************-->
				<div class="col-12 grid-margin" id="doc-intro">
					<div class="card">
						<div class="card-body">
							<h3 class="mb-4 mt-4">organizational Chart</h3>
							<img src="../assets/chart.png" alt="CDAC organizational Chart"
								width="100%">
						</div>
					</div>
				</div>
				<!--***********************************************************-->
				<div class="col-12 grid-margin" id="doc-intro">
					<div class="card">
						<div class="card-body">
							<h3 class="mb-4 mt-4">OUR VISION</h3>
							<p>To emerge as the premier R&D institution for the design,
								development and deployment of world class electronic and IT
								solutions for economic and human advancement.</p>
							<h3 class="mb-4 mt-4">OUR MISSION</h3>
							<P>C-DAC's Mission statement has evolved after deep thought
								and in consultation with the members of C-DAC. The Mission
								Statement as defined below, reflects the fabric and character of
								C-DAC and integrates in the fulfillment of C-DAC's Vision.</P>
							<ul>
								<li>Expand the frontiers of Electronics and Information
									Technology.</li>
								<li>Evolve technology solutions - architectures, systems
									and standards for nationally important problems.</li>
								<li>Achieve rapid and effective spread of knowledge by
									overcoming language barriers through application of
									technologies.</li>
								<li>Share experience and know-how to help build advanced
									competence in the areas of Electronics and Information
									Technology.</li>
								<li>Bring benefits of Electronics and Information
									Technology to society.</li>
								<li>Utilize the Intellectual Property generated by
									converting it to business opportunity.</li>
							</ul>
							<h3>OUR CORE VALUES</h3>
							<p>The essence of C-DAC's philosophy and the bed rock of our
								Corporate Culture...</p>
							<ul>
								<li>Innovation and pursuit of excellence in 'Applications',
									'Research' and 'Technology' (ART).</li>
								<li>Integrity, transparency and openness in all our
									actions.</li>
								<li>Working with and through the 'Teams' is our way of
									life.</li>
								<li>Distributed Leadership across the organization at
									various levels.</li>
								<li>Strive to continuously improve our processes and
									quality.</li>
								<li>Address the needs of the society through user centric
									initiatives.</li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
</body>
</html>
