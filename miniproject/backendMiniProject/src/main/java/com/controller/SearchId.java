package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.biz.MyBiz;
import com.vo.MyMember;

@Controller
public class SearchId {
	@Autowired
	private MyBiz biz;
	

	@RequestMapping("/searchId.do")
	public ModelAndView search(@RequestParam("name") String name){
		MyMember vo1 = biz.searchId(name);
		ModelAndView mav=new ModelAndView("user/view","vo",vo1);
		return mav;
	}
}
