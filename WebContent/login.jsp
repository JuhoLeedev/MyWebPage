<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
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
						</div>
						<span class="text-left" id="loginSpan"
							style="color: red; display: none"></span> <br>
						<div class="form-group">
							 <input type="submit"
								class="btn btn-primary btn-lg btn-login-submit btn-block m-t-md"
								value="로그인" />
						</div>

						<div class="form-group">
							<a href="signUp.jsp"
								class="btn btn-default btn-lg btn-block m-t-md"> 회원가입</a>
						</div>
						<div class="text-left">
							<input type="checkbox" class="custom-control-input" id="idSaveCheck"> 아이디
							저장
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
		var loginFailed =
	<%=loginFailed%>
		;
		$(document).ready(function() {
			if (loginFailed == 1) {
				$('#loginSpan').html("아이디 또는 비밀번호를 다시 확인해주세요.");
				$('#loginSpan').css("display", "block");
			}
			var key = getCookie("key");
			$("#id").val(key);

			if ($("#id").val() != "") { // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
				$("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
			}

			$("#idSaveCheck").change(function() { // 체크박스에 변화가 있다면,
				if ($("#idSaveCheck").is(":checked")) { // ID 저장하기 체크했을 때,
					setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
				} else { // ID 저장하기 체크 해제 시,
					deleteCookie("key");
				}
			});

			// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
			$("#id").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
				if ($("#idSaveCheck").is(":checked")) { // ID 저장하기를 체크한 상태라면,
					setCookie("key", $("#id").val(), 7); // 7일 동안 쿠키 보관
				}
			});
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
				}
				if ($('#password').val() == "") {
					$('#pwSpan').html("비밀번호를 입력해주세요.");
					$('#pwSpan').css("display", "block");
					$('#password').focus();
					return false;
				} else if ($('#password').val() != "") {
	<%session.removeAttribute("loginFailed");%>
		$('#idSpan').html("");
					$('#idSpan').css("display", "none");
				}
			});
		});

		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			var cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires="
							+ exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}

		function deleteCookie(cookieName) {
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate() - 1);
			document.cookie = cookieName + "= " + "; expires="
					+ expireDate.toGMTString();
		}

		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = '';
			if (start != -1) {
				start += cookieName.length;
				var end = cookieData.indexOf(';', start);
				if (end == -1)
					end = cookieData.length;
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}
	</script>
</body>
</html>