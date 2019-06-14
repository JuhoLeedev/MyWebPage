<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>부트시스템 구매완료</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/image/icon/HalfLife.ico" rel="shortcuticon">
<style>
body {
	background-color: #E6E6E6;
}

.jumbotron {
	background-color: #F2F2F2;
}
</style>
<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
<script src="js/respond.js"></script>
</head>
<body>
	<%
		String userID = null;
		String userName = null;
		if (session.getAttribute("id") != null) {
			userID = (String) session.getAttribute("id");
			userName = (String) session.getAttribute("name");
		}
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">

					<h1>
						<a href="index.jsp"><img src="images/bslogoBlack.png"
							height=100px></a>
					</h1>

					<br> <br>
					<div class="jumbotron">
						<br> <br> <br> <br> <br>
						<h1 class="text-center">구매 완료!</h1>
						<h2 class="text-center">
							주문이 <strong>완료</strong> 되었습니다.
						</h2>
						<br>
						<p class="text-center">
							저희 부트시스템에서 물품을 구입해 주셔서 감사합니다.
						</p>
						<p class="text-center">
							주문하신 물건은 1~3일 이내로 배송됩니다.
						</p>
						<br> <br> <br> <br>
						<p class="text-center">
							<a class="btn btn-default btn-lg" href="index.jsp" role="button">홈으로</a>
						</p>
						<br> <br> <br> <br><hr>
						<div class="footer">
							<p class="text-center" style="font-size: 13px">
								<strong>BootSystem</strong><br><small>Copyright &copy; 2019 BootSystem Corporation</small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>