<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title>FootBall Club</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/materialize.css"
	type="text/css" rel="stylesheet" media="screen,projection" />
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" rel="stylesheet" media="screen,projection" />

<title>football - 로그인페이지</title>

<style type="text/css">
#center_panel{
margin-top: 50%;
}

.first_container{
width: 400px;
}

#login_btn{
width: 340px;
}
::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color:    #FF0000;

</style>
</head>
<body>



<body>
	<div class="container first_container">
		<div class="card-panel hoverable" id="center_panel">
			<div class="row">
				<div class="col s12">
					<h5 class="center-align">Football</h5>
				</div>
			</div>
			<form:form commandName="userVo" name="login_form" method="post">
				<div class="row">
					<div class="input-field col s12">
						<form:input path="user_id" id="user_id" type="text" class="validate"/> <label
							for="user_id">user_id</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						<form:input path="pass_word" id="pass_word" type="password" class="validate"/> <label
							for="password">Password</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12 center-align">
						<a class="waves-effect waves-light btn-large" id="login_btn">Login</a>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>


<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>


<script type="text/javascript">
$('#login_btn').on('click',function(){
	var user_id = $('#user_id').val();
	var pass_word = $('#pass_word').val();
	
	if(user_id==''){
		$('#user_id').focus();
		$('#user_id').attr('placeholder','아이디를 입력하세요.');
		return;
	}else if(pass_word==''){
		$('#pass_word').focus();
		$('#pass_word').attr('placeholder','패스워드를 입력하세요.');
		return;
	}
	else{
		$.ajax({
			url : "${pageContext.request.contextPath}/idcheck",
			data : {"id":user_id},
			type : "post",
			success : function(data){
				alert(data.user_id);
		}
	});
     	/* $('form[name=login_form]').attr('action','${pageContext.request.contextPath}/login.do');
		$('form[name=login_form]').submit(); */
      }
});
</script>
</body>
</html>