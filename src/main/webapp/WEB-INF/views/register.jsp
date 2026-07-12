<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>HDBC Bank | Register</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: #071a36;
	min-height: 100vh;
	position: relative;
	overflow-x: hidden;
	overflow-y: auto;
	padding-top: 110px;
	padding-bottom: 40px;
}

/*============================
      Background Glow
=============================*/
body::before {
	content: '';
	position: absolute;
	width: 650px;
	height: 650px;
	left: -260px;
	top: 80px;
	border-radius: 50%;
	background: #00bfff;
	filter: blur(100px);
	opacity: .18;
}

body::after {
	content: '';
	position: absolute;
	width: 550px;
	height: 550px;
	right: -220px;
	top: -120px;
	border-radius: 50%;
	background: #006eff;
	filter: blur(100px);
	opacity: .18;
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

.btn-login {
	margin-left: 30px;
	padding: 10px 28px;
	border-radius: 40px;
	border: 1px solid #35d8ff;
	color: white;
	transition: .4s;
}

.btn-login:hover {
	background: #00bfff;
	color: white;
	box-shadow: 0 0 18px #00bfff;
}
/*============================
      Animated Dots
=============================*/
.dot {
	position: absolute;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: #33d6ff;
	box-shadow: 0 0 15px #33d6ff;
	animation: float 5s infinite ease-in-out;
}

.dot1 {
	top: 12%;
	left: 15%;
}

.dot2 {
	top: 30%;
	left: 8%;
	animation-delay: 1s;
}

.dot3 {
	top: 55%;
	left: 18%;
	animation-delay: 2s;
}

.dot4 {
	top: 20%;
	right: 12%;
	animation-delay: 3s;
}

.dot5 {
	bottom: 18%;
	right: 10%;
	animation-delay: 2s;
}

@
keyframes float { 0%{
	transform: translateY(0px);
}

50


%
{
transform


:


translateY
(


-18px


)
;


}
100


%
{
transform


:


translateY
(


0px


)
;


}
}

/*============================
      Register Card
=============================*/
.register-card {
	position: relative;
	width: 100%;
	max-width: 500px;
	padding: 80px 40px 40px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .08);
	backdrop-filter: blur(18px);
	border: 1px solid rgba(255, 255, 255, .20);
	box-shadow: 0 20px 50px rgba(0, 0, 0, .35);
	overflow: hidden;
	z-index: 100;
}

.register-card::before {
	content: "";
	position: absolute;
	inset: 0;
	background: linear-gradient(130deg, rgba(0, 183, 255, .10), transparent,
		rgba(255, 255, 255, .05));
	pointer-events: none;
}

/*============================
      Profile Circle
=============================*/
.profile-circle {
	position: absolute;
	top: -45px;
	left: 50%;
	transform: translateX(-50%);
	width: 95px;
	height: 95px;
	border-radius: 50%;
	background: #0b2849;
	border: 2px solid #00c8ff;
	display: flex;
	justify-content: center;
	align-items: center;
	box-shadow: 0 0 30px #00c8ff;
}

.profile-circle i {
	font-size: 42px;
	color: white;
}

/*============================
      Heading
=============================*/
.register-title {
	text-align: center;
	font-size: 42px;
	font-weight: 700;
	color: white;
	margin-bottom: 40px;
}

/*====================================
        Input Box
====================================*/
.input-box {
	position: relative;
	margin-bottom: 22px;
}

.input-box input {
	width: 100%;
	height: 58px;
	border-radius: 40px;
	outline: none;
	border: 2px solid rgba(0, 210, 255, .35);
	background: rgba(255, 255, 255, .06);
	color: white;
	padding-left: 22px;
	padding-right: 60px;
	font-size: 17px;
	transition: .45s;
	box-shadow: inset 0 0 15px rgba(0, 210, 255, .12), 0 0 15px
		rgba(0, 210, 255, .15);
}

/* Placeholder */
.input-box input::placeholder {
	color: #b7d9ff;
}

/* Hover */
.input-box input:hover {
	border-color: #00d4ff;
}

/* Focus */
.input-box input:focus {
	border-color: #00d4ff;
	box-shadow: inset 0 0 20px rgba(0, 210, 255, .25), 0 0 18px #00d4ff, 0 0
		35px rgba(0, 210, 255, .45);
}

/* Icon */
.input-box i {
	position: absolute;
	top: 50%;
	right: 22px;
	transform: translateY(-50%);
	color: #76e9ff;
	font-size: 22px;
	transition: .4s;
}

.input-box:hover i {
	color: white;
	text-shadow: 0 0 12px #00d4ff;
}

/*====================================
      Two Column Layout
====================================*/
.row-box {
	display: flex;
	gap: 15px;
	width: 100%;
}

.row-box .input-box {
	width: 50%;
}

