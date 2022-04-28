package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biz.MyBiz;
import com.vo.MyMember;


@Controller
public class UserSelect {
	@Autowired
	private MyBiz biz;
	
	

	@RequestMapping("/userSelect.do")
	public ModelAndView select(){
		List<MyMember> list=biz.select();
		ModelAndView mav=new ModelAndView("user/list","list",list);
		return mav;
	}
}





