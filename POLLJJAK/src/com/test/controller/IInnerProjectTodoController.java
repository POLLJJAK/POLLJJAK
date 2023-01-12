package com.test.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.dto.InnerProjectTodoDTO;
import com.test.mybatis.IInnerProjectTeamManageDAO;
import com.test.mybatis.IInnerProjectTodoDAO;

@Controller
public class IInnerProjectTodoController
{
	@Autowired
	SqlSession sqlSession;
	

	
	// 달력 화면 출력
	@RequestMapping(value="/inner-project-home-todo.action", method=RequestMethod.GET)
	public String todoCalendar(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);

		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
		result = "WEB-INF/view/Inner-Project-home-todo.jsp";
		
		return result;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/calendar.action", method=RequestMethod.GET)
	public List<InnerProjectTodoDTO> todoDataView(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) 
	{
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		IInnerProjectTodoDAO tdm = sqlSession.getMapper(IInnerProjectTodoDAO.class);
		
		List<InnerProjectTodoDTO> list = tdm.tdm(u_p_apply_code);
		

		
		System.out.println();
		
		return list;
	}
	
	
	

	
}
