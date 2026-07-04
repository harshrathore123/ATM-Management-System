<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HDFC Bank | ATM Management System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
	rel="stylesheet">

<style>
/*=========================================
    Google Font
=========================================*/
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html {
	scroll-behavior: smooth;
}

body {
	background: #071a36;
	color: #fff;
	min-height: 100vh;
	position: relative;
	overflow-x: hidden;
	overflow-y: auto;
	padding-bottom: 40px;
}

/*=========================================
    Background
=========================================*/
body::before {
	content: "";
	position: fixed;
	width: 700px;
	height: 700px;
	background: #1d4ed8;
	border-radius: 50%;
	top: -250px;
	right: -250px;
	filter: blur(180px);
	opacity: .25;
	z-index: -2;
}

body::after {
	content: "";
	position: fixed;
	width: 600px;
	height: 600px;
	background: #06b6d4;
	border-radius: 50%;
	bottom: -250px;
	left: -200px;
	filter: blur(180px);
	opacity: .20;
	z-index: -2;
}

/*=========================================
    Hero
=========================================*/
.hero {
	min-height: 100vh;
	display: flex;
	align-items: center;
	padding-top: 120px;
}

.welcome {
	color: #4fd7ff;
	font-size: 18px;
	letter-spacing: 2px;
	text-transform: uppercase;
}

.hero h1 {
	font-size: 58px;
	font-weight: 700;
	line-height: 1.2;
	margin-top: 20px;
}

.hero p {
	color: #d8d8d8;
	line-height: 1.9;
	font-size: 18px;
	max-width: 550px;
}

