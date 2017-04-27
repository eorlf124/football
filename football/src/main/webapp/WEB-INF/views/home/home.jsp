<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>Parallax Template - Materialize</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <style>
	    .waves-effect.waves-blue .waves-ripple {
     /* The alpha value allows the text and background color
     of the button to still show through. */
      background-color: rgba(100, 181, 246, 0.65);
    }
    
    .background {
      background-color: rgba(100, 181, 246, 0.65);
    }
  </style>
</head>
<body>
 <nav class="blue lighten-2" role="navigation">
	 <ul id="dropdown1" class="dropdown-content">
		<li><a href="#!">소개</a></li>
		<li><a href="#!">도움말</a></li>
	</ul>
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo white-text">FootBall Club</a>
      <ul class="right hide-on-med-and-down">
      	<li><a href="#">클럽</a></li>     
      	<li><a href="#">회원가입</a></li>
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

  <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center teal-text text-lighten-2">FootBall Club</h1>
        <div class="row center">
          <h5 class="header col s12 light">Material 디자인을 기반으로한 현대적 반응형 프론트엔드 프레임워크</h5>
        </div>
        <div class="row center">
          <a href="#" id="download-button" class="btn-large waves-effect waves-blue teal lighten-1">Login</a>
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="${pageContext.request.contextPath}/resources/img/background1.jpg" alt="Unsplashed background img 1"></div>
  </div>


  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">flash_on</i></h2>
            <h5 class="center">Speeds up development</h5>

            <p class="light">We did most of the heavy lifting for you to provide a default stylings that incorporate our custom components. Additionally, we refined animations and transitions to provide a smoother experience for developers.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">group</i></h2>
            <h5 class="center">User Experience Focused</h5>

            <p class="light">By utilizing elements and principles of Material Design, we were able to create a framework that incorporates components and animations that provide more feedback to users. Additionally, a single underlying responsive system across all platforms allow for a more unified user experience.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><i class="material-icons">settings</i></h2>
            <h5 class="center">Easy to work with</h5>

            <p class="light">We have provided detailed documentation as well as specific code examples to help new users get started. We are also always open to feedback and can answer any questions a user may have about Materialize.</p>
          </div>
        </div>
      </div>

    </div>
  </div>


  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="${pageContext.request.contextPath}/resources/img/background2.jpg" alt="Unsplashed background img 2"></div>
  </div>

  <div class="container">
    <div class="section">

      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>Contact Us</h4>
          <p class="left-align light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
        </div>
      </div>

    </div>
  </div>


  <div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <div class="row center">
          <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
        </div>
      </div>
    </div>
    <div class="parallax"><img src="${pageContext.request.contextPath}/resources/img/background3.jpg" alt="Unsplashed background img 3"></div>
  </div>

  <footer class="page-footer teal">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">FootBall Club</h5>
          <ul>
            <li><a class="white-text" href="#!">소개</a></li>
            <li><a class="white-text" href="#!">채용정보</a></li>
            <li><a class="white-text" href="#!">정책</a></li>
            <li><a class="white-text" href="#!">도움말</a></li>
          </ul>
        </div>
<!--         <div class="col l3 s12"> -->
<!--           <h5 class="white-text">Connect</h5> -->
<!--           <ul> -->
<!--             <li><a class="white-text" href="#!">Link 1</a></li> -->
<!--             <li><a class="white-text" href="#!">Link 2</a></li> -->
<!--             <li><a class="white-text" href="#!">Link 3</a></li> -->
<!--             <li><a class="white-text" href="#!">Link 4</a></li> -->
<!--           </ul> -->
<!--         </div> -->
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="brown-text text-lighten-3" href="http://materializecss.com">Dae Gil Park</a>
      </div>
    </div>
  </footer>


  <!--  Scripts-->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/init.js"></script>
  <script type="text/javascript">
  	$(function(){
  	  $('.button-collapse').sideNav({
  	      menuWidth: 300, // Default is 300
  	      edge: 'left', // Choose the horizontal origin
  	      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
  	      draggable: true // Choose whether you can drag to open on touch screens
  	    }
  	  );
  	       
  	});
  </script>
</body>
</html>