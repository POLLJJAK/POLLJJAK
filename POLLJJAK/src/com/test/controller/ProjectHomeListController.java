/*
 * ProjectHomeListController.java 
 * 내 프로젝트 홈
 * 진행 프로젝트, 완료 프로젝트 목록
 * 
 */

package com.test.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.mybatis.IProjectHomeListDAO;

@Controller
public class ProjectHomeListController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value="/projecthomelist.action", method=RequestMethod.GET)
	public String projectRunlist(ModelMap model, @RequestParam("u_code") String u_code) 
	{
		String result = null;
		
		// 김태민 유저 U000000012
		// 한은영 유저 U000000001

		IProjectHomeListDAO dao = sqlSession.getMapper(IProjectHomeListDAO.class);
		
		model.addAttribute("pj_run_list", dao.pj_run_list(u_code));
		model.addAttribute("pj_complete_list", dao.pj_complete_list(u_code));
		
		result ="/Project-home.jsp";
		
		return result;
	};
	
}
