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
	
	.input-field label{
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
					<form:form id="signup" action="signup" method="post" commandName="signUpVo">
						<div class="row">
							<div class="input-field col s8">
								<form:input path="user_id" class="validate"/>
								<label for="user_id">ID</label>
							</div>
							<div class="input-field col s4">
								<a id="idCheckBtn" class="waves-effect waves-light btn btn-large red lighten-2 block-btn">중복확인</a>
								<form:hidden path="idCheck"/>
							</div>
							<div class="input-field col s12">
								<form:password path="pass_word"/>
								<label for="pass_word">password</label>
							</div>	
							<div class="input-field col s12">
								<form:password path="conPassword"/>
								<label for="conPassword">Confirm password</label>
							</div>	
							<div class="input-field col s12">
								<form:input path="userName" class="validate"/>
								<label for="userName">Name</label>
							</div>
							<div class="input-field col s12">
								<form:input path="e_mail"/>
								<label for="e_mail">Email</label>
							</div>
							<div class="input-field col s12">
								<a id='submit' class="btn block-btn waves-effect waves-light light-blue darken-1">SIGN</a>
							</div>					
						</div>														
					</form:form>
				</div>
			</div>
		</div>
		
	</div>
	
<!--  Scripts-->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
<script type="text/javascript">
$(function(){
	
	$('#user_id').on('keyup', function(){
		$('#idCheck').val('false');
		$('#idCheckBtn').removeClass('disabled');
	});
	
	//ID 중복체크
	$('#idCheckBtn').on('click', function(){
		var userId = $('#user_id').val();
		
		if(userId == ''){
			Materialize.toast('ID를 입력해주세요', 4000);
			return false;
		}
		
		$.ajax({
			type : "POST",
			url : "idCheck",
			data : {
				userId : userId
			},
//             beforeSend : function(xhr)
//             {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
//                 xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
//             },
			success : function(data) {
				if(data != 'false'){
					Materialize.toast('사용 가능한 ID입니다.', 4000);
					$('#idCheckBtn').addClass('disabled');
				}else{
					Materialize.toast('ID가 중복되었습니다.', 4000);
				}
				$('#idCheck').val(data);
			}
		});
		return false;
	});

	//비밀번호 유효성 확인
	$('#pass_word').on('keyup', function(){
		var regPwd = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,16}$/;
		var password = $(this).val();
		if(password == ''){
			$(this).removeClass('invalid');
		} 
		
		if(!regPwd.test(password) && password != ''){
			$(this).next().attr('data-error', '비밀번호는 문자, 숫자 조합 6자리 이상입니다.');
			$(this).removeClass('valid');
			$(this).addClass('invalid');
		}else if(password != ''){
			$(this).next().attr('data-success', '올바른 비밀번호 입니다.');
			$(this).removeClass('invalid');
			$(this).addClass('valid');
			
		}
		conPassCheck();
	});

	//비밀번호 확인
	$('#conPassword').on('keyup', function(){
		conPassCheck();
	});
	
	$('#e_mail').on('keyup', function(){
		var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		var email = $(this).val();
		if(email == ''){
			$(this).removeClass('invalid');
		} 
		
		if(!regEmail.test(email) && email != ''){
			$(this).next().attr('data-error', '올바르지 않은 이메일 형식입니다.');
			$(this).removeClass('valid');
			$(this).addClass('invalid');
		}else if(email != ''){
			$(this).next().attr('data-success', '올바른 이메일 형식입니다.');
			$(this).removeClass('invalid');
			$(this).addClass('valid');			 
		}
		 
	});
	
	
	$('#submit').on('click', function(){
		var validate = $('.invalid').attr('name');
		var idCheck = $('#idCheck').val();
		
		var conPass = $('#conPassword').val();
		var pass = $('#pass_word').val();
		var name = $('#userName').val();
		var email = $('#e_mail').val();

		if(idCheck == 'false'){
			Materialize.toast('ID 중복체크를 해주세요.', 4000);
			return false;
		}
		
		
		if(validate != undefined || conPass == '' || pass == '' || name == '' || email == ''){
			Materialize.toast('공백이거나 올바르지 않은 입력 값이 존재합니다..', 4000);
		}else{
	 		$('form').submit();
		}
		return false;	
	});
	
});

//비밀번호 확인
function conPassCheck(){
	var conPass = $('#conPassword').val();
	var pass = $('#pass_word').val();
	
	if(conPass == ''){
		$('#conPassword').removeClass('invalid');
		return;
	}
	
	if(conPass == pass && conPass != ''){
		$('#conPassword').next().attr('data-success', '비밀번호가 일치합니다.');
		$('#conPassword').removeClass('invalid');
		$('#conPassword').addClass('valid');
	}else if(conPass != ''){
		$('#conPassword').next().attr('data-error', '비밀번호가 일치하지 않습니다.');
		$('#conPassword').removeClass('valid');
		$('#conPassword').addClass('invalid');
	}
}
</script>
</body>
</html>