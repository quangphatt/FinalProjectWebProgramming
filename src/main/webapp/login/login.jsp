<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<html>
<head>
	<title>Login</title> 
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel ="stylesheet" href='<c:url value="/login/filecss.css"></c:url>' />
	<!--
	<link type="text/css" rel ="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
		-->
    
</head>
<body>
<h2>Welcome to the restaurant</h2>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action='<c:url value="/Home/Login"></c:url>' method="post">
			<h1>Create Account</h1>
			<span>or use your email for registration</span>
			<input type="text" placeholder="Name" name="nameS" value="${nameS}" required="required"/>
			<input type="email" placeholder="Email" name="emailS" value="${emailS}" required="required"/>
			<input type="password" placeholder="Password" name="passwordS" value="${email}" required="required"/>
			<input type="hidden" value="true" name="SignUp" />
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container" >
		<form action='<c:url value="/Home/Login"></c:url>' method="post">
			<h1>Sign in</h1>
			<span>or use your account</span>
			<input type="email" placeholder="Email" name="email" value="${email}" required="required"/>
			<input type="password" placeholder="Password" name="password" value="${password}" required="required"/>
			<input type="hidden" value="false" name="SignUp" />
			<a href="<c:url value="/Home/ChangePassword"></c:url>">Forgot or Change Your Password ?</a>
			<a href='<c:url value="/Home"></c:url>'>Home</a>
			<button>Sign In</button>
			<c:if test="${not empty error}">
				<h5>${error}</h5>
			</c:if>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Please login to experience the restaurant's dishes</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>

<footer>
	<p>
		Thank you for loving the restaurant's service
	</p>
</footer>
<script type="text/javascript" src='<c:url value="/login/filejs.js"></c:url>' ></script>
</body>
</html>