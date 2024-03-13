package org.iclass.controller.user;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iclass.controller.Controller;
import org.iclass.service.UserService;
import org.iclass.vo.BG_USER;
import org.iclass.vo.DemoMember;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UserJoinController implements Controller{

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		InputStream inputStream = request.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(inputStream , StandardCharsets.UTF_8));
		StringBuffer sb = new StringBuffer();
		String line = null;
		
		while((line = br.readLine()) != null) {
			sb.append(line);
		}
		log.info("json : {}",sb.toString());
		
		ObjectMapper objMapper = new ObjectMapper();
		BG_USER user = objMapper.readValue(sb.toString(), BG_USER.class);
		
		log.info("user : {}",user);
		
		UserService service = new UserService();
		service.join(user);
		
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("회원가입이 완료되었습니다.");
	}

}
