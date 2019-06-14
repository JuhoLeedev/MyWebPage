<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>

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
<style>
.jumbotron {
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
	background-image: url('images/jumbotronBackground.jpg');
	background-size: cover;
}
</style>
</head>
<body>
	<%
		String userID = null;
		int admin = -1;
		if (session.getAttribute("userID") != null && session.getAttribute("admin") != null) {
			userID = (String) session.getAttribute("userID");
			admin = (Integer) session.getAttribute("admin");
		}
	%>
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
						<li><a href="goods_pc.jsp">PC상품</a></li>
						<li><a href="board.jsp">커뮤니티</a></li>
						<li><a href="#">고객지원</a></li>
						<%
							if (admin == 1) {
						%>
						<li><a href="#">배송관리</a></li>
						<li><a href="#">회원관리</a></li>
						<%
							}
						%>
					</ul>
				</div>
				<%
					if (userID == null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li style="text-align: center; cursor: pointer;"><a
								href="login.jsp">로그인</a></li>
							<li style="text-align: center;"><a href="signUp.jsp">회원가입</a></li>
						</ul></li>
				</ul>
				<%
					} else if (admin == 0) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><strong><%=userID%> 님</strong> <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li style="text-align: center; cursor: pointer;"><a
								href="logout.do"> 로그아웃</a></li>
							<li style="text-align: center;"><a href="#">내 장바구니</a></li>
							<li style="text-align: center;"><a href="#">내 구매 목록</a></li>
							<li style="text-align: center;"><a href="UserInfo.jsp">회원정보 수정</a></li>
						</ul></li>
				</ul>
				<%
					} else if (admin == 1) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><strong>관리자</strong> 님 <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li style="text-align: center; cursor: pointer;"><a
								href="logout.do"> 로그아웃</a></li>
						</ul></li>
				</ul>
				<%
					}
				%>
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
			</div>
			<div class="item">
				<img class="second-slide"
					src="https://tistory1.daumcdn.net/tistory/2933724/skin/images/hover02.jpg"
					alt="Second slide">
			</div>
			<div class="item">
				<img class="third-slide"
					src="https://tistory1.daumcdn.net/tistory/2933724/skin/images/hover03.jpg"
					alt="Third slide">
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

	<div class="container-fluid">
		<div class="jumbotron">
			<h1 class="text-center">Boot System에서 여러분만의 시스템을 맞춰보세요!</h1>
			<p class="text-center">부트시스템은 용도에 맞게 다양한 사양의 제품들을 판매하고 있습니다.</p>
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="goods_pc.jsp" role="button">상품 보러
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