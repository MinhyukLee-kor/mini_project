package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;

import com.biz.MyBiz;
import com.vo.MyMember;


@Controller
public class MyController {
	@Autowired
	private MyBiz biz;
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		if(session.getAttribute("login")!=null) {
			session.invalidate();
		}
		MyMember mm = biz.searchUser(id);
		if(mm!=null) {
			if(id.equals(mm.getId()) && pw.equals(mm.getPw())) {
			session.setAttribute("login", mm);
			return "redirect:ok.jsp";
			}
		} else {
			
			return "redirect:login.jsp";
		}
			return "redirect:login.jsp";
	}	
	
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout() {
		session.invalidate();
		return "redirect:index.jsp";
	}
	
	
//	@RequestMapping(value="/login.do", method=RequestMethod.POST)
//	public String login(@RequestParam(value="id") String id, @RequestParam(value="pw") String pw){
//		MyMember mm = biz.searchUser(id);
//		if(mm==null) {
//			return "redirect:fail.jsp";
//		} else {
//			if(id.equals(mm.getId())) {
//				if(pw.equals(mm.getPw())) {
//					return "redirect:ok.jsp";
//					
//				} else {
//					return "redirect:fail.jsp";
//				} 
//			} else {
//				return "redirect:fail.jsp";
//			}
//		}
//	}
	@RequestMapping("/orange.do")
	public String orange() {
		return "product/orange";
	}
	
	@RequestMapping("/kolabi.do")
	public String kolabi() {
		return "product/kolabi";
	}
}
