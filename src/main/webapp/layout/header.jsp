<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT BURGER HEADER</title>
<link rel="shortcut icon" href="#">
<style type="text/css">
.bg_nb_wrap{
	display: flex;
}
.head_menu {
  display: flex;
  flex-wrap: wrap;
  padding: 0;
  margin: 0;
  list-style: none;
}

.header_menu {
  padding: 0;
  margin: 0;
}
</style>
</head>
<body>
	<header id="burger_header">
		<div class="wrap">
			<h1><a href="${pageContext.request.contextPath }" id="logo">IT<em>BURGER</em></a></h1>
			<nav id="burger_nb">
				<div class="bg_nb_wrap">
					<ul class="head_menu">
						<li class="header_menu"><a href=""><span>버거 메뉴</span></a>&nbsp;</li>
						<li class="header_menu"><a href=""><span>공지사항</span></a>&nbsp;</li>
						<li class="header_menu"><a href=""><span>사이드 메뉴</span></a>&nbsp;</li>
						<li class="header_menu"><a href=""><span>회원가입</span></a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
</body>
</html>