<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>부트시스템 회원가입</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/resources/image/icon/HalfLife.ico" rel="shortcuticon">
<!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
<script src="js/respond.js"></script>
</head>
<body>

	<div class="container">
		<!-- 좌우측의 공간 확보 -->
		<!-- 헤더 들어가는 부분 -->

		<div class="row">
			<p></p>
			<div class="col-md-6">
				<a class="navbar-brand" href="index.jsp"><img id="bsLogo"
					src="images/bslogoBlack.png" alt="Logo" height="35px" /></a>
			</div>
		</div>
		<!--// 헤더 들어가는 부분 -->
		<!-- 모달창 -->
		<div class="modal fade" id="defaultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">알림</h4>
					</div>
					<div class="modal-body">
						<p class="modal-contents"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<!--// 모달창 -->
		<hr />
		<!-- 본문 들어가는 부분 -->



		<form class="form-horizontal" role="form" method="post" action="signUp.do">
			<!-- action="javascript:alert( 'success!' );" -->
			<div class="form-group">
				<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
				<div class="col-lg-10" id="provision">
					<textarea class="form-control" rows="8" style="resize: none" readonly>
약관동의
                    </textarea>
					<div class="radio">
						<label> <input type="radio" id="provisionYn"
							name="provisionYn" value="Y" autofocus="autofocus">
							동의합니다.
						</label>&nbsp;&nbsp;&nbsp; <label> <input type="radio"
							id="provisionYn" name="provisionYn" value="N" checked>
							동의하지 않습니다.
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
				<div class="col-lg-10" id="memberInfo">
					<textarea class="form-control" rows="8" style="resize: none" readonly>
