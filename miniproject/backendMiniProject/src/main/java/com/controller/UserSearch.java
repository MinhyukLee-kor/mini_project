package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.biz.MyBiz;
import com.vo.MyMember;

@Controller
public class UserSearch {
	@Autowired
	private MyBiz biz;
	

	@RequestMapping("/userSearch.do")
	public ModelAndView search(@RequestParam("id") String id){
		MyMember vo1 = biz.searchUser(id);
		ModelAndView mav=new ModelAndView("user/view","vo",vo1);
		return mav;
	}
}





