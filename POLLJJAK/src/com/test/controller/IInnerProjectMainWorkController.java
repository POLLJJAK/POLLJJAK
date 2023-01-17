package com.test.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.InnerProjectMainWorkDTO;
import com.test.dto.InnerProjectTeamManageDTO;
import com.test.mybatis.IInnerProjectMainWorkDAO;
import com.test.mybatis.IInnerProjectMeetDAO;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class IInnerProjectMainWorkController
{

	@Autowired
	SqlSession sqlSession;
	
	
	@RequestMapping(value="/inner-project-home-mainwork.action", method=RequestMethod.GET)
	public String mainWorklist(ModelMap model, @RequestParam("u_p_apply_code") String u_p_apply_code
								, HttpServletRequest request) {
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			model.addAttribute("u_p_apply_code", u_p_apply_code);
	
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
	
			
			IInnerProjectMainWorkDAO dao = sqlSession.getMapper(IInnerProjectMainWorkDAO.class);
			
			List<Map<String, String>> member_list = dao.member_list(u_p_apply_code);
			
			model.addAttribute("pj_mainwork_list", dao.pj_mainwork_list(u_p_apply_code));
			model.addAttribute("member_list", member_list);
			
			IInnerProjectTeamManageDAO ptldao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_team_leader", ptldao.pj_team_leader(u_p_apply_code));
			
			
			IInnerProjectMainWorkDAO mainworkDAO = sqlSession.getMapper(IInnerProjectMainWorkDAO.class);
			model.addAttribute("mainWorkInsertForm_memberlist", mainworkDAO.mainWorkInsertForm_memberlist(u_p_apply_code));
			
			
			result = "WEB-INF/view/Inner-Project-home-mainWork.jsp";
		}
		
		return result;
	}
	
	
	
	@RequestMapping(value="/addmainwork.action", method=RequestMethod.POST)
	public String addMainWork(Model model, InnerProjectMainWorkDTO mainWorkDto, HttpServletRequest request
			, @RequestParam("mainWorkMembers") List<String> mainWorkMembers) 
	{
		String result = null;
		String u_p_apply_code = request.getParameter("u_p_apply_code");
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			model.addAttribute("u_p_apply_code", u_p_apply_code);
			
			IInnerProjectMainWorkDAO mainworkDAO = sqlSession.getMapper(IInnerProjectMainWorkDAO.class);
			 
			mainworkDAO.mainWorkInsert(mainWorkDto);
			mainworkDAO.mainWorkMemberInsert(mainWorkMembers);
			
			result = "redirect:inner-project-home-mainwork.action";
		}
		
		return result;
	}
	
	
	
	
	
	
}
