package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;

import com.biz.MyBiz;
import com.vo.MyMember;

@Controller
public class UserUpdate {
	@Autowired
	private MyBiz biz;
	
	@Autowired
	private HttpSession session;

	@RequestMapping("update.do") 
	public String userUpdate(MyMember mm){
		biz.update(mm);
		return "redirect:ok.jsp"; 
	}	
}