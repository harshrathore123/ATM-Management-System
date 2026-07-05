<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Verify PIN | HDFC Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
	rel="stylesheet">
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<style>

/*=========================
      Global
=========================*/
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: linear-gradient(135deg, #071a36, #0b2d63);
	min-height: 100vh;
	color: white;
	overflow-x: hidden;
	position: relative;
}

/*=========================
        Navbar
=========================*/
.custom-navbar {
	background: rgba(7, 26, 54, .70);
	backdrop-filter: blur(20px);
	padding: 15px 0;
	transition: .4s;
	height: 85px;
	border-bottom: 1px solid rgba(0, 200, 255, .12);
	box-shadow: 0 5px 25px rgba(0, 0, 0, .25);
}

.logo {
	font-size: 38px;
	font-weight: 700;
	color: white !important;
}

.logo i {
	color: #35d8ff;
	margin-right: 8px;
}

.navbar-nav .nav-link {
	color: #d8ecff !important;
	font-size: 18px;
	margin-left: 28px;
	transition: .3s;
}

.navbar-nav .nav-link:hover {
	color: #35d8ff !important;
}

.btn-logout {
	margin-left: 30px;
	padding: 10px 28px;
	border-radius: 40px;
	border: 1px solid #35d8ff;
	color: white;
	transition: .4s;
}

.btn-logout:hover {
	background: #00bfff;
	color: white;
	box-shadow: 0 0 18px #00bfff;
}

/*=========================
 Background Glow
=========================*/
.circle {
	position: fixed;
	border-radius: 50%;
	filter: blur(130px);
	z-index: -5;
}

.circle1 {
	width: 420px;
	height: 420px;
	background: #00bfff;
	left: -180px;
	top: 180px;
	opacity: .18;
}

.circle2 {
	width: 450px;
	height: 450px;
	background: #005eff;
	right: -180px;
	bottom: -120px;
	opacity: .18;
}

/*=========================
   Floating Particles
=========================*/
.particle {
	position: fixed;
	width: 6px;
	height: 6px;
	background: #35d8ff;
	border-radius: 50%;
	box-shadow: 0 0 10px #35d8ff, 0 0 20px #35d8ff;
	z-index: -3;
	animation: floatParticle 6s ease-in-out infinite;
}

.p1 {
	top: 20%;
	left: 8%;
	animation-delay: 0s;
}

.p2 {
	top: 65%;
	left: 12%;
	animation-delay: 1.2s;
}

.p3 {
	top: 35%;
	right: 10%;
	animation-delay: 2.4s;
}

.p4 {
	top: 80%;
	right: 15%;
	animation-delay: 3.6s;
}

@
keyframes floatParticle { 0%,100%{
	transform: translateY(0) translateX(0);
	opacity: .7;
}

50








%
{
transform








:








translateY






(








-25px








)








translateX






(








10px








)






;
opacity








:








1






;
}
}

/*=========================
      Main Section
=========================*/
.verify-section {
	padding: 110px 0 50px;
	text-align: center;
}

.page-icon {
	width: 90px;
	height: 90px;
	margin: auto;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 2px solid #35d8ff;
	background: rgba(255, 255, 255, .05);
	box-shadow: 0 0 30px rgba(53, 216, 255, .35);
	margin-bottom: 25px;
}

.page-icon i {
	font-size: 40px;
	color: #35d8ff;
}

.verify-title {
	font-size: 48px;
	font-weight: 700;
	margin-bottom: 10px;
}

.verify-subtitle {
	font-size: 18px;
	color: #cfe6ff;
}

/*=========================
      Verify Card
=========================*/
.verify-card {
	max-width: 550px;
	margin: 20px auto;
	background: rgba(255, 255, 255, .08);
	backdrop-filter: blur(18px);
	border: 1px solid rgba(255, 255, 255, .15);
	border-radius: 25px;
	padding: 40px 35px;
	box-shadow: 0 20px 45px rgba(0, 0, 0, .35);
}

.card-icon {
	width: 75px;
	height: 75px;
	margin: auto;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: #0b315b;
	border: 2px solid #35d8ff;
	box-shadow: 0 0 25px #35d8ff;
	margin-bottom: 22px;
}

.card-icon i {
	font-size: 32px;
	color: #35d8ff;
}

.card-title {
	text-align: center;
	font-size: 28px;
	font-weight: 700;
	margin-bottom: 8px;
}

.card-text {
	text-align: center;
	color: #cfe6ff;
	margin-bottom: 30px;
}

.form-label {
	color: white;
	font-weight: 500;
	margin-bottom: 8px;
}

.form-label i {
	color: #35d8ff;
	margin-right: 8px;
}

.form-control {
	height: 58px;
	border-radius: 40px;
	background: rgba(255, 255, 255, .08);
	border: 2px solid rgba(53, 216, 255, .25);
	color: white;
	padding-left: 22px;
	font-size: 17px;
}

.form-control::placeholder {
	color: #b9dfff;
}

.form-control:focus {
	background: rgba(255, 255, 255, .08);
	color: white;
	border-color: #35d8ff;
	box-shadow: 0 0 18px rgba(53, 216, 255, .35);
}

