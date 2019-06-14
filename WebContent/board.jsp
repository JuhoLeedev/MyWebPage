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
	color: #2E2E2E;
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
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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

	<div class="container">
		<table class="table table-striped"
			style="text-align: center; border: 1px solid #dddddd;">
			<thead>
				<tr>
					<th class="col-sm-1 col-md-1 text-center"
						style="background-color: #eeeeee;">번호</th>
					<th class="col-sm-6 col-md-6 text-center"
						style="background-color: #eeeeee;">제목</th>
					<th class="col-sm-2 col-md-2 text-center"
						style="background-color: #eeeeee;">작성자</th>
					<th class="col-sm-2 col-md-2 text-center"
						style="background-color: #eeeeee;">작성일</th>
					<th class="col-sm-1 col-md-1 text-center"
						style="background-color: #eeeeee;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
					BoardDAO boardDao = new BoardDAO();
					int maxPage = boardDao.maxPage();
					List<BoardVO> boardList = boardDao.getList(pageNumber);
					for (int i = 0; i < boardList.size(); i++) {
				%>
				<tr>
					<td class="text-center"><%=boardList.get(i).getBcode()%></td>
					<td class="text-left"><a
						href="hits.do?bcode=<%=boardList.get(i).getBcode()%>">
							<div style="width: 100%"><%=boardList.get(i).getTitle()%></div>
					</a></td>
					<td class="text-center"><%=boardList.get(i).getUserID()%></td>
					<td class="text-center"><%=boardList.get(i).getBdate()%></td>
					<td class="text-center"><%=boardList.get(i).getHits()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<input type="button" onclick="writeBtn();"
			class="btn btn-primary pull-right" value="글쓰기">
	</div>
	<div class="container text-center">
		<ul class="pagination">
			<% if (pageNumber <= 5){
					for(int i=1; i<pageNumber; i++){
			%>
						<li><a href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%		} %>
					<li class="active"><a href="#" class="btn btn-success"><%=pageNumber%></a></li>
			<% 		if(maxPage>9){
						for (int i = pageNumber + 1; i <= pageNumber + 4; i++) { %>
							<li><a href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%			}
			%>
						<li><a href="board.jsp?pageNumber=<%=pageNumber + 5%>" class="btn btn-success btn-arraw-Right">다음</a></li>
			<% 
					} else if(maxPage<=9){
						for(int i = pageNumber+1; i<=maxPage; i++){ %>
							<li><a	href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%			}
					}
				}
				else if (pageNumber > 5) {
			%>
					<li><a href="board.jsp?pageNumber=<%=pageNumber - 5%>" class="btn btn-success btn-arraw-left">이전</a></li>
			<%
					for (int i = pageNumber - 4; i < pageNumber; i++) {
			%>
						<li><a href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%
					}
			%>
					<li class="active"><a href="#" class="btn btn-success"><%=pageNumber%></a></li>
			<%
					if (pageNumber + 4 < maxPage) {
						for (int i = pageNumber + 1; i <= pageNumber + 4; i++) {
			%>
							<li><a href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%
						}
			%>
						<li><a href="board.jsp?pageNumber=<%=pageNumber + 5%>" class="btn btn-success btn-arraw-Right">다음</a></li>
			<%
					} else if (pageNumber + 4 >=maxPage) {
						for(int i = pageNumber + 1; i <= maxPage; i++) {
			%>
							<li><a href="board.jsp?pageNumber=<%=i%>" class="btn btn-success"><%=i%></a></li>
			<%			}
					}
				}
			%>
		</ul>
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
		function writeBtn(){
			var userID = "<%=userID%>";
			if (userID == "null") {
				window.location.href = "login.jsp";
			} else {
				window.location.href = "board_write.jsp";
			}
		}
	</script>
</body>
</html>