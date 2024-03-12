package org.iclass.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.iclass.vo.BG_USER;

import org.iclass.mybatis.SqlSessionBean;

public class bg_userDao {
	private static bg_userDao dao = new bg_userDao(); 
	private bg_userDao() {};
	public static bg_userDao getInstance() {
		return dao;
	}
	
	public BG_USER login(Map<String, String> map) {
		SqlSession sqlSession = SqlSessionBean.getSession();
		BG_USER vo = sqlSession.selectOne("BG_USER.login",map);
		sqlSession.close();
		return vo;
	}
}
