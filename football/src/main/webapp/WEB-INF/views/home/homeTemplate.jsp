<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title>FootBall Club</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
<style>
/*****************회원가입 완료창 스타일 start********************/
.signupok {
	height: 600px;
}

.signupok div{
	margin-top: 100px;
}
/*****************회원가입 완료창 스타일 end********************/

</style>

<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>

</head>
<body>

	<tiles:insertAttribute name="nav" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />







<script type="text/javascript">
	$(function() {
		$('.button-collapse').sideNav({
			menuWidth : 300, // Default is 300
			edge : 'left', // Choose the horizontal origin
			closeOnClick : true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
			draggable : true
		// Choose whether you can drag to open on touch screens
		});
	});
	</script>
</body>
</html>