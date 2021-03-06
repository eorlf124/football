<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러</title>
<!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<style type="text/css">
	blockquote {
		border-left: 5px solid #26a69a;
	}
</style>
</head>
<body>
<div class="container">
	<div class="card-panel hoverable indigo lighten-5">
		<h2>서버의 상태가 비정상입니다.</h2>
		<blockquote>
			요청하신 페이지가 점검중이거나 비정상 상태입니다.<br><br>
			관리자에게 문의하거나<br>
			잠시후에 다시 시도하시기 바랍니다.<br><br>
			감사합니다.
		</blockquote>
		<p>
			<a class="btn waves-effect waves-light btn-large" href="${pageContext.request.contextPath}">Home</a>
		</p>
	</div>
</div>

  <!--  Scripts-->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
  
</body>
</html>