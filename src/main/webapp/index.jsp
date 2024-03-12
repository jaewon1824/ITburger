<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
	<head>
		<meta charset="UTF-8">
		<title>ItBurger</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="0">
        	<meta name="description" content="" />
        	<meta name="author" content="" />
		<link rel="stylesheet" href="" />
		<link rel="stylesheet" href="" />
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
		
	</head>
	<body class="is-preload">
		<div id="page-wrapper">
			<script>
				/* 로그인 후 글쓰기로 돌아가기 */
				var back = sessionStorage.getItem('back');
				if(back) {
					location.href=back;
					sessionStorage.removeItem('back');
				}
			</script>
				<!-- Header -->
				<%@ include file="./layout/header.jsp" %>
				<!-- Banner -->
				<section id="banner">
						<img alt="" src="images/bookmain.png" width="100%" height="75%" style="object-fit: cover;">
				</section>
				
				<!-- Highlights -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon solid major fa-book"></i>
									<h3>메뉴</h3>
									
								</div>
							</section>
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon solid major fa-award"></i>
									<h3>구매</h3>
								</div>
							</section>
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon solid major fa-frog"></i>
									<h3>공지사항</h3>
								</div>
							</section>
						</div>
					</div>
				</section>
				
				<!-- Gigantic Heading -->
				<section class="wrapper style2">
					<div class="container">
						<header class="major">
							<h2>BEST Pick</h2>
						</header>
					</div>
				</section>
				
				<!-- CTA -->
				<section id="cta" class="wrapper style3">
					<div class="container">
						<header>
								<h3 style="margin:0 auto;">오늘의 메뉴는 햄버거!</h3>
						</header>
					</div>
				</section>
				<div data-num="0" id="datanum"></div>
				
				<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							
							<section class="col-3 col-6-narrower col-12-mobilep">
								<h4>햄버거 프렌차이즈</h4>
								<ul class="links">
									<li><a href="#">맥도날드</a></li>
									<li><a href="#">롯데리아</a></li>
									<li><a href="#">버거킹</a></li>
									<li><a href="#">쉑쉑버거</a></li>
									<li><a href="#">파이브가이즈</a></li>
									<li><a href="#">맘스터치</a></li>
									<li><a href="#">노브랜드</a></li>
								</ul>
							</section>
							
						</div>
					</div>
				</div>
			<!-- Scripts -->
			<script src="assets/js/sample.js"></script>
	</body>
</html>