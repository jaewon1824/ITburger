<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
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
=======
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
			<!-- Header -->
				<div id="header">
					<!-- Logo -->
						<h1><a href="${pageContext.request.contextPath }" id="logo">It <em>Burger</em></a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul id="user">
							<!-- sessionScope.user는 user 로만 써도 됩니다.
								sessionScope는 명시적으로 user가 session 애트리뷰트라고 지정합니다.
							 -->
								<c:if test="${sessionScope.user == null }">		
								<li><a href="${pageContext.request.contextPath }/join"><span>회원가입</span></a></li>
								<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
							</c:if>	
							<c:if test="${sessionScope.user != null }">		
								<li><a href="#"><span>${user.name }님</span></a>
									<ul id="bookcafe">
										<li><a href="${pageContext.request.contextPath }/user/modify">회원정보</a></li>
										<li><a href="#">마이페이지</a></li>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
							</c:if>	
							</ul>
							<ul id="menu">
								<li><a href="${pageContext.request.contextPath }">Home</a></li>								
								<li><a href="${pageContext.request.contextPath }/menu_List">메뉴</a></li>
								<li><a href="${pageContext.request.contextPath }/buy.jsp">구매</a></li>
								<li><a href="${pageContext.request.contextPath }/notice.jsp">공지사항</a></li>
							</ul>
						</nav>
				</div>
>>>>>>> branch 'master' of https://github.com/kimchman3342/ITburger.git
