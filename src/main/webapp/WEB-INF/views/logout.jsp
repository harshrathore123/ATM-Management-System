<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Logout Successful</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{

    background:#071a36;

    min-height:100vh;

    position:relative;

    overflow-x:hidden;

    overflow-y:auto;

    padding-top:100px;

    padding-bottom:40px;

}


/*=========================
        Navbar
=========================*/

.custom-navbar{

	background: rgba(7, 26, 54, .70);
	
	backdrop-filter: blur(20px);
	
	padding: 15px 0;
	
	transition: .4s;

    height:85px;

    border-bottom:1px solid rgba(0,200,255,.12);

    box-shadow:

    0 5px 25px rgba(0,0,0,.25);
    
        position:fixed;

    top:0;

    left:0;

    width:100%;

    z-index:9999;

}

.logo{

    font-size:38px;

    font-weight:700;

    color:white !important;

}

.logo i{

    color:#35d8ff;

    margin-right:8px;

}

.navbar-nav .nav-link{

    color:#d8ecff !important;

    font-size:18px;

    margin-left:28px;

    transition:.3s;

}

.navbar-nav .nav-link:hover{

    color:#35d8ff !important;

}

.btn-login{

    margin-left:30px;

    padding:10px 28px;

    border-radius:40px;

    border:1px solid #35d8ff;

    color:white;

    transition:.4s;

}

.btn-login:hover{

    background:#00bfff;

    color:white;

    box-shadow:

    0 0 18px #00bfff;

}

/* Left Glow */

body::before{

    content:"";

    position:absolute;

    width:650px;

    height:650px;

    left:-250px;

    top:50px;

    border-radius:50%;

    background:#8d2cff;

    filter:blur(130px);

    opacity:.18;

}

/* Right Glow */

body::after{

    content:"";

    position:absolute;

    width:650px;

    height:650px;

    right:-250px;

    bottom:-120px;

    border-radius:50%;

    background:#00d4ff;

    filter:blur(130px);

    opacity:.16;

}

/* Logout Card */

.logout-card{

    position:relative;

        width:100%;

    max-width:470px;

    padding:40px;

    border-radius:25px;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.15);

    backdrop-filter:blur(18px);

    box-shadow:

    0 20px 50px rgba(0,0,0,.35);

    z-index:5;

}

/* Heading */

.logout-title{

    color:white;

    text-align:center;

    font-size:36px;

    font-weight:700;

    margin-bottom:20px;

}

/* Message */

.logout-message{

    color:#d8ecff;

    text-align:center;

    font-size:17px;

    line-height:1.8;

    margin-bottom:35px;

}

/*=========================================
        Security Icon
=========================================*/

.lock-icon{

    width:90px;

    height:90px;

    margin:0 auto 25px;

    border-radius:50%;

    display:flex;

    justify-content:center;

    align-items:center;

    border:2px solid #00d4ff;

    background:rgba(0,212,255,.10);

    box-shadow:

    0 0 20px #00d4ff,

    inset 0 0 20px rgba(0,212,255,.15);

    animation:pulse 2.5s infinite;

}

.lock-icon i{

    color:#77e8ff;

    font-size:42px;

}

@keyframes pulse{

    0%{

        box-shadow:

        0 0 15px #00d4ff;

    }

    50%{

        box-shadow:

        0 0 35px #00d4ff,

        0 0 60px rgba(0,212,255,.5);

    }

    100%{

        box-shadow:

        0 0 15px #00d4ff;

    }

}

/*=========================================
        Logout Button
=========================================*/