개인정보의 항목 및 수집방법
                    </textarea>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn"
							name="memberInfoYn" value="Y"> 동의합니다.
						</label>&nbsp;&nbsp;&nbsp; <label> <input type="radio"
							id="memberInfoYn" name="memberInfoYn" value="N" checked>
							동의하지 않습니다.
						</label>
					</div>
				</div>
			</div>
			<div class="form-group" id="divId">
				<label for="inputId" class="col-lg-2 control-label">아이디</label>
				<div class="col-lg-5">
					<input type="text" class="form-control onlyAlphabetAndNumber"
						id="id" data-rule-required="true" name="userId"
						placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
					<span id="idSpan" style="color: #999; display: none"></span>
				</div>
				<div class="col-lg-2">
					<button type="button" class="btn btn-default btn-sm"
						onclick="idCheck()">아이디 중복 확인</button>
				</div>
			</div>
			<div class="form-group" id="divPassword">
				<label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
				<div class="col-lg-5">
					<input type="password" class="form-control" id="password"
						name="userPw" data-rule-required="true" placeholder="비밀번호"
						maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-2 control-label">비밀번호
					확인</label>
				<div class="col-lg-5">
					<input type="password" class="form-control" id="passwordCheck" name="userPwCheck"
						data-rule-required="true" placeholder="비밀번호 확인" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divName">
				<label for="inputName" class="col-lg-2 control-label">이름</label>
				<div class="col-lg-5">
					<input type="text" class="form-control onlyHangul" id="name" name="userName"
						data-rule-required="true" placeholder="한글만 입력 가능합니다."
						maxlength="15">
				</div>
			</div>

			<div class="form-group" id="divEmail">
				<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
				<div class="col-lg-5">
					<input type="email" class="form-control" id="email" name="userEmail"
						data-rule-required="true" placeholder="이메일" maxlength="40">
				</div>
			</div>
			<div class="form-group" id="divPhoneNumber">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
					번호</label>
				<div class="col-lg-5">
					<input type="tel" class="form-control onlyNumber" id="phoneNumber" name="userPhone"
						data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."
						maxlength="11">
				</div>
			</div>
			<div class="form-group" id="divAddress">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">주소</label>
				<div class="col-lg-5">
					<input type="text" class="form-control onlyNumber" id="postcode" name="userPostcode"
						placeholder="우편번호"> <input type="text"
						class="form-control" id="roadAddress" name="userRoadAddr" placeholder="도로명주소">
					<span id="guide" style="color: #999; display: none"></span> <input
						type="text" class="form-control" id="detailAddress" name="userDetailAddress"
						placeholder="상세주소">
				</div>
				<div class="col-lg-5">
					<button type="button" class="btn btn-default"
						onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
					<br> <input type="text" class="form-control" id="jibunAddress" name="userJibunAddr"
						placeholder="지번주소"> <input type="text"
						class="form-control" id="extraAddress" name="userExtraAddr" placeholder="참고항목">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> <input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="Y" checked>
						동의합니다.
					</label> <label class="radio-inline"> <input type="radio"
						id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS
					수신여부</label>
				<div class="col-lg-10">
					<label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="Y" checked>
						동의합니다.
					</label> <label class="radio-inline"> <input type="radio"
						id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지
						않습니다.
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-primary">회원가입</button>
				</div>
			</div>
		</form>

		<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
		<script src="js/bootstrap.min.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
	 		$(function() {
				//모달을 전역변수로 선언
				var modalContents = $(".modal-contents");
				var modal = $("#defaultModal");

				$('.onlyAlphabetAndNumber').keyup(function(event) {
					if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
						var inputVal = $(this).val();
						$(this).val($(this).val().replace(/[^_a-z0-9]/gi, '')); //_(underscore), 영어, 숫자만 가능
					}
				});

				$(".onlyHangul").keyup(function(event) {
					if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
						var inputVal = $(this).val();
						$(this).val(inputVal.replace(/[a-z0-9]/gi, ''));
					}
				});

				$(".onlyNumber").keyup(function(event) {
					if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
						var inputVal = $(this).val();
						$(this).val(inputVal.replace(/[^0-9]/gi, ''));
					}
				});

				//------- 검사하여 상태를 class에 적용
				$('#id').keyup(function(event) {

					var divId = $('#divId');

					if ($('#id').val() == "") {
						divId.removeClass("has-success");
						divId.addClass("has-error");
					} else {
						divId.removeClass("has-error");
						divId.addClass("has-success");
					}
				});

				$('#password').keyup(function(event) {

					var divPassword = $('#divPassword');

					if ($('#password').val() == "") {
						divPassword.removeClass("has-success");
						divPassword.addClass("has-error");
					} else {
						divPassword.removeClass("has-error");
						divPassword.addClass("has-success");
					}
				});

				$('#passwordCheck').keyup(function(event) {

					var passwordCheck = $('#passwordCheck').val();
					var password = $('#password').val();
					var divPasswordCheck = $('#divPasswordCheck');

					if ((passwordCheck == "") || (password != passwordCheck)) {
						divPasswordCheck.removeClass("has-success");
						divPasswordCheck.addClass("has-error");
					} else {
						divPasswordCheck.removeClass("has-error");
						divPasswordCheck.addClass("has-success");
					}
				});

 				$('#name').keyup(function(event) {

					var divName = $('#divName');

					if ($.trim($('#name').val()) == "") {
						divName.removeClass("has-success");
						divName.addClass("has-error");
					} else {
						divName.removeClass("has-error");
						divName.addClass("has-success");
					}
				}); 

				$('#email').keyup(function(event) {

					var divEmail = $('#divEmail');

					if ($.trim($('#email').val()) == "") {
						divEmail.removeClass("has-success");
						divEmail.addClass("has-error");
					} else {
						divEmail.removeClass("has-error");
						divEmail.addClass("has-success");
					}
				});

				$('#phoneNumber').keyup(function(event) {

					var divPhoneNumber = $('#divPhoneNumber');

					if ($.trim($('#phoneNumber').val()) == "") {
						divPhoneNumber.removeClass("has-success");
						divPhoneNumber.addClass("has-error");
					} else {
						divPhoneNumber.removeClass("has-error");
						divPhoneNumber.addClass("has-success");
					}
				});

				$('#postcode').keyup(function(event) {

					var divAddress = $('#divAddress');

					if ($.trim($('#postcode').val()) == "") {
						divAddress.removeClass("has-success");
					} else {
						divAddress.removeClass("has-error");
						divAddress.addClass("has-success");
					}
				});

				//------- validation 검사
 				$("form")
						.submit(
								function(event) {

									var provision = $('#provision');
									var memberInfo = $('#memberInfo');
									var divId = $('#divId');
									var divPassword = $('#divPassword');
									var divPasswordCheck = $('#divPasswordCheck');
									var divName = $('#divName');
									var divNickname = $('#divNickname');
									var divEmail = $('#divEmail');
									var divPhoneNumber = $('#divPhoneNumber');
									var divAddress = $('#divAddress');

									//회원가입약관
									if ($('#provisionYn:checked').val() == "N") {
										modalContents
												.text("회원가입약관에 동의해 주시기 바랍니다."); //모달 메시지 입력
										modal.modal('show'); //모달 띄우기

										provision.removeClass("has-success");
										provision.addClass("has-error");
										$('#provisionYn').focus();
										return false;
									} else {
										provision.removeClass("has-error");
										provision.addClass("has-success");
									}

									//개인정보취급방침
									if ($('#memberInfoYn:checked').val() == "N") {
										modalContents
												.text("개인정보취급방침에 동의해 주시기 바랍니다.");
										modal.modal('show');

										memberInfo.removeClass("has-success");
										memberInfo.addClass("has-error");
										$('#memberInfoYn').focus();
										return false;
									} else {
										memberInfo.removeClass("has-error");
										memberInfo.addClass("has-success");
									}

									//아이디 검사
									if ($('#id').val() == "") {
										modalContents.text("아이디를 입력해주세요.");
										modal.modal('show');

										divId.removeClass("has-success");
										divId.addClass("has-error");
										$('#id').focus();
										return false;
									}
									else if (idChecked == false){
										modalContents.text("아이디 중복확인을 해주세요.");
										modal.modal('show');

										divId.removeClass("has-success");
										divId.addClass("has-error");
										$('#id').focus();
										return false;
									}else {
										divId.removeClass("has-error");
										divId.addClass("has-success");
									}

									//비밀번호 검사
									if ($('#password').val() == "") {
										modalContents.text("비밀번호를 입력해주세요.");
										modal.modal('show');

										divPassword.removeClass("has-success");
										divPassword.addClass("has-error");
										$('#password').focus();
										return false;
									} else {
										divPassword.removeClass("has-error");
										divPassword.addClass("has-success");
									}

									//비밀번호 확인
									if ($('#passwordCheck').val() == "") {
										modalContents
												.text("비밀번호 확인을 위해 다시 한번 입력해주세요.");
										modal.modal('show');

										divPasswordCheck
												.removeClass("has-success");
										divPasswordCheck.addClass("has-error");
										$('#passwordCheck').focus();
										return false;
									} else {
										divPasswordCheck
												.removeClass("has-error");
										divPasswordCheck
												.addClass("has-success");
									}

									//패스워드 비교
									if ($('#password').val() != $(
											'#passwordCheck').val()
											|| $('#passwordCheck').val() == "") {
										modalContents.text("비밀번호가 일치하지 않습니다.");
										modal.modal('show');

										divPasswordCheck
												.removeClass("has-success");
										divPasswordCheck.addClass("has-error");
										$('#passwordCheck').focus();
										return false;
									} else {
										divPasswordCheck
												.removeClass("has-error");
										divPasswordCheck
												.addClass("has-success");
									}

									//이름
									if ($('#name').val() == "") {
										modalContents.text("이름을 입력해주세요.");
										modal.modal('show');

										divName.removeClass("has-success");
										divName.addClass("has-error");
										$('#name').focus();
										return false;
									} else {
										divName.removeClass("has-error");
										divName.addClass("has-success");
									}

									//이메일
									if ($('#email').val() == "") {
										modalContents.text("이메일을 입력해주세요.");
										modal.modal('show');

										divEmail.removeClass("has-success");
										divEmail.addClass("has-error");
										$('#email').focus();
										return false;
									} else {
										divEmail.removeClass("has-error");
										divEmail.addClass("has-success");
									}

									//휴대폰 번호
									if ($('#phoneNumber').val() == "") {
										modalContents.text("전화번호를 입력해주세요.");
										modal.modal('show');

										divPhoneNumber
												.removeClass("has-success");
										divPhoneNumber.addClass("has-error");
										$('#phoneNumber').focus();
										return false;
									} else {
										divPhoneNumber.removeClass("has-error");
										divPhoneNumber.addClass("has-success");
									}


								});
				 
			});
 
			function sample4_execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var roadAddr = data.roadAddress; // 도로명 주소 변수
								var extraRoadAddr = ''; // 참고 항목 변수

								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraRoadAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraRoadAddr += (extraRoadAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraRoadAddr !== '') {
									extraRoadAddr = ' (' + extraRoadAddr + ')';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('postcode').value = data.zonecode;
								document.getElementById("roadAddress").value = roadAddr;
								document.getElementById("jibunAddress").value = data.jibunAddress;

								// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
								if (roadAddr !== '') {
									document.getElementById("extraAddress").value = extraRoadAddr;
								} else {
									document.getElementById("extraAddress").value = '';
								}

								var guideTextBox = document
										.getElementById("guide");
								// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
								if (data.autoRoadAddress) {
									var expRoadAddr = data.autoRoadAddress
											+ extraRoadAddr;
									guideTextBox.innerHTML = '(예상 도로명 주소 : '
											+ expRoadAddr + ')';
									guideTextBox.style.display = 'block';

								} else if (data.autoJibunAddress) {
									var expJibunAddr = data.autoJibunAddress;
									guideTextBox.innerHTML = '(예상 지번 주소 : '
											+ expJibunAddr + ')';
									guideTextBox.style.display = 'block';
								} else {
									guideTextBox.innerHTML = '';
									guideTextBox.style.display = 'none';
								}
							}
						}).open();
			}
			
			
			var xmlHttp = new XMLHttpRequest();
			var idSpan = document.getElementById("idSpan");
			var idChecked = false;
			
			function idCheck(){
				if (document.getElementById("id").value == ""){
					idSpan.innerHTML = "아이디를 입력하세요.";
					idSpan.style.color = "red";
					idSpan.style.display = "block";
				}
				else{
				xmlHttp.open("Post", "./idCheck.do?userId=" + encodeURIComponent(document.getElementById("id").value), true);
				xmlHttp.onreadystatechange = searchProcess;
				xmlHttp.send(null);
				}
			}
			function searchProcess(){
				if(xmlHttp.readyState == 4 && xmlHttp.status == 200) {
					var object = eval('(' + xmlHttp.responseText + ')');
					var result = object.result;
					if (result == 1){
						idSpan.innerHTML = "이미 사용중인 아이디입니다.";
						idSpan.style.color = "red";
						idSpan.style.display = "block";
						idChecked = false;
						document.getElementById("divId").classList.remove("has-success");
						document.getElementById("divId").classList.add("has-error");
					}
					else if (result == 0){
						idSpan.innerHTML = "멋진 아이디네요!";
						idSpan.style.color = "green";
						idSpan.style.display = "block";
						idChecked = true;
						document.getElementById("divId").classList.remove("has-error");
						document.getElementById("divId").classList.add("has-success");
					}
				}
			}
			
		</script>

	
		<!--// 본문 들어가는 부분 -->
		<hr />
		<!-- 푸터 들어가는 부분 -->

		<div>
			<p class="text-center">
				<small><strong> BootSystem</strong></small><br> <small>대표
					: 이주호 ㆍ 주소 : 대한민국 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 032-123-4567</small><br>
				<small>Copyright &copy; 2019 BootSystem Corporation</small>
			</p>
		</div>
		<!--// 푸터 들어가는 부분 -->
	</div>
</body>
</html>