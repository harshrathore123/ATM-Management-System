<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>ATM PIN Verification | ApexBank</title>

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
	background: linear-gradient(135deg, #071a36, #0d2f66);
	color: #fff;
	min-height: 100vh;
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

/*=========================
      Background Glow
=========================*/
.circle {
	position: fixed;
	border-radius: 50%;
	filter: blur(140px);
	z-index: -2;
}

.circle1 {
	width: 500px;
	height: 500px;
	background: #00bfff;
	left: -220px;
	bottom: -220px;
	opacity: .20;
}

.circle2 {
	width: 450px;
	height: 450px;
	background: #005eff;
	right: -200px;
	top: -180px;
	opacity: .18;
}

/*=========================
      Floating Particles
=========================*/
.particle {
	position: absolute;
	width: 8px;
	height: 8px;
	background: #35d8ff;
	border-radius: 50%;
	box-shadow: 0 0 15px #35d8ff;
	animation: float 6s infinite ease-in-out;
}

.p1 {
	top: 18%;
	left: 10%;
}

.p2 {
	top: 32%;
	left: 18%;
	animation-delay: 1s;
}

.p3 {
	right: 15%;
	top: 25%;
	animation-delay: 2s;
}

.p4 {
	right: 8%;
	bottom: 20%;
	animation-delay: 3s;
}

@
keyframes float { 0%{
	transform: translateY(0);
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








0








)






;
}
}

/*=========================
        Navbar
=========================*/
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
	margin-right: 8px;
}

.nav-link {
	color: white !important;
	margin-left: 25px;
	transition: .35s;
}

.nav-link:hover {
	color: #35d8ff !important;
}

.nav-link.active {
	color: #35d8ff !important;
}

/*=========================
      Main Section
=========================*/
.pin-section {
	padding: 140px 0 80px;
}

/*=========================
      Glass Card
=========================*/
.pin-card {
	width: 430px;
	margin: auto;
	padding: 70px 40px 40px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .08);
	backdrop-filter: blur(18px);
	border: 1px solid rgba(255, 255, 255, .18);
	box-shadow: 0 20px 50px rgba(0, 0, 0, .35);
	position: relative;
	overflow: hidden;
}

.pin-card::before {
	content: "";
	position: absolute;
	inset: 0;
	background: linear-gradient(135deg, rgba(255, 255, 255, .05),
		transparent, rgba(0, 191, 255, .05));
	pointer-events: none;
}

/*=========================
      Shield Icon
=========================*/
.shield-icon {
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
	margin-bottom: 20px;
}

.shield-icon i {
	font-size: 32px;
	color: #35d8ff;
}

/*=========================
      Heading
=========================*/
.pin-card h2 {
	text-align: center;
	font-size: 26px;
	font-weight: 700;
	margin-bottom: 10px;
}

.pin-card p {
	text-align: center;
	color: #cfe6ff;
	margin-bottom: 40px;
}

/*=========================
      PIN Boxes
=========================*/
.pin-boxes {
	display: flex;
	justify-content: center;
	gap: 12px;
	margin-bottom: 28px;
}

.pin-input {
	width: 58px;
	height: 58px;
	font-size: 26px;
	border-radius: 14px;
	border: 2px solid rgba(53, 216, 255, .30);
	background: rgba(255, 255, 255, .08);
	text-align: center;
	font-weight: 700;
	color: white;
	outline: none;
}

.pin-input:focus {
	border-color: #35d8ff;
	box-shadow: 0 0 18px #35d8ff;
}

/*=========================
        Keypad
=========================*/
.keypad {
	margin-top: 10px;
}

.key-btn {
	width: 100%;
	height: 52px;
	font-size: 22px;
	border-radius: 14px;
	border: none;
	background: rgba(255, 255, 255, .08);
	border: 2px solid rgba(53, 216, 255, .25);
	color: white;
	font-weight: 600;
	transition: .35s;
}

