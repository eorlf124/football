<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>웹 페이지를 찾을 수 없습니다.</title>
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
	<div class="card-panel hoverable">
		<h2>요청하신 웹 페이지를 찾을 수 없습니다.</h2>
		<blockquote>
			방문하시려는 페이지의 주소가 잘못 입력되었거나,<br>
			페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br><br>
			입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.<br><br>
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