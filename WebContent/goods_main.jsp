<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , intial-scale="1">
<title>부트시스템</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootSystem.css">
<link rel="stylesheet" href="css/bootstrp.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<script src="js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top top-nav" id="topNav">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp"><img id="bsLogo"
					src="images/bslogo.png" alt="Logo" /></a>
				<button type="button" class="navbar-toggle navbar-toggler-right"
					data-toggle="collapse" data-target="#main-menu"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="main-menu">
				<div class="btn-group top-btn" role="group">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">조립PC</a></li>
						<li><a href="#">부품</a></li>
						<li><a href="#">PC견적</a></li>
						<li><a href="#">커뮤니티</a></li>
						<li><a href="#">고객지원</a></li>
					</ul>
				</div>
				<ul class="nav navbar-nav navbar-right top-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li style="text-align: center; cursor: pointer;"><a data-target="#signIn"
								data-toggle="modal">로그인</a></li>
							<li style="text-align: center;"><a href="signUp.html">회원가입</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	<footer style="background-color: white; color: #bbbbbb">
		<div class="container">
			<br>
			<div class="row">
				<img src="images/bslogoBlack.png" height="35px"><br> <br>
				<a href="#" role="button" aria-expanded="false"
					style="color: #bbbbbb; text-decoration: none">Privacy Policy</a>&nbsp;&nbsp;
				|&nbsp;&nbsp; <a href="#" role="button" aria-expanded="false"
					style="color: #bbbbbb; text-decoration: none">Legal Info</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="#" role="button" aria-expanded="false"
					style="color: #bbbbbb; text-decoration: none">Contact Us</a><br>
				<h7>Copyright &copy; BootSystem Corporation</h7>
				<br> <br>
			</div>
		</div>
	</footer>
	<div class="row">
		<div class="modal" id="signIn" tabindex="-1">
			<div class="modal-dialog"
				style="max-width: 100%; width: 400px; display: table;">
				<div class="modal-content">
					<div class="modal-header"
						style="text-align: center; font-size: 20px">
						로그인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<div class="login-box well">
							<div class="form-group">
								<label for="username-email">이메일 or 아이디</label> <input
									name="user_id" value='' id="username-email"
									placeholder="E-mail or Username" type="text"
									class="form-control" />
							</div>
							<div class="form-group">
								<label for="password">비밀번호</label> <input name="password"
									id="password" value='' placeholder="Password" type="password"
									class="form-control" />
							</div>
							<div class="form-group">
								<input type="submit"
									class="btn btn-default btn-login-submit btn-block m-t-md"
									value="로그인" />
							</div>
							<span class='text-center'><a
								href="/bbs/index.php?mid=index&act=dispMemberFindAccount"
								class="text-sm">비밀번호 찾기</a></span>
							<hr />
							<div class="form-group">
								<a href="signUp.html" class="btn btn-default btn-block m-t-md">
									회원가입</a>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>