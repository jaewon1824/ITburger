<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<title>카페24 북카페</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	 <!--   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
	 <link rel="stylesheet" href="../css/layout.css" />
	  <link rel="stylesheet" href="../assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
	  <link rel="stylesheet" href="../assets/css/main.css" />
	  <link rel="stylesheet" href="../css/join.css" /> 
  <style type="text/css">
  	.change{
  		background-color: bisque !important;
  	}
  	button.drop{
  		font-size:0.85em;
  		border:none;
  		background-color: transparent;
  		color: gray;
  	}
  </style>
</head>
<body class="is-preload">
	<%@include file="../layout/header.jsp" %>
	<div id="page-wrapper">
    <hr>
  	<div class="cont">
                <form id="form">
                    <ul class="join-wrap">
                        <li>아이디</li>
                        <li>
                            <input class="id-input" type="text" value="${sessionScope.user.userid }" disabled/>
                            <input name="userid" type="hidden" value="${sessionScope.user.userid }"/>
                        </li>
                        <li>이름</li>
                        <li><input id="name" name="name" type="text" value="${sessionScope.user.name}" disabled/></li>
                        <li>생년월일</li>
                        <li id="birthChk"><input id="birth" name="birth" type="text" value="${sessionScope.user.birth }" disabled /></li>
                        <li>성별</li>
                        <li>
                            <input type="radio" id="male" name="gender" value="MALE" disabled>
                            <label for="male">남자</label>
                            <input type="radio" id="female" name="gender" value="FEMALE" disabled>
                            <label for="female">여자</label>
                        </li>
                        <li>전화번호</li>
                        <li><input id="phone" name="phone" type="text"  value="${sessionScope.user.phone}" class="change"/></li>
                        <li>이메일</li>
                        <li><input id="email" name="email" type="text" value="${sessionScope.user.email}" class="change"/></li>
                    </ul>
                    <div class="hidden">
                        <input id="adultYn" name="adultYn" type="hidden"/>
                        <input id="channel" name="channel" type="hidden"/>
                        <input id="favorites" name="favorites" type="hidden" value="${sessionScope.user.favorites }"/>
                    </div>
                    <button type="button" class="join-btn" onclick="modify()">저장</button>
                    <button class="join-btn drop "type="button" onclick="drop()">회원 탈퇴</button>
                </form>
            </div>
    <hr>
    <%@include file="../layout/footer.jsp" %>
</div>    
 <script type="text/javascript">
 	const gender = '${sessionScope.user.gender }'
 	if(gender=='MALE')
 		document.getElementById('male').checked = true
 	else
 		document.getElementById('female').checked = true
 		
		
	function modify() {
       favorites.value =favorites.value + "," +etc.value
        const data = $('#form').serializeObject();

        if(data.email == "") {
          alert("이메일을 입력하세요.")
          return;
        }

        if(!checkEmail(data.email))	{
          alert("이메일 형식이 올바르지 않습니다.");
          return;
        }

        console.log('modify',data);
        $.ajax({
          url        : '../api/modify',
          data       : JSON.stringify(data),
          dataType       : 'text',
          type       : 'post',
         contentType: 'application/json', 
          success : function(res){
            alert(res);
            location.href = "modify";
          },
          error : function(xhr){
            console.log(xhr);
          }
        });
      }

}
	
      function drop() {
    	  const res = prompt('회원 탈퇴를 하시겠습니까? \'회원탈퇴\' 라고 입력해주세요.')
    	  if(res==='회원탈퇴')
    		  location.href='drop'
    	  else
    		  alert('입력하신 글자를 다시 확인하세요.')
      }
     
 </script>
<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/swipper.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/map.daum.js"></script>
			<script src="../assets/js/script.js"></script>
</body>
</html>
<!-- 계정 : minkr , 패스워드 : thGH123!@4 -->
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
>>>>>>> branch 'master' of https://github.com/kimchman3342/ITburger.git