.verify-btn {
	height: 60px;
	border: none;
	border-radius: 40px;
	background: linear-gradient(90deg, #00bfff, #0066ff);
	color: white;
	font-size: 22px;
	font-weight: 600;
	margin-top: 10px;
	transition: .35s;
}

.verify-btn:hover {
	transform: translateY(-4px);
	box-shadow: 0 0 25px #00bfff;
}

.security-box {
	margin-top: 30px;
	padding: 18px;
	border-radius: 15px;
	background: rgba(0, 191, 255, .10);
	border: 1px solid rgba(53, 216, 255, .25);
	color: #d8ecff;
	font-size: 15px;
	line-height: 1.6;
}

.security-box ul {
	margin-top: 10px;
	padding-left: 22px;
}

.security-box li {
	color: #dbeeff;
	margin-bottom: 8px;
	font-size: 14px;
}

.security-box i {
	color: #35d8ff;
	margin-right: 8px;
}

/*=========================
   Icon Color Overrides
=========================*/
.bi {
	color: #35d8ff;
}

label i {
	color: #35d8ff;
	margin-right: 8px;
}

.verify-btn i {
	color: white;
	margin-right: 8px;
}

.security-box i {
	color: #35d8ff;
}

.welcome-name {
	color: #d8ecff;
	font-size: 17px;
	font-weight: 500;
}

/* Mobile Navbar */
@media ( max-width : 991px) {
	.navbar-collapse {
		background: rgba(7, 26, 54, .95);
		backdrop-filter: blur(18px);
		-webkit-backdrop-filter: blur(18px);
		padding: 20px;
		border-radius: 15px;
		margin-top: 15px;
	}
	.navbar-nav .nav-item {
		margin: 10px 0;
	}
	.btn-logout {
		margin-left: 0;
		margin-top: 10px;
		display: inline-block;
	}
}
.back-dashboard-link {
	color: #35d8ff;
	text-decoration: none;
	font-size: 16px;
	font-weight: 500;
	transition: all .3s ease;
}

.back-dashboard-link i {
	margin-right: 6px;
	color: #35d8ff;
}

.back-dashboard-link:hover {
	color: #ffffff;
	text-shadow: 0 0 10px #35d8ff;
	text-decoration: underline;
}
</style>
</head>

<body>

	<!-- Floating particles -->
	<div class="particle p1"></div>
	<div class="particle p2"></div>
	<div class="particle p3"></div>
	<div class="particle p4"></div>

	<!-- ================== Navbar ======================== -->
	<nav
		class="navbar navbar-expand-lg navbar-dark fixed-top custom-navbar">
		<div class="container">

			<a class="navbar-brand fw-bold logo" href="dashboard"> <i
				class="bi bi-bank2"></i> HDFC Bank
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">

				<ul class="navbar-nav ms-auto align-items-lg-center">

					<li class="nav-item d-flex align-items-center me-lg-3"><i
						class="bi bi-person-circle"
						style="color: #35d8ff; font-size: 20px; margin-right: 8px;"></i> <span
						class="welcome-name">Welcome, Harsh</span></li>

					<li class="nav-item"><a href="/ATM-SpringMVC-Project/"
						class="btn btn-logout"> <i class="bi bi-box-arrow-right"
							style="color: white;"></i> Logout
					</a></li>
				</ul>

			</div>

		</div>
	</nav>


	<!--=========================
     Background Glow
==========================-->
	<div class="circle circle1"></div>
	<div class="circle circle2"></div>

	<!--=========================
     Heading + Card
==========================-->
	<section class="verify-section">
		<div class="container">

			<div class="page-icon">
				<i class="bi bi-arrow-clockwise"></i>
			</div>

			<h1 class="verify-title">RESET ATM PIN</h1>

			<p class="verify-subtitle">Verify your account before creating a
				new PIN</p>
			<!--=========================
                Verify Card
        ==========================-->
			<div class="row justify-content-center mt-5">

				<div class="col-lg-5 col-md-7 col-sm-10">

					<div class="verify-card">

						<div class="card-icon">
							<i class="bi bi-person-check-fill"></i>
						</div>

						<h3 class="card-title">Account Verification</h3>

						<p class="card-text">Enter your registered details.</p>

						<form action="resetPinVerification" method="post">

							<!-- Account Number -->

							<div class="mb-4 text-start">

								<label class="form-label"> <i
									class="bi bi-person-vcard-fill"></i> Account Number

								</label> <input type="text" class="form-control"
									placeholder="Enter Account Number">

							</div>

							<!-- Mobile -->

							<div class="mb-4 text-start">

								<label class="form-label"> <i class="bi bi-phone-fill"></i>

									Registered Mobile Number

								</label> <input type="text" class="form-control"
									placeholder="Enter Registered Mobile Number">

							</div>

							<!-- DOB -->

							<div class="mb-4 text-start">

								<label class="form-label"> <i
									class="bi bi-calendar-date-fill"></i> Date of Birth

								</label> <input type="date" class="form-control">

							</div>

							<a href="changePin"
								class="verify-btn w-100 d-flex justify-content-center align-items-center text-decoration-none">

								<i class="bi bi-shield-check me-2"></i> Verify Account

							</a>
							
							<!-- Back to Dashboard -->
							<div class="text-center mt-4">
								<a href="dashboard" class="back-dashboard-link"> <i
									class="bi bi-arrow-left"></i> Back to Dashboard
								</a>
							</div>							

						</form>
						<div class="security-box">

							<i class="bi bi-info-circle-fill"></i> Please enter the details
							exactly as registered with the bank.

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
