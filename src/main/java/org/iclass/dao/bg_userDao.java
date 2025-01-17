package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.mybatis.SqlSessionBean;
import org.iclass.vo.BG_USER;


public class bg_userDao {
	private static bg_userDao dao = new bg_userDao();
	private bg_userDao() {}
	public static bg_userDao getInstance() {
		return dao;
	}
	
	public void join(bg_userDao user) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		sqlSession.insert("bg_userDao.join",user);
		sqlSession.commit();
		sqlSession.close();
	}
	
	public void modify(bg_userDao user) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		sqlSession.update("bg_userDao.modify",user);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	public BG_USER login(Map<String, String> map) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		BG_USER vo = sqlSession.selectOne("BG_USER.login",map);
		sqlSession.close();
		return vo;
	}
	
	public boolean isExistId(String id) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		BG_USER vo = sqlSession.selectOne("BG_USER.getById",id);
		boolean result=false;
		if (vo!=null) result=true;
		return result;
	}
	
	public BG_USER getById(String id) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		BG_USER vo = sqlSession.selectOne("BG_USER.getById",id);
		return vo;
	}
	
	public BG_USER getUserPassword(String pw) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		BG_USER vo = sqlSession.selectOne("BG_USER.getUserPassword",pw);
		return vo;
	}
	
	public void drop(String id) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		sqlSession.update("BG_USER.drop",id);
		sqlSession.commit();
		sqlSession.close();
	}
	
}
