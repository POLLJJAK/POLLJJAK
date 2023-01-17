package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.InnerProjectSubWorkDTO;
import com.test.mybatis.IInnerProjectSubWorkDAO;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class IInnerProjectSubWorkController
{

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/inner-project-home-subwork.action", method=RequestMethod.GET)
	public String subWorklist(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code, @RequestParam("ph_mainwork_code") String ph_mainwork_code
								, HttpServletRequest request)
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		session.getAttribute("loginCheck");
		//System.out.println(temp);
		
		if (session.getAttribute("loginCheck") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
			
			model.addAttribute("u_p_apply_code", u_p_apply_code);
			model.addAttribute("ph_mainwork_code", ph_mainwork_code);
			
	
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
			
			// 주요업무 제목, 날짜, 진척도, 팀원 가져오기
			IInnerProjectSubWorkDAO dao = sqlSession.getMapper(IInnerProjectSubWorkDAO.class);
			
			model.addAttribute("mainwork_title", dao.mainwork_title(ph_mainwork_code));
			model.addAttribute("mainwork_team", dao.mainwork_team(ph_mainwork_code));
			model.addAttribute("mainwork_percent", dao.mainwork_percent(ph_mainwork_code));
			model.addAttribute("subwork_list", dao.subwork_list(ph_mainwork_code));
			model.addAttribute("subwork_teamComment", dao.subwork_teamComment(ph_mainwork_code));
			model.addAttribute("userName", dao.userName(u_p_apply_code));
			
			result = "WEB-INF/view/Inner-Project-home-subWork.jsp";
		}
		
		return result;
	}
	
	
	
	@RequestMapping(value="/addSubWork.action", method=RequestMethod.POST)
	public String addSubWork(Model model, InnerProjectSubWorkDTO dto, HttpServletRequest request) {
		
		String result = null;
		String u_p_apply_code = request.getParameter("u_p_apply_code");
		String ph_mainwork_code = request.getParameter("ph_mainwork_code");
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		model.addAttribute("ph_mainwork_code", ph_mainwork_code);
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		session.getAttribute("loginCheck");
		//System.out.println(temp);
		
		if (session.getAttribute("loginCheck") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
			
			IInnerProjectSubWorkDAO dao = sqlSession.getMapper(IInnerProjectSubWorkDAO.class);
			
			dao.addSubwork(dto);
			
			result = "redirect:inner-project-home-subwork.action";
		}
		
		return result;
	}
	
	
	@RequestMapping(value="/checkSubWork.action", method=RequestMethod.GET)
	public String checkSubWork(Model model, HttpServletRequest request) {
		
		String result = null;

		String ph_subwork_code = request.getParameter("ph_subwork_code");
		String u_p_apply_code = request.getParameter("u_p_apply_code");
		String ph_mainwork_code = request.getParameter("ph_mainwork_code");
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		model.addAttribute("ph_mainwork_code", ph_mainwork_code);
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		session.getAttribute("loginCheck");
		//System.out.println(temp);
		
		if (session.getAttribute("loginCheck") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
			
			IInnerProjectSubWorkDAO dao = sqlSession.getMapper(IInnerProjectSubWorkDAO.class);
			
			dao.completeSubwork(ph_subwork_code);
			
			System.out.println(u_p_apply_code);
			System.out.println(ph_mainwork_code);
			
			result = "redirect:inner-project-home-subwork.action";
		}
		
		return result;
	}
	
	
	
	
	
	
}
