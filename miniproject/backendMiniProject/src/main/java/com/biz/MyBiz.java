package com.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MyDao;
import  com.vo.*; 

@Service
public class MyBiz {

	@Autowired
	  private MyDao MyDao;	  
		
		public MyDao getMyDao() {
			return MyDao;
		}

		public String insert(MyMember mm) {		  
			return MyDao.insert(mm);
		}
		
		public List<MyMember> select(){
			return MyDao.select();
		}
		public  MyMember searchUser(String id) {
			return MyDao.searchUser(id);
		}
		
		public MyMember searchId(String name) {
			return MyDao.searchId(name);
		}
		
		public String delete(String id) {
			return MyDao.delete(id);
		}
		
		public String update(MyMember mm) {
			return MyDao.update(mm);
		}


}
