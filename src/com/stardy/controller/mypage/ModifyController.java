package com.stardy.controller.mypage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.stardy.entity.Member;
import com.stardy.service.MemberService;
import com.stardy.util.Logger;

@WebServlet("/mypage/modify")
public class ModifyController extends HttpServlet{

	MemberService memberService = new MemberService();
	Logger log = new Logger();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//request.getRequestDispatcher("/WEB-INF/views/mypage/modify.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nickname = request.getParameter("nickname");
		int id = (int) request.getSession().getAttribute("id");
		String password = request.getParameter("password");
		
		Member member = memberService.get(id);
		
		if(!password.equals("") && password != null)
			member.setPassword(password);
		
		member.setNickname(nickname);
		
		memberService.modify(member);
		
		response.sendRedirect("/mypage/modify.jsp");
	}
	
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String profile = request.getParameter("profile");
		
		StringBuilder sb = new StringBuilder();
		BufferedReader br = request.getReader();
		String line = "";
		
		while((line = br.readLine()) != null)
			sb.append(line);

		JsonParser parser = new JsonParser();
		JsonObject obj =  (JsonObject) parser.parse(sb.toString());
		
		String status = obj.get("status").getAsString();
		int id = (int) request.getSession().getAttribute("id");
		
		Member member = memberService.get(id);
		
		member.setStatus(status);
		log.info(member.toString());
		memberService.modify(member);
	}
}
