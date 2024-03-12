package org.iclass.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iclass.controller.Controller;
import org.iclass.service.MemberService;
import org.iclass.vo.BG_USER;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//new RequestKeyValue("/login", "POST")
public class LoginActionController implements Controller {
	private static final Logger logger = LoggerFactory.getLogger(LoginActionController.class);
	@Override
	public void handle(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		HttpSession session = request.getSession();
		//할일 : dao 로 id,password 확인하는 메소드 실행
		Map<String, String> map = new HashMap<>();
		map.put("user_id", id);
		map.put("user_password", password);
		MemberService service = new MemberService();
		BG_USER user = service.login(map);
		
		String url= request.getContextPath();
		if(user != null) {		
			//로그인 성공. 로그인 사용자 정보를 세션 애트리뷰트로 저장.
			session.setAttribute("user",user);  //핵심.
			url =  request.getContextPath();
		}else {			//로그인 실패 정보 쿠키에 저장하기
			Cookie cookie = new Cookie("incorrect","y");
			cookie.setPath("/");		//쿠키 저장 경로
			response.addCookie(cookie);
			url="login";
		}
		
		response.sendRedirect(url);		
	}

}
