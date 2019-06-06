<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>부트시스템</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootSystem.css">
<script src="js/respond.js"></script>
</head>
<body>
	<nav class="navbar navbar-default" id="navbar">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#main-menu"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><img id="bsLogo"
					src="images/bslogo.png" height="35px" /></a>
			</div>
			<div class="navbar-collapse collapse" id="main-menu">
				<div class="btn-group top-btn" role="group">
					<ul class="nav navbar-nav">
						<li><a href="goods_main.jsp">조립PC</a></li>
						<li><a href="#">부품</a></li>
						<li><a href="#">PC견적</a></li>
						<li><a href="#">커뮤니티</a></li>
						<li><a href="#">고객지원</a></li>
					</ul>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li style="text-align: center; cursor: pointer;"><a href="login.jsp">로그인</a></li>
							<li style="text-align: center;"><a href="signUp.jsp">회원가입</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide"
					src="https://tistory1.daumcdn.net/tistory/2933724/skin/images/hover01.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p>
							Note: If you're viewing this page via a
							<code>file://</code>
							URL, the "next" and "previous" Glyphicon buttons on the left and
							right might not load/display properly due to web browser security
							rules.
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide"
					src="https://tistory1.daumcdn.net/tistory/2933724/skin/images/hover02.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide"
					src="https://tistory1.daumcdn.net/tistory/2933724/skin/images/hover03.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->

	<div class="container">
		<div class="jumbotron">
			<h1 class="text-center">Boot System에서 여러분만의 시스템을 맞춰보세요!</h1>
			<p class="text-center">부트시스템은 완성된 pc뿐만 아니라 개별 부품들도 판매하고 있습니다</p>
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="#" role="button">견적 내러
					가기</a>
			</p>
		</div>
	</div>

	<!--푸터
	=============================  -->
	<footer style="background-color: white; color: #bbbbbb">
		<div class="container">
			<br>
			<div class="row">
				<p style="width: 800px">
					<img src="images/bslogoBlack.png" height="35px">
				</p>
				<p style="width: 800px;">
					<a href="#" role="button" aria-expanded="false"
						style="color: #bbbbbb; text-decoration: none">Privacy Policy</a>&nbsp;&nbsp;
					|&nbsp;&nbsp; <a href="#" role="button" aria-expanded="false"
						style="color: #bbbbbb; text-decoration: none">Legal Info</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="#" role="button" aria-expanded="false"
						style="color: #bbbbbb; text-decoration: none">Contact Us</a><br>
				</p>
				<p style="width: 800px;">
					<small>Copyright &copy; BootSystem Corporation</small>
				</p>
				<br> <br>
			</div>
		</div>
	</footer>




	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>