.key-btn:hover {
	background: #00bfff;
	transform: translateY(-4px);
	box-shadow: 0 0 20px #00bfff;
}

.clear-btn {
	width: 100%;
	height: 52px;
	font-size: 22px;
	border-radius: 14px;
	border: none;
	background: #dc3545;
	color: white;
	font-weight: 600;
	transition: .35s;
}

.clear-btn:hover {
	background: #bb2d3b;
	transform: translateY(-4px);
}

/*=========================
      Verify Button
=========================*/
.verify-btn {
	margin-top: 35px;
	width: 100%;
	height: 70px;
	border: none;
	border-radius: 45px;
	background: linear-gradient(90deg, #00bfff, #0066ff);
	color: white;
	font-size: 24px;
	font-weight: 600;
	box-shadow: 0 15px 35px rgba(0, 140, 255, .35);
	transition: .35s;
}

.verify-btn:hover {
	transform: translateY(-5px);
	box-shadow: 0 0 35px #00bfff;
}

.verify-btn i {
	margin-right: 10px;
}

/*=========================
      Responsive
=========================*/
@media ( max-width :768px) {
	.pin-card {
		padding: 35px 20px;
	}
	.pin-card h2 {
		font-size: 30px;
	}
	.pin-boxes {
		gap: 10px;
	}
	.pin-input {
		width: 55px;
		height: 55px;
		font-size: 24px;
	}
	.key-btn {
		height: 55px;
		font-size: 20px;
	}
	.clear-btn {
		height: 55px;
		font-size: 18px;
	}
	.verify-btn {
		height: 60px;
		font-size: 20px;
	}
	.shield-icon {
		width: 75px;
		height: 75px;
	}
	.shield-icon i {
		font-size: 32px;
	}
}

.cancel-btn {
	width: 100%;
	height: 52px;
	font-size: 22px;
	border-radius: 14px;
	border: none;
	background: #dc3545;
	color: #fff;
	font-weight: 600;
	transition: .3s;
}

.cancel-btn:hover {
	background: #bb2d3b;
	transform: translateY(-4px);
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

	<!--==========================
        Navbar
===========================-->

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

	<!--==========================
        Background
===========================-->

	<div class="circle circle1"></div>

	<div class="circle circle2"></div>

	<div class="particle p1"></div>

	<div class="particle p2"></div>

	<div class="particle p3"></div>

	<div class="particle p4"></div>

	<!--==========================
        Main Section
===========================-->

	<section class="pin-section">

		<div class="container">

			<div class="row justify-content-center">

				<div class="col-lg-5 col-md-7">

					<div class="pin-card">

						<div class="shield-icon">

							<i class="bi bi-shield-lock-fill"></i>

						</div>

						<h2>Enter Your Secure PIN</h2>

						<p>Please enter your 4-digit ATM PIN</p>

						<form action="verifyPin" method="post">

							<div class="pin-boxes">

								<input type="password" maxlength="1" name="pin1"
									class="pin-input" required> <input type="password"
									maxlength="1" name="pin2" class="pin-input" required> <input
									type="password" maxlength="1" name="pin3" class="pin-input"
									required> <input type="password" maxlength="1"
									name="pin4" class="pin-input" required>

							</div>

							<div class="keypad">

								<div class="row g-3">

									<div class="col-4">

										<button type="button" class="key-btn">1</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">2</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">3</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">4</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">5</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">6</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">7</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">8</button>

									</div>

									<div class="col-4">

										<button type="button" class="key-btn">9</button>

									</div>

									<div class="col-4">

										<button type="button" class="clear-btn">Clear</button>

									</div>

									<div class="col-4">
										<button type="button" class="key-btn">0</button>
									</div>

									<div class="col-4">
										<button type="button" class="cancel-btn">Cancel</button>
									</div>
								</div>

							</div>

							<button type="submit" class="verify-btn">

								<i class="bi bi-shield-check"></i> Verify PIN

							</button>

						</form>

					</div>

				</div>

			</div>

		</div>

	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>