.logout-btn{

    width:100%;

    height:58px;

    border:none;

    border-radius:40px;

    background:linear-gradient(90deg,#00bfff,#0066ff);

    color:white;

    font-size:20px;

    font-weight:600;

    transition:.4s;

    cursor:pointer;

    box-shadow:

    0 0 25px rgba(0,191,255,.35);

}

.logout-btn:hover{

    transform:translateY(-4px);

    box-shadow:

    0 0 20px #00d4ff,

    0 0 45px rgba(0,212,255,.6);

}

/*=========================================
        Floating Particles
=========================================*/

.particle{

    position:absolute;

    width:8px;

    height:8px;

    border-radius:50%;

    background:#33d6ff;

    box-shadow:0 0 15px #33d6ff;

    animation:floatParticle 5s infinite ease-in-out;

}

.p1{

    top:12%;

    left:15%;

}

.p2{

    top:30%;

    left:8%;

    animation-delay:1s;

}

.p3{

    right:12%;

    top:22%;

    animation-delay:2s;

}

.p4{

    right:15%;

    bottom:20%;

    animation-delay:3s;

}

@keyframes floatParticle{

    0%{

        transform:translateY(0);

    }

    50%{

        transform:translateY(-18px);

    }

    100%{

        transform:translateY(0);

    }

}

/*=========================================
        Left Shield
=========================================*/

.left-shield{

    position:absolute;

    left:-70px;

    top:45%;

    font-size:90px;

    color:#55d8ff;

    opacity:.45;

    text-shadow:0 0 30px #00d4ff;

}

/*=========================================
        Right Shield
=========================================*/

.right-shield{

    position:absolute;

    right:-70px;

    top:45%;

    font-size:90px;

    color:#55d8ff;

    opacity:.45;

    text-shadow:0 0 30px #00d4ff;

}

/*=========================================
        Security Status
=========================================*/

.security-status{

    display:flex;

    justify-content:space-between;

    gap:12px;

    margin-bottom:35px;

}

.status-box{

    flex:1;

    text-align:center;

    padding:15px 10px;

    border-radius:18px;

    background:rgba(255,255,255,.05);

    border:1px solid rgba(0,212,255,.20);

    transition:.4s;

}

.status-box:hover{

    transform:translateY(-5px);

    box-shadow:

    0 0 20px rgba(0,212,255,.45);

}

.status-box i{

    display:block;

    font-size:24px;

    color:#49e6ff;

    margin-bottom:8px;

}

.status-box span{

    color:#d5ebff;

    font-size:13px;

}

/*=========================================
        Glass Reflection
=========================================*/

.logout-card::before{

    content:"";

    position:absolute;

    width:220px;

    height:220px;

    background:rgba(255,255,255,.05);

    border-radius:50%;

    top:-90px;

    right:-80px;

}

/*=========================================
        Card Hover
=========================================*/

.logout-card{

    transition:.4s;

}

.logout-card:hover{

    transform:translateY(-8px);

    box-shadow:

    0 25px 60px rgba(0,0,0,.45),

    0 0 40px rgba(0,212,255,.30);

}

/*=========================================
        Button Click
=========================================*/

.logout-btn:active{

    transform:scale(.97);

}

/*=========================================
        Text Selection
=========================================*/

::selection{

    background:#00d4ff;

    color:white;

}

/*=========================================
        Scrollbar
=========================================*/

::-webkit-scrollbar{

    width:8px;

}

::-webkit-scrollbar-thumb{

    background:#00d4ff;

    border-radius:20px;

}

/*=========================================
        Responsive
=========================================*/

@media(max-width:768px){

body{

    padding-top:95px;

}

.logout-wrapper{

    min-height:auto;

    align-items:flex-start;

    padding:30px 15px;

}

.logout-card{

    width:100%;

    max-width:420px;

    padding:35px 25px;

}

.left-shield,
.right-shield{

    display:none;

}

}

/*=========================================
        Small Devices
=========================================*/

@media(max-width:480px){

.logout-card{

    border-radius:20px;

}

.logout-title{

    font-size:24px;

}

.lock-icon{

    width:75px;

    height:75px;

}

.lock-icon i{

    font-size:34px;

}

.logout-btn{

    height:55px;

}

}

.logout-wrapper{

    width:100%;

    min-height:calc(100vh - 100px);

    display:flex;

    justify-content:center;

    align-items:center;

    padding:40px 20px;

    position:relative;

    z-index:20;

}
</style>

</head>

<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark fixed-top custom-navbar">
		<div class="container">

			<a class="navbar-brand fw-bold logo" href="#"> <i
				class="bi bi-bank2"></i> ApexBank
			</a>

			<button class="navbar-toggler" data-bs-toggle="collapse"
				data-bs-target="#navbarNav">

				<span class="navbar-toggler-icon"></span>

			</button>

			<div class="collapse navbar-collapse" id="navbarNav">

				<ul class="navbar-nav ms-auto">

					<li class="nav-item"><a class="nav-link active" href="/ATM-SpringMVC-Project/">Home</a>
					</li>

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

<!-- Left Shield -->

<div class="left-shield">

    <i class="bi bi-shield-lock-fill"></i>

</div>

<!-- Right Shield -->

<div class="right-shield">

    <i class="bi bi-shield-lock-fill"></i>

</div>

<!-- Logout Card -->

<div class="logout-wrapper">

<div class="logout-card">

    <!-- Security Icon -->

    <div class="lock-icon">

        <i class="bi bi-unlock-fill"></i>

    </div>

    <!-- Heading -->

    <h2 class="logout-title">

        Logout Successful

    </h2>

    <!-- Message -->

    <p class="logout-message">

        Your session has been logged out successfully.<br>

        Thank you for using <strong>ApexBank ATM Management System</strong>.

        <br><br>

        Your account remains completely secure.

    </p>

    <br>

    <!-- Login Button -->

    <a href="login">

        <button class="logout-btn">

            <i class="bi bi-box-arrow-in-right"></i>

            Return To Login Portal

        </button>

    </a>

</div>
</div>
</body>
</html>
