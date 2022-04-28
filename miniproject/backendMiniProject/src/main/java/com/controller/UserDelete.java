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
public class UserDelete {
		@Autowired
		private MyBiz biz;
		
		@Autowired
		private HttpSession session;

		@RequestMapping("/userDelete.do")
		public ModelAndView delete(@RequestParam(value="id") String id, @RequestParam(value="pw") String pw){
			MyMember mm = biz.searchUser(id);
			String result = null;
			if(mm==null) {
				ModelAndView mav=new ModelAndView("user/delete", "result" , result);
				return mav;
			} else {
				if(id.equals(mm.getId()) && pw.equals(mm.getPw())){
				result = biz.delete(id);
				ModelAndView mav=new ModelAndView("user/delete", "result" , result);
				session.invalidate();
				return mav;
			} else {
				ModelAndView mav=new ModelAndView("user/delete", "result" , result);
				return mav;
			}
		}
//			MyMember mm = biz.searchUser(id);
//			if(mm==null) {
//				return "delete";
//			} else {
//				if(id.equals(mm.getId())) {
//					if(pw.equals(mm.getPw())) {
//						
//						return "delete";
//						
//					} else {
//						return "delete";
//					} 
//				} else {
//					return "delete";
//				}
			}			
}
