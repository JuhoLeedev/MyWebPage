<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardVO"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="css/board.css">
<script src="js/respond.js"></script>
<style type="text/css">
a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	text-decoration: none;
}	
.jumbotron{
	background-color: #424242;
	color:white;
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
		int bcode = 0;
		if (request.getParameter("bcode") != null) {
			bcode = Integer.parseInt(request.getParameter("bcode"));
		}
		BoardVO boardVo = null;
		if (bcode != 0) {
			BoardDAO boardDao = new BoardDAO();
			boardVo = boardDao.searchBoard(bcode);
		} else {
	%>
	<script>
		alert('이미 삭제되었거나 찾을 수 없는 게시글입니다.');
		window.history.back();
	</script>
	<%
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
						<li><a href="userManage.jsp">회원관리</a></li>
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
							<li style="text-align: center;"><a href="myCart.jsp">내 장바구니</a></li>
							<li style="text-align: center;"><a href="myPurchase.jsp">내 구매 목록</a></li>
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

	<!--점보트론==============  -->
	<div class="container-fluid">
		<div class="jumbotron">
			<h1 class="text-center">커뮤니티</h1>
		</div>
	</div>

	<div class="container-fluid ViewArea">
		<div class="container Title">
			<blockquote id="board_view_title">
				<p>
					<strong> <text class="board_title_text"><%=boardVo.getTitle()%></text>
					</strong>
				</p>
				<p>
					<text style="font-size:13px;">작성자: <%=boardVo.getUserID()%>
					| 등록일: <%=boardVo.getBdate()%> | 조회수: <%=boardVo.getHits()%></text>
				</p>
			</blockquote>
		</div>
		<div class="container body DiscripTionArea">
			<p><%=boardVo.getBwrite()%></p>
		</div>
		<%
			if (userID != null) {
				if (userID.equals(boardVo.getUserID())) {
		%>
		<div class="container text-right">
			<p>
				<a href="board_write.jsp?bcode=<%=boardVo.getBcode()%>"><button
						type="button" class="btn btn-primary">수정하기</button></a> <a
					href="deleteBoard.do?bcode=<%=boardVo.getBcode()%>"
					onclick="
					return delchk();"><button type="button"
						class="btn btn-danger">삭제</button></a>
			</p>
		</div>
		<%
			} else if (admin == 1) {
		%>
		<div class="container text-right">
			<p>
				<a href="deleteBoard.do?bcode=<%=boardVo.getBcode()%>"
					onclick="
					return delchk();"><button type="button"
						class="btn btn-danger">삭제</button></a>
			</p>
		</div>
		<%
			}
			}
		%>
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
	<script>
		function delchk() {
			return confirm("정말로 삭제하시겠습니까?");
		}
	</script>
</body>
</html>