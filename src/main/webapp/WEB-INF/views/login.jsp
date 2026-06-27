<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>ApexBank Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
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

	display:flex;

	justify-content:center;

	align-items:center;

	overflow:hidden;

	position:relative;

}

/*============================
      Background
=============================*/

body::before{

	content:'';

	position:absolute;

	width:600px;

	height:600px;

	left:-250px;

	top:100px;

	border-radius:50%;

	background:#00bfff;

	filter:blur(90px);

	opacity:.18;

}

body::after{

	content:'';

	position:absolute;

	width:500px;

	height:500px;

	right:-180px;

	top:-100px;

	border-radius:50%;

	background:#0080ff;

	filter:blur(90px);

	opacity:.18;

}

/*============================
      Animated Dots
=============================*/

.dot{

	position:absolute;

	width:8px;

	height:8px;

	border-radius:50%;

	background:#33d6ff;

	box-shadow:0 0 15px #33d6ff;

	animation:float 5s infinite ease-in-out;

}

.dot1{

	top:18%;

	left:14%;

}

.dot2{

	top:28%;

	left:9%;

	animation-delay:1s;

}

.dot3{

	top:35%;

	left:18%;

	animation-delay:2s;

}

.dot4{

	right:12%;

	top:22%;

	animation-delay:3s;

}

.dot5{

	right:8%;

	top:45%;

	animation-delay:2s;

}

@keyframes float{

	0%{

		transform:translateY(0px);

	}

	50%{

		transform:translateY(-18px);

	}

	100%{

		transform:translateY(0px);

	}

}

/*============================
      Login Card
=============================*/

.login-card{

	position:relative;

	width:430px;

	padding:70px 40px 40px;

	border-radius:25px;

	background:rgba(255,255,255,.08);

	backdrop-filter:blur(18px);

	border:1px solid rgba(255,255,255,.20);

	box-shadow:

	0 20px 50px rgba(0,0,0,.35);

	overflow:hidden;

	z-index:100;

}

.login-card::before{

	content:"";

	position:absolute;

	inset:0;

	background:

	linear-gradient(130deg,

	rgba(0,183,255,.10),

	transparent,

	rgba(255,255,255,.04));

	pointer-events:none;

}

/*============================
      Lock Circle
=============================*/

.lock-circle{

	position:absolute;

	top:-45px;

	left:50%;

	transform:translateX(-50%);

	width:90px;

	height:90px;

	border-radius:50%;

	background:#0b2849;

	border:2px solid #00c8ff;

	display:flex;

	justify-content:center;

	align-items:center;

	box-shadow:

	0 0 30px #00c8ff;

}

.lock-circle i{

	font-size:40px;

	color:white;

}

/*============================
      Heading
=============================*/

.login-title{

	text-align:center;

	font-size:46px;

	font-weight:700;

	color:white;

	margin-bottom:40px;

}

/*====================================
        Input Box
====================================*/

.input-box{

    position:relative;

    margin-bottom:28px;

}

.input-box input{

    width:100%;

    height:58px;

    border-radius:40px;

    outline:none;

    border:2px solid rgba(0,210,255,.35);

    background:rgba(255,255,255,.06);

    color:white;

    padding-left:22px;

    padding-right:60px;

    font-size:17px;

    transition:.45s;

    box-shadow:

    inset 0 0 15px rgba(0,210,255,.12),

    0 0 15px rgba(0,210,255,.15);

}

/* Placeholder */

.input-box input::placeholder{

    color:#b7d9ff;

}

/* Hover */

.input-box input:hover{

    border-color:#00d4ff;

}

/* Focus */

.input-box input:focus{

    border-color:#00d4ff;

    box-shadow:

    inset 0 0 20px rgba(0,210,255,.25),

    0 0 18px #00d4ff,

    0 0 35px rgba(0,210,255,.45);

}

/* Icon */

.input-box i{

    position:absolute;

    top:50%;

    right:22px;

    transform:translateY(-50%);

    color:#76e9ff;

    font-size:22px;

    transition:.4s;

}

.input-box:hover i{

    color:white;

    text-shadow:0 0 12px #00d4ff;

}

/*====================================
       Neon Border
====================================*/

.input-box::before{

    content:"";

    position:absolute;

    left:12px;

    right:12px;

    top:8px;

    bottom:8px;

    border-radius:35px;

    border:1px solid rgba(0,210,255,.08);

    pointer-events:none;

}

/*====================================
       Login Button
====================================*/

