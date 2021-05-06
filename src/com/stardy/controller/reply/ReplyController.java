package com.stardy.controller.reply;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.stardy.entity.Reply;
import com.stardy.service.ReplyService;
import com.stardy.util.Logger;

@WebServlet("/replies/*")
public class ReplyController extends HttpServlet{

	ReplyService replyService = new ReplyService();
	Logger log = new Logger();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String[] paths = request.getPathInfo().split("/");
		
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int bid = Integer.parseInt(paths[1]);
		int page = Integer.parseInt(paths[2]);
		
		log.info("bid : " + bid + ", page : " + page);
		
		List<Reply> list = replyService.getList(bid, page);
		JSONArray array = new JSONArray();
		
		list.stream().forEach(reply -> {
			JSONObject obj = new JSONObject();
			obj.put("content", reply.getContent());
			obj.put("writer", reply.getWriter());
			obj.put("rid", reply.getRid());
			obj.put("bid", reply.getBid());
			obj.put("regDate", reply.getRegDate().toString());
			
			array.add(obj);
		});
		
		out.println(array);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		log.info(request.getPathInfo());
		if(!request.getPathInfo().split("/") [1].equals("add")) return;
		
		/* JSON 데이터 받아오는 과정 */
		StringBuffer sb = new StringBuffer();
		BufferedReader br = request.getReader();
		String line = null;
		
		while((line = br.readLine()) != null) {
			sb.append(line);
		}
		log.info(sb.toString());
		/* JSON 데이터 받아오는 과정 */
		
		
		JSONParser parser = new JSONParser();
		try {
			JSONObject obj = (JSONObject) parser.parse(sb.toString());
			String content = (String) obj.get("content");
			String writer = (String) request.getSession().getAttribute("email");
			int bid = Integer.parseInt(String.valueOf(obj.get("bid")));
			
			Reply reply = new Reply(writer, content, bid);
			
			replyService.register(reply);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}
