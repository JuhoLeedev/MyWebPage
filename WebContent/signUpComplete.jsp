<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>부트시스템 회원가입</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/image/icon/HalfLife.ico" rel="shortcuticon">
<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
<script src="js/respond.js"></script>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("id")!=null){
		userID = (String) session.getAttribute("id");
	}
%>
	   <div class="container">
    <div class="row">
    <div class="col-sm-12 text-center" >
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
          
         <h1><a href = "index.jsp"><img src="images/bslogoBlack.png" height = 100px></a></h1>
     
         <!--  request 로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean -->
        


		<div class="jumbotron">
			<h1 class="text-center">환영합니다!</h1>
			<p class="text-center">땡땡님, 회원가입을 축하합니다.</p>
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="#" role="button">견적 내러
					가기</a>
			</p>
		<
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