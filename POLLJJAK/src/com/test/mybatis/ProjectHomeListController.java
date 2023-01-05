/*
 * ProjectHomeListController.java 
 * 내 프로젝트 홈
 * 진행 프로젝트, 완료 프로젝트 목록
 * 
 */

package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectHomeListController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value="/projecthomelist.action", method=RequestMethod.GET)
	public String projectCompletelist(ModelMap model, String user_code) 
	{
		
		String result = null;
		
		user_code = "U000000012";
		
		IProjectHomeListDAO dao = sqlSession.getMapper(IProjectHomeListDAO.class);
		
		model.addAttribute("list", dao.list(user_code));
		
		result ="/Project-home.jsp";
		
		return result;
	};
}