/*====================================
      Neon Border
====================================*/
.input-box::before {
	content: "";
	position: absolute;
	left: 12px;
	right: 12px;
	top: 8px;
	bottom: 8px;
	border-radius: 35px;
	border: 1px solid rgba(0, 210, 255, .08);
	pointer-events: none;
}

/*====================================
      Label
====================================*/
.input-label {
	color: #cfefff;
	margin-bottom: 8px;
	margin-left: 10px;
	font-size: 15px;
	font-weight: 500;
}

/*====================================
      Input Animation
====================================*/
.input-box input {
	animation: fadeInput .6s ease;
}

@
keyframes fadeInput {from { opacity:0;
	transform: translateY(10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/*====================================
        Register Button
====================================*/
.register-btn {
	width: 100%;
	height: 60px;
	border: none;
	border-radius: 45px;
	background: linear-gradient(90deg, #0bb8ff, #0b63ff);
	color: white;
	font-size: 22px;
	font-weight: 600;
	cursor: pointer;
	transition: .4s;
	position: relative;
	overflow: hidden;
	box-shadow: 0 0 25px rgba(0, 180, 255, .35);
}

.register-btn i {
	margin-right: 10px;
}

.register-btn:hover {
	transform: translateY(-5px);
	box-shadow: 0 0 20px #00d4ff, 0 0 50px rgba(0, 210, 255, .6);
}

/*==========================
      Button Shine
===========================*/
.register-btn::before {
	content: "";
	position: absolute;
	width: 200px;
	height: 200px;
	background: rgba(255, 255, 255, .25);
	left: -220px;
	top: -60px;
	transform: rotate(35deg);
	transition: .8s;
}

.register-btn:hover::before {
	left: 120%;
}

/*==========================
      Login Link
===========================*/
.login-link {
	text-align: center;
	margin-top: 22px;
	color: white;
	font-size: 17px;
}

.login-link a {
	color: #00d4ff;
	font-weight: 600;
	text-decoration: none;
}

.login-link a:hover {
	text-shadow: 0 0 12px #00d4ff;
}

/*==========================
      Security Badge
===========================*/
.security-badge {
	position: absolute;
	top: 22px;
	right: 22px;
	width: 45px;
	height: 45px;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	background: rgba(0, 195, 255, .12);
	border: 1px solid rgba(0, 195, 255, .35);
	color: #39ddff;
	box-shadow: 0 0 18px rgba(0, 195, 255, .30);
}

/*==========================
      Decorative Bars
===========================*/
.bar {
	position: absolute;
	width: 100px;
	height: 3px;
	background: #32d8ff;
	border-radius: 20px;
	box-shadow: 0 0 18px #32d8ff;
}

.bar1 {
	left: -30px;
	top: 180px;
	transform: rotate(-25deg);
}

.bar2 {
	right: -30px;
	bottom: 180px;
	transform: rotate(25deg);
}

/*==========================
      Floating Particles
===========================*/
.particle {
	position: absolute;
	width: 7px;
	height: 7px;
	border-radius: 50%;
	background: #32d8ff;
	box-shadow: 0 0 15px #32d8ff;
	animation: particleMove 6s linear infinite;
}

.p1 {
	top: 8%;
	left: 18%;
}

.p2 {
	top: 28%;
	left: 10%;
	animation-delay: 1s;
}

.p3 {
	top: 70%;
	right: 15%;
	animation-delay: 2s;
}

.p4 {
	top: 18%;
	right: 10%;
	animation-delay: 3s;
}

.p5 {
	bottom: 10%;
	left: 28%;
	animation-delay: 4s;
}

@
keyframes particleMove { 0%{
	transform: translateY(0);
	opacity: .4;
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
;


opacity


:


1
;


}
100


%
{
transform


:


translateY
(


0


)
;


opacity


:


.4
;


}
}

/*==========================
      Footer
===========================*/
.footer-text {
	text-align: center;
	margin-top: 25px;
	color: #8ecfff;
	font-size: 14px;
	letter-spacing: 1px;
}

/*=========================================
        Card Hover Effect
=========================================*/
.register-card {
	transition: all .4s ease;
}

.register-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 30px 60px rgba(0, 0, 0, .45), 0 0 40px
		rgba(0, 210, 255, .25);
}

/*=========================================
        Glass Reflection
=========================================*/
.register-card::after {
	content: "";
	position: absolute;
	width: 220px;
	height: 220px;
	background: rgba(255, 255, 255, .05);
	border-radius: 50%;
	top: -100px;
	right: -80px;
}

/*=========================================
        Button Click
=========================================*/
.register-btn:active {
	transform: scale(.98);
}

/*=========================================
        Input Autofill
=========================================*/
input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0 1000px rgba(255, 255, 255, .06) inset
		!important;
	-webkit-text-fill-color: white !important;
}

/*=========================================
        Text Selection
=========================================*/
::selection {
	background: #00d4ff;
	color: #fff;
}

/*=========================================
        Scrollbar
=========================================*/
::-webkit-scrollbar {
	width: 8px;
}

::-webkit-scrollbar-track {
	background: #071a36;
}

::-webkit-scrollbar-thumb {
	background: #00d4ff;
	border-radius: 20px;
}

/*=========================================
        Mobile Responsive
=========================================*/
@media ( max-width :768px) {
	body {
		padding-top: 95px;
	}
	.register-wrapper {
		min-height: auto;
		align-items: flex-start;
		padding: 30px 15px;
	}
	.register-card {
		width: 100%;
		max-width: 420px;
	}
	.row-box {
		flex-direction: column;
	}
	.row-box .input-box {
		width: 100%;
	}
}

/*=========================================
        Small Devices
=========================================*/
@media ( max-width :480px) {
	.register-card {
		border-radius: 20px;
	}
	.register-title {
		font-size: 28px;
	}
	.input-box input {
		font-size: 15px;
		height: 54px;
	}
	.register-btn {
		height: 55px;
		font-size: 18px;
	}
}

@media ( min-width :1200px) {
	.register-card {
		max-width: 520px;
	}
}

/*==============================
      Register Wrapper
===============================*/
.register-wrapper {
	width: 100%;
	min-height: calc(100vh - 85px);
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px 20px;
	position: relative;
	z-index: 20;
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
	.btn-login {
		margin-left: 0;
		margin-top: 10px;
		display: inline-block;
	}
}
</style>

</head>

<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark fixed-top custom-navbar">
		<div class="container">

			<a class="navbar-brand fw-bold logo" href="#"> <i
				class="bi bi-bank2"></i> HDFC Bank
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">

				<span class="navbar-toggler-icon"></span>

			</button>

			<div class="collapse navbar-collapse" id="navbarNav">

				<ul class="navbar-nav ms-auto">

					<li class="nav-item ms-lg-3"><a class="btn btn-login"
						href="/ATM-SpringMVC-Project/">Home</a></li>

					<li class="nav-item ms-lg-3"><a href="login"
						class="btn btn-login"> Login </a></li>

				</ul>

			</div>

		</div>
	</nav>


	<!-- Floating Particles -->

	<div class="particle p1"></div>
	<div class="particle p2"></div>
	<div class="particle p3"></div>
	<div class="particle p4"></div>
	<div class="particle p5"></div>

	<!-- Decorative Bars -->

	<div class="bar bar1"></div>
	<div class="bar bar2"></div>

	<!-- Animated Dots -->

	<div class="dot dot1"></div>
	<div class="dot dot2"></div>
	<div class="dot dot3"></div>
	<div class="dot dot4"></div>
	<div class="dot dot5"></div>

	<!-- Register Card -->
	<div class="register-wrapper">
		<div class="register-card">

			<!-- Security Badge -->

			<div class="security-badge">

				<i class="bi bi-shield-check"></i>

			</div>

			<!-- Profile Icon -->

			<div class="profile-circle">

				<i class="bi bi-person-plus-fill"></i>

			</div>

			<!-- Heading -->

			<h2 class="register-title">Create Account</h2>

			<!-- Registration Form -->

			<form action="registerUser" method="post">

				<!-- First Name + Last Name -->

				<div class="row-box">

					<div class="input-box">

						<input type="text" name="firstName" placeholder="First Name"
							required> <i class="bi bi-person"></i>

					</div>

					<div class="input-box">

						<input type="text" name="lastName" placeholder="Last Name"
							required> <i class="bi bi-person"></i>

					</div>

				</div>

				<!-- Email -->

				<div class="input-box">

					<input type="email" name="email" placeholder="Email Address"
						required> <i class="bi bi-envelope-fill"></i>

				</div>

				<!-- Mobile -->

				<div class="input-box">

					<input type="tel" name="mobile" placeholder="Mobile Number"
						required> <i class="bi bi-phone-fill"></i>

				</div>

				<!-- Password -->

				<div class="input-box">

					<input type="text" name="password" placeholder="Account Number"
						required> <i class="bi bi-lock-fill"></i>

				</div>

				<!-- Confirm Password -->

				<div class="input-box">

					<input type="password" name="confirmPassword"
						placeholder="Account PIN" required> <i
						class="bi bi-shield-lock-fill"></i>

				</div>

				<!-- Register Button -->

				<button type="submit" class="register-btn">

					<i class="bi bi-person-plus-fill"></i> Create Account

				</button>

				<!-- Login Link -->

				<div class="login-link">

					Already have an account? <a href="login"> Login Here </a>

				</div>

				<!-- Footer -->

				<div class="footer-text">Secure ATM Management System</div>

			</form>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>