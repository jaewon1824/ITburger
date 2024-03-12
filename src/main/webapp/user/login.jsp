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

=======
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>IT burger</title>
</head>
<body>
<div id="page-wrapper">
<%-- 	<%@ include file="./layout/header.jsp" %> --%>
<div class="mycol-2" style="width:450px;">
		</div>
		<div class="mycol-2" style="width:450px;">
			<img alt="" width="100%;" height="70%" style="object-fit:cover;align-content: right;" src="../asset/images/burger logo.png">
		</div>
		<div class="mycol-2" style="width:600px;">				
				<div class="login">
				  <h2>회원 로그인</h2>
				  <label id="incorrect">계정 정보가 일치하지 않습니다.</label>
				  <form action="login" method="post">
				    <div class="mb-3">
				      <label for="userid">아이디:</label>
				      <input class="form-control" id="USER_ID" placeholder="아이디를 입력하세요." type="text" name="USER_ID" required>
				    </div>
				    <div class="mb-3">
				      <label for="pwd">패스워드:</label>
				      <input type="password" class="form-control" id="USER_PASSWORD" placeholder="패스워드를 입력하세요." 
				      		name="USER_PASSWORD" required>
				    </div>
				    <div class="form-check mb-3">
				      <label class="form-check-label">
				        <input class="form-check-input" type="checkbox" name="remember"> 자동로그인
				      </label>
				    </div>
				    <button class="btn btn-primary">로그인</button>
				  <%--   <button type="button" class="btn btn-primary" 
				    		onclick="location.href='${pageContext.request.contextPath}'">HOME</button> --%>
				  </form>
				  <hr>
				  <a href="join" class="f-sm">아직 회원이 아니시면 회원 가입을 해주세요.</a><br>
            	  <a href="help" class="f-sm">😑 비밀번호 찾기가 필요하신가요?</a>
				</div>
		</div>
</div>
>>>>>>> branch 'master' of https://github.com/kimchman3342/ITburger.git
</body>
</html>