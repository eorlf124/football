<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title>FootBall Club</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
<style type="text/css">

	.card-panel {
		margin-top: 20%;
	}

	.block-btn {
		display: block;
		width: 100%;
	}
</style>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col s12 m8 offset-m2">
				<div class="card-panel hoverable col s12">
					<h4 class="center-align"><a href='${pageContext.request.contextPath}'>FootBall Club</a></h4>
					<form action="">
						<div class="row">
							<div class="input-field col s8">
								<input id="email" type="text" class="validate"> 
								<label for="email" data-error="wrong" data-success="right">ID</label>
							</div>
							<div class="input-field col s4">
								<a class="waves-effect waves-light btn btn-large red lighten-2 block-btn">중복확인</a>
							</div>
							<div class="input-field col s12">
								<input id="email" type="password" class="validate"> 
								<label for="email" data-error="wrong" data-success="right">password</label>
							</div>	
							<div class="input-field col s12">
								<input id="email" type="password" class="validate"> 
								<label for="email" data-error="wrong" data-success="right">Confirm password</label>
							</div>	
							<div class="input-field col s12">
								<input id="email" type="email" class="validate"> 
								<label for="email" data-error="올바른 이메일주소가 아닙니다." data-success="올바른 이메일 주소입니다.">Email</label>
							</div>
							<div class="input-field col s12">
								<input type="submit" value="SIGN" class="btn block-btn">
							</div>					
						</div>														
					</form>
				</div>
			</div>
		</div>
		
	</div>
	
<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
</body>
</html>