/*=========================================
        Buttons
=========================================*/
.custom-btn {
	background: linear-gradient(45deg, #00b4ff, #0066ff);
	border: none;
	color: #fff;
	border-radius: 50px;
	padding: 14px 40px;
	font-weight: 600;
	transition: .4s;
	box-shadow: 0 10px 25px rgba(0, 140, 255, .45);
}

.custom-btn:hover {
	transform: translateY(-6px);
	color: #fff;
	box-shadow: 0 18px 40px rgba(0, 170, 255, .65);
}

.register-btn {
	background: #fff;
	color: #0d2f66;
	border-radius: 50px;
	padding: 14px 40px;
	font-weight: 600;
	transition: .4s;
}

.register-btn:hover {
	background: #0dcaf0;
	color: #fff;
	transform: translateY(-6px);
}

/*=========================================
        Hero Image
=========================================*/
.hero-image {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.atm-image {
	width: 100%;
	max-width: 540px;
	animation: floatImage 4s ease-in-out infinite;
	filter: drop-shadow(0 20px 40px rgba(0, 191, 255, .4));
}

/*=========================================
        Floating Animation
=========================================*/
@
keyframes floatImage { 0%{
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

/*=========================================
        Floating Cards
=========================================*/
.floating-card {
	position: absolute;
	background: rgba(255, 255, 255, .12);
	backdrop-filter: blur(18px);
	color: #fff;
	padding: 14px 24px;
	border-radius: 15px;
	font-weight: 600;
	border: 1px solid rgba(255, 255, 255, .25);
	box-shadow: 0 15px 35px rgba(0, 0, 0, .25);
	animation: floatingCard 5s ease-in-out infinite;
}

.floating-card i {
	color: #38d9ff;
	font-size: 24px;
	margin-right: 8px;
}

/* Card Position */
.card1 {
	top: 15%;
	left: -25px;
}

.card2 {
	top: 55%;
	right: -35px;
}

.card3 {
	bottom: 5%;
	left: 20%;
}

/*=========================================
        Floating Card Animation
=========================================*/
@
keyframes floatingCard { 0%{
	transform: translateY(0px);
}

50






%
{
transform






:






translateY




(






-12px






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

/*=========================================
        Glow Effect
=========================================*/
.hero-image::before {
	content: "";
	position: absolute;
	width: 430px;
	height: 430px;
	border-radius: 50%;
	background: radial-gradient(circle, #009dff, transparent 70%);
	filter: blur(90px);
	opacity: .45;
	z-index: -1;
}

/*=========================================
        Feature Box
=========================================*/
.feature-box {
	background: rgba(255, 255, 255, .08);
	backdrop-filter: blur(18px);
	border: 1px solid rgba(255, 255, 255, .15);
	border-radius: 20px;
	padding: 22px;
	text-align: center;
	transition: .4s;
	cursor: pointer;
}

.feature-box:hover {
	transform: translateY(-10px);
	background: rgba(0, 140, 255, .18);
}

.feature-box i {
	font-size: 38px;
	color: #38d9ff;
	margin-bottom: 15px;
	display: block;
}

.feature-box span {
	color: #fff;
	font-weight: 600;
	font-size: 17px;
}

/*=========================================
        Extra Glow
=========================================*/
.custom-btn, .register-btn, .feature-box, .floating-card {
	transition: all .4s ease;
}

.feature-box:hover, .floating-card:hover {
	box-shadow: 0 0 30px rgba(0, 191, 255, .45);
}

/*=========================================
            Services Section
=========================================*/
.services {
	padding: 100px 0;
	background: #081f42;
}

.services h2 {
	font-size: 42px;
	font-weight: 700;
	margin-bottom: 15px;
}

.services p {
	color: #cfcfcf;
	font-size: 17px;
}

.service-card {
	background: rgba(255, 255, 255, .08);
	border-radius: 25px;
	padding: 40px 30px;
	text-align: center;
	transition: .4s;
	border: 1px solid rgba(255, 255, 255, .08);
	backdrop-filter: blur(15px);
	height: 100%;
}

.service-card:hover {
	transform: translateY(-12px);
	background: #0b2d63;
	box-shadow: 0 20px 35px rgba(0, 191, 255, .25);
}

.service-card i {
	font-size: 60px;
	color: #29d6ff;
	margin-bottom: 25px;
}

.service-card h4 {
	margin-bottom: 15px;
	font-weight: 600;
}

.service-card p {
	line-height: 28px;
	color: #dadada;
}

/*=========================================
            Statistics
=========================================*/
.stats {
	padding: 80px 0;
	background: #0b2957;
}

.stat-box {
	text-align: center;
	padding: 30px;
}

.stat-box h2 {
	font-size: 55px;
	color: #22d3ee;
	font-weight: 700;
}

.stat-box p {
	color: #d9d9d9;
	font-size: 18px;
}

/*=========================================
            Footer
=========================================*/
footer {
	background: #06152d;
	padding: 70px 0 30px;
}

footer h3 {
	color: #fff;
	margin-bottom: 20px;
}

footer p {
	color: #d6d6d6;
}

footer a {
	text-decoration: none;
	color: #d8d8d8;
	transition: .3s;
}

footer a:hover {
	color: #28d7ff;
}

/*=========================================
        Social Icons
=========================================*/
.social-icons {
	margin-bottom: 20px;
}

.social-icons a {
	width: 50px;
	height: 50px;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
	margin: 10px;
	font-size: 22px;
	background: rgba(255, 255, 255, .08);
	color: #fff;
	transition: .4s;
}

.social-icons a:hover {
	background: #28d7ff;
	transform: translateY(-8px);
}

/*=========================================
        Hover Animation
=========================================*/
.service-card, .feature-box, .custom-btn, .register-btn {
	transition: .4s ease;
}

.service-card:hover i {
	transform: rotateY(360deg);
	transition: 1s;
}

/*=========================================
        Section Heading
=========================================*/
.section-title {
	text-align: center;
	margin-bottom: 70px;
}

.section-title h2 {
	font-size: 45px;
	font-weight: 700;
	color: #fff;
}

.section-title p {
	color: #bfbfbf;
	margin-top: 10px;
}

/*=========================================
        Responsive
=========================================*/
@media ( max-width :992px) {
	.hero {
		text-align: center;
		padding-top: 150px;
	}
	.hero h1 {
		font-size: 45px;
	}
	.hero p {
		margin: auto;
	}
	.hero-image {
		margin-top: 60px;
	}
	.card1 {
		left: 10px;
	}
	.card2 {
		right: 10px;
	}
	.card3 {
		left: 50%;
		transform: translateX(-50%);
	}
}

/*=========================================
        Mobile
=========================================*/
@media ( max-width :768px) {
	.hero h1 {
		font-size: 34px;
	}
	.custom-btn, .register-btn {
		width: 100%;
		margin-bottom: 20px;
	}
	.floating-card {
		display: none;
	}
	.feature-box {
		margin-bottom: 20px;
	}
	.service-card {
		margin-bottom: 25px;
	}
	.services h2 {
		font-size: 32px;
	}
}

/*=========================================
        Scrollbar
=========================================*/
::-webkit-scrollbar {
	width: 10px;
}

::-webkit-scrollbar-track {
	background: #071a36;
}

::-webkit-scrollbar-thumb {
	background: #1ca9ff;
	border-radius: 20px;
}

::-webkit-scrollbar-thumb:hover {
	background: #00d0ff;
}

.btn-login {
	margin-left: 30px;
	padding: 10px 28px;
	border-radius: 40px;
	border: 1px solid #35d8ff;
	color: white !important;
	background: transparent;
	transition: .4s;
}

.btn-login:hover {
	background: #00bfff;
	color: white !important;
	box-shadow: 0 0 18px #00bfff;
}

/*=========================================
        Cash Withdrawl
=========================================*/
.feature-link {
	text-decoration: none;
	color: inherit;
	display: block;
}

.feature-link:hover {
	color: inherit;
}
</style>

</head>

<body>


	<!-- ================= HERO ================= -->

	<section class="hero">

		<div class="container">

			<div class="row align-items-center">

				<!-- LEFT SIDE -->

				<div class="col-lg-6">

					<span class="welcome"> Welcome To HDFC Bank </span>

					<h1 class="display-4 fw-bold mt-3">

						Experience Secure<br> ATM Banking

					</h1>

					<p class="lead mt-4">Manage your ATM transactions securely with
						our modern ATM Management System powered by Spring MVC, Spring ORM
						and MySQL.</p>

					<div class="mt-5">

						<a href="login" class="btn btn-primary btn-lg custom-btn me-3">
							<i class="bi bi-box-arrow-in-right"></i> Login

						</a> <a href="register" class="btn btn-light btn-lg register-btn">
							<i class="bi bi-person-plus"></i> Register

						</a>

					</div>

					<!-- FEATURES -->

					<div class="row mt-5 g-4">

						<div class="col-6">

							<a href="withdrawmoney" class="feature-link">

								<div class="feature-box">

									<i class="bi bi-cash-stack"></i> <span>Cash Withdrawal</span>

								</div>

							</a>

						</div>

						<div class="col-6">

							<div class="feature-box">

								<i class="bi bi-credit-card"></i> <span>Card Services</span>

							</div>

						</div>

						<div class="col-6">

							<div class="feature-box">

								<i class="bi bi-arrow-left-right"></i> <span>Money
									Transfer</span>

							</div>

						</div>

						<div class="col-6">

							<div class="feature-box">

								<i class="bi bi-shield-lock"></i> <span>Secure Banking</span>

							</div>

						</div>

					</div>

				</div>

				<!-- RIGHT SIDE -->

				<div class="col-lg-6 text-center">

					<div class="hero-image">

						<img
							src="https://images.unsplash.com/photo-1556740749-887f6717d7e4?w=800"
							class="img-fluid atm-image" alt="Bank Image">

						<div class="floating-card card1">

							<i class="bi bi-shield-check"></i> Secure

						</div>

						<div class="floating-card card2">

							<i class="bi bi-wallet2"></i> Fast Banking

						</div>

						<div class="floating-card card3">

							<i class="bi bi-currency-rupee"></i> Cash Deposit

						</div>

					</div>

				</div>

			</div>

		</div>

	</section>

	<!-- ================= SERVICES ================= -->

	<section class="services">

		<div class="container">

			<div class="text-center mb-5">

				<h2>Our Banking Services</h2>

				<p>Everything you need at one place</p>

			</div>

			<div class="row g-4">

				<div class="col-md-4">

					<a href="withdrawmoney" class="feature-link">
						<div class="service-card">

							<i class="bi bi-cash-coin"></i>

							<h4>Cash Withdrawal</h4>

							<p>Withdraw money securely from your account.</p>

						</div>
					</a>
				</div>

				<div class="col-md-4">

					<div class="service-card">

						<i class="bi bi-bank"></i>

						<h4>Balance Inquiry</h4>

						<p>Check your account balance instantly.</p>

					</div>

				</div>

				<div class="col-md-4">

					<div class="service-card">

						<i class="bi bi-arrow-left-right"></i>

						<h4>Fund Transfer</h4>

						<p>Transfer money safely between accounts.</p>

					</div>

				</div>

			</div>

		</div>

	</section>

	<!-- ================= FOOTER ================= -->

	<footer>

		<div class="container text-center">

			<div class="social-icons">

				<a href="#"><i class="bi bi-facebook"></i></a> <a href="#"><i
					class="bi bi-twitter-x"></i></a> <a href="#"><i
					class="bi bi-instagram"></i></a> <a href="#"><i
					class="bi bi-linkedin"></i></a>

			</div>

			<p class="mt-3">© 2026 ApexBank ATM Management System</p>

		</div>

	</footer>

	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>