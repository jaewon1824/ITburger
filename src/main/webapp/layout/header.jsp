<%@ page language="java" contentType="text/html; charset=UTF-8"
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
								<li><a href="${pageContext.request.contextPath }/user/join"><span>회원가입</span></a></li>
								<li><a href="${pageContext.request.contextPath }/user/login">로그인</a></li>
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
