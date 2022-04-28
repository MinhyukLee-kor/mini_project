package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.MyMember;
@Repository
public class MyDao {
		@Autowired
		private SqlSessionFactory factory;
		public String insert(MyMember mm) {
			SqlSession session = factory.openSession();
			String result = null;
			try {
				int n = session.insert("user.insertUser", mm);
				if (n > 0)
					result = mm.getId();
				session.commit();
			} catch (Exception e) {
				session.rollback();
				e.printStackTrace();
			}finally {
				session.close();
			}
			return result;
		}
		
		public List<MyMember> select() {
			  SqlSession   session=  factory.openSession();
			List<MyMember> list = null;
			try {
				list = session.selectList("user.selectUser");
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return list;
		}

		public MyMember searchUser(String id) { 
			  SqlSession   session=  factory.openSession();
			  MyMember mm = null;
			try {
				mm = session.selectOne("user.searchUser", id);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return mm;
		}
		
		public String delete(String id) {
			SqlSession session = factory.openSession();
			try {
				int n = session.delete("user.deleteId", id);
				if(n>0) {
				session.commit();
				}
			} catch (Exception e) {
				session.rollback();
				e.printStackTrace();
			}finally {
				session.close();
			}
			return "탈퇴 완료";
		}
		
		public MyMember searchId(String name) {
			SqlSession   session=  factory.openSession();
			  MyMember mm = null;
			try {
				mm = session.selectOne("user.searchId", name);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return mm;
		}
		
		public String update(MyMember mm) {
			SqlSession   session=  factory.openSession();
			try {
				int n = session.update("user.updateUser", mm);
				if(n>0) {
					session.commit();
					}
				} catch (Exception e) {
					session.rollback();
					e.printStackTrace();
				}finally {
					session.close();
				}
				return "수정 완료";
			}
		
}
