<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>부트시스템 로그인</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/image/icon/HalfLife.ico" rel="shortcuticon">
<style>
body {
	background-color: #E6E6E6;
}
</style>
<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
<script src="js/respond.js"></script>
</head>
<body>
<%
		int loginFailed = -1;
		if (session.getAttribute("loginFailed") != null) {
			loginFailed = (Integer) session.getAttribute("loginFailed");
		}
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<br>
					<h1>
						<a href="index.jsp"><img src="images/bslogoBlack.png"
							height=100px></a>
					</h1>

					<br> <br> <br>
					<form class="form-horizontal" role="form" method="post"
						action="login.do">
						<div class="form-group form-group-lg" id="inputId">
							<input type="text" class="form-control" id="id" name="userId"
								placeholder="아이디" maxlength="30"> <span
								class="text-left" id="idSpan" style="color: red; display: none"></span>
						</div>
						<div class="form-group form-group-lg" id="inputPw">
							<input type="password" class="form-control" id="password"
								name="userPassword" placeholder="비밀번호" maxlength="30"> <span
								class="text-left" id="pwSpan" style="color: red; display: none"></span>
						</div><span
								class="text-left" id="loginSpan" style="color: red; display: none"></span>
						<br>
						<div class="form-group">

							<input type="submit"
								class="btn btn-primary btn-lg btn-login-submit btn-block m-t-md"
								value="로그인" />
						</div>
						<div class="form-group">
							<a href="signUp.jsp"
								class="btn btn-default btn-lg btn-block m-t-md"> 회원가입</a>
						</div>
						<hr />
						<span class='text-center'><a
							href="/bbs/index.php?mid=index&act=dispMemberFindAccount"
							class="text-sm">아이디/비밀번호 찾기</a></span>


					</form>
					<br> <br> <br> <br>
					<div class="footer">
						<p class="text-center" style="font-size: 13px">
							<strong>BootSystem</strong><br> <small>Copyright
								&copy; 2019 BootSystem Corporation</small>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
	<script>
	var loginFailed = <%=loginFailed%>;
	$(document).ready(function(){
		if(loginFailed == 1){
			$('#loginSpan').html("아이디 또는 비밀번호를 다시 확인해주세요.");
			$('#loginSpan').css("display", "block");
		}
		});
		$(function() {
			$("form").submit(function(event) {
				$('#loginSpan').html("");
				$('#loginSpan').css("display", "none");
				if ($('#id').val() == "") {
					$('#idSpan').html("아이디를 입력해주세요.");
					$('#idSpan').css("display", "block");
					$('#id').focus();
					return false;
				} else if ($('#id').val() != "") {
					$('#idSpan').html("");
					$('#idSpan').css("display", "none");
				}if ($('#password').val() == "") {
					$('#pwSpan').html("비밀번호를 입력해주세요.");
					$('#pwSpan').css("display", "block");
					$('#password').focus();
					return false;
				} else if ($('#password').val() != "") {
					<% session.invalidate(); %> 
					$('#idSpan').html("");
					$('#idSpan').css("display", "none");
				}
			});
		});
	</script>
</body>
</html>