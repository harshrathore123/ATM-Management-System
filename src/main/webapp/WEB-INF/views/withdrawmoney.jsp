<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Cash Withdrawal | ApexBank</title>

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

/* CSS WILL COME IN PART 2 */
/*==========================
    Global
===========================*/
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background: linear-gradient(135deg, #071a36, #0b2d63);
	min-height: 100vh;
	overflow-x: hidden;
	color: white;
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

/*==========================
      Background Glow
===========================*/
.circle {
	position: fixed;
	border-radius: 50%;
	filter: blur(140px);
	z-index: -3;
}

.circle1 {
	width: 450px;
	height: 450px;
	background: #00bfff;
	left: -180px;
	bottom: -180px;
	opacity: .22;
}

.circle2 {
	width: 500px;
	height: 500px;
	background: #005eff;
	right: -220px;
	top: -180px;
	opacity: .18;
}

/*==========================
      Floating Particles
===========================*/
.particle {
	position: absolute;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: #38d9ff;
	box-shadow: 0 0 18px #38d9ff;
	animation: floating 6s infinite ease-in-out;
}

.p1 {
	left: 10%;
	top: 18%;
}

.p2 {
	left: 22%;
	top: 35%;
	animation-delay: 1s;
}

.p3 {
	right: 18%;
	top: 28%;
	animation-delay: 2s;
}

.p4 {
	right: 10%;
	bottom: 18%;
	animation-delay: 3s;
}

@
keyframes floating { 0%{
	transform: translateY(0px);
}

50


%
{
transform


:


translateY
(


-20px


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

/*==========================
        Navbar
===========================*/
.custom-navbar {
	background: rgba(7, 26, 54, .75);
	backdrop-filter: blur(20px);
	border-bottom: 1px solid rgba(255, 255, 255, .08);
	padding: 15px 0;
}

.logo {
	font-size: 34px;
	font-weight: 700;
	color: white !important;
}

.logo i {
	color: #35d8ff;
	margin-right: 10px;
}

.nav-link {
	color: white !important;
	margin-left: 25px;
	transition: .35s;
}

.nav-link:hover {
	color: #35d8ff !important;
}

/*==========================
      Section
===========================*/
.withdraw-section {
	padding: 140px 0 80px;
}

/*==========================
      Glass Card
===========================*/
.withdraw-card{
    position: relative;
    width:490px;
    margin:auto;
    padding:55px 30px 30px;
    border-radius:25px;
    background:rgba(255,255,255,.08);
    backdrop-filter:blur(18px);
    border:1px solid rgba(255,255,255,.12);
    box-shadow:0 15px 40px rgba(0,0,0,.35),
               0 0 40px rgba(0,191,255,.12);
    overflow:hidden;
}

.withdraw-card::before {
	content: "";
	position: absolute;
	inset: 0;
	background: linear-gradient(135deg, rgba(255, 255, 255, .05),
		transparent, rgba(0, 191, 255, .05));
	pointer-events: none;
}

/*==========================
        Icon
===========================*/
.top-icon{
    width:75px;
    height:75px;
    margin-bottom:20px;
}

.top-icon i{
    font-size:34px;
}

/*==========================
      Heading
===========================*/
.withdraw-card h1{
    font-size:28px;
    margin-bottom:8px;
}

.withdraw-card p{
    font-size:15px;
    margin-bottom:15px;
}

/*==========================
      Amount Buttons
===========================*/
.amount-btn {
	width: 100%;
	height: 52px;
	border-radius: 14px;
	border: 2px solid rgba(53, 216, 255, .35);
	background: rgba(255, 255, 255, .06);
	color: white;
	font-size: 18px;
	font-weight: 600;
	transition: .35s;
}

.amount-btn:hover {
	background: #00bfff;
	transform: translateY(-5px);
	box-shadow: 0 0 20px #00bfff;
}

.amount-btn.active {
	background: #00bfff;
	box-shadow: 0 0 25px #00bfff;
}

/*==========================
      Input
===========================*/
label {
	margin-bottom: 12px;
	font-size: 18px;
	display: block;
}

.form-control {
	height: 54px;
	border-radius: 45px;
	background: rgba(255, 255, 255, .08);
	border: 2px solid rgba(53, 216, 255, .25);
	color: white;
	font-size: 18px;
	padding-left: 25px;
}

.form-control::placeholder {
	color: #c5e7ff;
}

.form-control:focus {
	background: rgba(255, 255, 255, .08);
	color: white;
	border-color: #35d8ff;
	box-shadow: 0 0 20px rgba(0, 191, 255, .35);
}

/*==========================
      Button
===========================*/
.withdraw-btn {
	width: 100%;
	height: 56px;
	border: none;
	border-radius: 45px;
	background: linear-gradient(90deg, #00bfff, #0066ff);
	color: white;
	font-size: 20px;
	font-weight: 600;
	transition: .35s;
	box-shadow: 0 15px 35px rgba(0, 140, 255, .35);
}

.withdraw-btn:hover {
	transform: translateY(-5px);
	box-shadow: 0 0 35px #00bfff;
}

.withdraw-btn i {
	margin-right: 10px;
}

/*==========================
      Responsive
===========================*/
@media ( max-width :768px) {
	.withdraw-card {
		padding: 40px 25px;
	}
	.withdraw-card h1 {
		font-size: 30px;
	}
	.amount-btn {
		height: 60px;
		font-size: 18px;
	}
	.withdraw-btn {
		font-size: 20px;
	}
	.top-icon {
		width: 80px;
		height: 80px;
	}
	.top-icon i {
		font-size: 34px;
	}
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
				class="bi bi-bank2"></i> HDBC Bank
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
				</ul>

			</div>

		</div>
	</nav>

	<!--======================
      Background Effects
=======================-->

	<div class="circle circle1"></div>

	<div class="circle circle2"></div>

	<div class="particle p1"></div>

	<div class="particle p2"></div>

	<div class="particle p3"></div>

	<div class="particle p4"></div>

	<!--======================
      Main Section
=======================-->

	<section class="withdraw-section">

		<div class="container">

			<div class="row justify-content-center">

				<div class="col-lg-5 col-md-6">

					<div class="withdraw-card">

						<div class="top-icon">

							<i class="bi bi-cash-stack"></i>

						</div>

						<h1>ATM Cash Withdrawal</h1>

						<p>Choose the amount you want to withdraw</p>

						<!--=====================
        Form
======================-->

						<form action="atmpinverify" method="post">

							<div class="row g-3 mt-3">

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="500">

										₹500</button>

								</div>

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="1000">

										₹1000</button>

								</div>

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="2000">

										₹2000</button>

								</div>

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="5000">

										₹5000</button>

								</div>

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="10000">

										₹10000</button>

								</div>

								<div class="col-4">

									<button type="button" class="amount-btn" data-value="20000">

										₹20000</button>

								</div>

							</div>

							<div class="mt-4">

								<label> Custom Amount </label> <input type="number" id="amount"
									name="amount" class="form-control" placeholder="Enter Amount">

							</div>

							<div class="mt-4">

								<button class="withdraw-btn" type="submit">

									<i class="bi bi-cash"></i> Withdraw Money

								</button>

							</div>

						</form>

					</div>

				</div>

			</div>

		</div>

	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		/* JS WILL COME IN PART 3 */
	</script>

</body>

</html>