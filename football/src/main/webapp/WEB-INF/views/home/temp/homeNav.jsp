<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <nav class="blue lighten-2" role="navigation">
	 <ul id="dropdown1" class="dropdown-content">
		<li><a href="#!">소개</a></li>
		<li><a href="#!">도움말</a></li>
	</ul>
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo white-text">FootBall Club</a>
      <ul class="right hide-on-med-and-down">
      	<li><a href="#">클럽</a></li>     
      	<li><a href="${pageContext.request.contextPath}/signup">회원가입</a></li>
        <li>
        	<a class="dropdown-button" href="#" data-activates="dropdown1">
        		<i class="material-icons">more_vert</i>
        	</a>
        </li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
	   <li>
	   		<div class="userView">
		      <div class="background">
				<a id="logo-container" href="#" class="brand-logo white-text">FootBall Club</a>
		      </div>
		      <a href="#!user"></a>
<!-- 		      <a href="#!name"><span class="white-text name">John Doe</span></a> -->
<!-- 		      <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a> -->
	    	</div>
	    </li>
	    <li><a href="#!">회원가입</a></li>
	    <li><a href="#!">클럽</a></li>
	    <li><div class="divider"></div></li>
	    <li><a class="waves-effect waves-blue" href="#!">소개</a></li>
	    <li><a class="waves-effect waves-blue" href="#!">도움말</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons white-text">menu</i></a>
    </div>
</nav>