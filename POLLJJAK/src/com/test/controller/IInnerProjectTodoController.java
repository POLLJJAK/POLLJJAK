package com.test.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.mybatis.CalenService;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class IInnerProjectTodoController
{
	@Autowired
	SqlSession sqlSession;
	
	@Autowired(required = false)
	private CalenService service;
	
	
	// 달력 화면 출력
	@RequestMapping(value="/inner-project-home-todo.action", method=RequestMethod.GET)
	public String todoCalendar(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);

		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
		model.addAttribute("list", service.calenList());
		
		result = "WEB-INF/view/Inner-Project-home-todo.jsp";
		
		return result;
	}
	
	
	
	
}
