package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.biz.MyBiz;
import com.vo.MyMember;


@Controller
public class UserInsert {
	@Autowired
	private MyBiz biz;

	@RequestMapping("/userInsert.do") 
	public ModelAndView insert(MyMember mm){
		String result = null;
		if(biz.searchUser(mm.getId())==null) {
		result=biz.insert(mm);	
		ModelAndView mav=new ModelAndView("user/result", "result" , result);
		return mav; 
		} else {
			ModelAndView mav=new ModelAndView("user/result", "result" , result);
			return mav; 
		}
	}	
}