.login-btn{

    width:100%;

    height:62px;

    border:none;

    border-radius:45px;

    background:

    linear-gradient(90deg,

    #0bb8ff,

    #0b63ff);

    color:white;

    font-size:24px;

    font-weight:600;

    cursor:pointer;

    transition:.45s;

    position:relative;

    overflow:hidden;

    box-shadow:

    0 0 25px rgba(0,180,255,.45);

}

.login-btn i{

    margin-right:10px;

}

.login-btn:hover{

    transform:translateY(-5px);

    box-shadow:

    0 0 25px #00d4ff,

    0 0 60px rgba(0,210,255,.6);

}

/* Shine Effect */

.login-btn::before{

    content:"";

    position:absolute;

    width:180px;

    height:180px;

    background:rgba(255,255,255,.25);

    left:-220px;

    top:-50px;

    transform:rotate(35deg);

    transition:.8s;

}

.login-btn:hover::before{

    left:110%;

}

/*====================================
      Forgot Password
====================================*/

.forgot{

    margin-top:28px;

    text-align:center;

}

.forgot a{

    color:#d7e9ff;

    text-decoration:none;

    font-size:17px;

    transition:.35s;

}

.forgot a:hover{

    color:#00d4ff;

}

/*====================================
      Register
====================================*/

.register{

    text-align:center;

    margin-top:20px;

    color:white;

    font-size:18px;

}

.register a{

    color:#00d4ff;

    font-weight:600;

    text-decoration:none;

}

.register a:hover{

    text-shadow:0 0 12px #00d4ff;

}

/*=========================================
        Cyber Background Lines
=========================================*/

body::before{

    content:"";

    position:absolute;

    inset:0;

    background-image:

    linear-gradient(rgba(0,195,255,.08) 1px, transparent 1px),

    linear-gradient(90deg, rgba(0,195,255,.08) 1px, transparent 1px);

    background-size:70px 70px;

    opacity:.25;

    z-index:-3;

}

/*=========================================
        Animated Glow Rings
=========================================*/

.login-card::after{

    content:"";

    position:absolute;

    width:420px;

    height:420px;

    border-radius:50%;

    border:2px solid rgba(0,195,255,.15);

    top:-180px;

    left:-180px;

    animation:ringRotate 12s linear infinite;

}

@keyframes ringRotate{

    from{

        transform:rotate(0deg);

    }

    to{

        transform:rotate(360deg);

    }

}

/*=========================================
        Floating Particles
=========================================*/

.particle{

    position:absolute;

    width:6px;

    height:6px;

    border-radius:50%;

    background:#32d8ff;

    box-shadow:0 0 15px #32d8ff;

    animation:particleMove 6s linear infinite;

}

.p1{

    top:8%;

    left:30%;

}

.p2{

    top:70%;

    left:12%;

    animation-delay:2s;

}

.p3{

    right:18%;

    top:18%;

    animation-delay:3s;

}

.p4{

    right:10%;

    bottom:18%;

    animation-delay:4s;

}

@keyframes particleMove{

    0%{

        transform:translateY(0);

        opacity:.4;

    }

    50%{

        transform:translateY(-35px);

        opacity:1;

    }

    100%{

        transform:translateY(0);

        opacity:.4;

    }

}

/*=========================================
        Security Badge
=========================================*/

.security-badge{

    position:absolute;

    top:25px;

    right:25px;

    width:45px;

    height:45px;

    border-radius:50%;

    display:flex;

    justify-content:center;

    align-items:center;

    background:rgba(0,195,255,.12);

    border:1px solid rgba(0,195,255,.35);

    color:#39ddff;

    box-shadow:0 0 15px rgba(0,195,255,.3);

}

/*=========================================
        Bottom Glow
=========================================*/

.login-card{

    box-shadow:

    0 20px 40px rgba(0,0,0,.35),

    0 0 35px rgba(0,195,255,.15);

}

/*=========================================
        Smooth Hover
=========================================*/

.login-card:hover{

    transform:translateY(-8px);

    transition:.4s;

}

/*=========================================
        Small Decorative Bars
=========================================*/

.bar{

    position:absolute;

    width:90px;

    height:3px;

    background:#32d8ff;

    border-radius:30px;

    box-shadow:0 0 15px #32d8ff;

}

.bar1{

    left:-25px;

    top:150px;

    transform:rotate(-25deg);

}

.bar2{

    right:-25px;

    bottom:150px;

    transform:rotate(25deg);

}

/*=========================================
        Footer Text
=========================================*/

.login-footer{

    text-align:center;

    margin-top:30px;

    color:#8ecfff;

    font-size:14px;

    letter-spacing:1px;

}
</style>
</head>

<body>

<div class="particle p1"></div>
<div class="particle p2"></div>
<div class="particle p3"></div>
<div class="particle p4"></div>

<div class="bar bar1"></div>
<div class="bar bar2"></div>

<!-- Floating Dots -->

<div class="dot dot1"></div>
<div class="dot dot2"></div>
<div class="dot dot3"></div>
<div class="dot dot4"></div>
<div class="dot dot5"></div>

<!-- Login Card -->

<div class="login-card">

<div class="security-badge">
    <i class="bi bi-shield-check"></i>
</div>

    <!-- Lock Icon -->

    <div class="lock-circle">

        <i class="bi bi-shield-lock-fill"></i>

    </div>

    <!-- Heading -->

    <h2 class="login-title">

        Login Portal

    </h2>

    <!-- Login Form -->

    <form action="loginUser" method="post">

        <!-- Username -->

        <div class="input-box">

            <input
                type="text"
                name="username"
                placeholder="Enter Username"
                required>

            <i class="bi bi-person-fill"></i>

        </div>

        <!-- Password -->

        <div class="input-box">

            <input
                type="password"
                name="password"
                placeholder="Enter Password"
                required>

            <i class="bi bi-lock-fill"></i>

        </div>

        <!-- Login Button -->

        <button type="submit" class="login-btn">

            <i class="bi bi-box-arrow-in-right"></i>

            Login

        </button>

        <!-- Forgot Password -->

        <div class="forgot">

            <a href="#">Forgot Password?</a>

        </div>
        <div class="login-footer">
    Secure ATM Management System
</div>

        <!-- Register -->

        <div class="register">

            Don't have an account?

            <a href="register"> Register Now</a>

        </div>

    </form>

</div>
</head>
</html>