<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
</body>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>IT burger</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- 		<link rel="stylesheet" href="../css/bookmodal.css" />	
		<link rel="stylesheet" href="../css/layout.css" />
		<link rel="stylesheet" href="../assets/css/style.css" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../css/booklist.css">  -->
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<%@ include file="../layout/header.jsp" %>
			<!-- Main -->
			<section id="booklist">
				<h3>메뉴</h3>
				<p>판매 중인 메뉴입니다.</p>
				<hr style="color:white;">
					<c:if test="${user !=null }">
						<div style="text-align: center;">
						<a href="form">판매 등록</a></div>
					</c:if>			
				<div id="mainarea">
					<c:forEach var="bo" items="${menuList }">
					<div class="gallery bookcase">
						<div style="height:80%;">
						<%-- 		<img src="../images/bookcase/${bo.cover }" alt="${bo.title }"> --%>
						<img src="/upload/${bo.img_name }" alt="${bo.menu_name }">
							<!-- todo : 사용자가 파일 (이미지,텍스트 등)을 업로드 했을 때
								        서버 컴퓨터 특정 폴더에 저장되도록 하며
								        그 때에는 src 속성값도 url 변경합니다.
							 -->
						</div>
						<div  class="intro">	
							<!-- 결제에 필요한 모든 정보를 data-all 사용자 속성으로 저장 -->
							<a data-all="${bo.menu_code},${bo.menu_name},${bo.price}"><i class="fa-regular fa-circle-play"></i> 구매하기</a>

							<div>
								<c:out value="${bo.menu_name }"/> (<fmt:formatNumber value="${bo.price }" pattern="###,###"/> 원)
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</section>
				
			<%@ include file="../layout/footer.jsp" %>
			<div data-num="3" id="datanum"></div>
		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<!-- <script src="../js/nav.js"></script> -->
			<!-- 부트스트랩 - 모달 사용 -->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
			<!-- 비동기 http 통신 axios api-->  <!-- 비동기 통신을 위한 자바스크립트 api -->
			<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
			<!-- 결제위젯 SDK 추가 -->
  			<script src="https://js.tosspayments.com/v1/payment-widget"></script>

	<script>
		document.querySelector("#mainarea").addEventListener('click',function(evt){
			evt.preventDefault()			//a 태그 등 pagination 안에 있는 기본 클릭 동작을 중지
			//evt.stopPropagation()			//클릭 이벤트는 자식 또는 부모요소에 전달되는데 그것을 중지
			const target = evt.target
			if(target.tagName !== 'A') {return}			

			let yn
			console.log("user.userid",'${user}' )
			
			if('${user.userid}'==''){
				yn=confirm('구매는 로그인이 필요합니다. 로그인 하시겠습니까?')
				/* 로그인 후 글쓰기로 돌아가기 */
				if(yn) {
					sessionStorage.setItem('back', 'menu/list');
					location.href='../login'  // 로그인 후 글쓰기 url로 redirect 하기 위한 파라미터
				}
			}else {
				// 메뉴옵션 선택 페이지로 이동하기
			}
		})
		
</script>			
	</body>
>>>>>>> branch 'master' of https://github.com/kimchman3342/ITburger.git
</html>