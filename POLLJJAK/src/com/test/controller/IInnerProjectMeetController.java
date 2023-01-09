package com.test.controller;

import org.springframework.stereotype.Controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.InnerProjectMeetDTO;
import com.test.mybatis.IInnerProjectMeetDAO;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class IInnerProjectMeetController
{
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/inner-project-home-meet.action", method=RequestMethod.GET)
	public String meetBoardList(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		
		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
		IInnerProjectMeetDAO dao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
		model.addAttribute("meetBoardList", dao.meetBoardList(u_p_apply_code));
		
		result = "WEB-INF/view/Inner-Project-home-meet.jsp";
		
		return result;
	}
	
	
	
	
	@RequestMapping(value="/inner-project-home-meet-post-insertform.action", method=RequestMethod.GET)
	public String meetBoardInsertForm(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code) {
		
		String result = null;
		
		model.addAttribute("u_p_apply_code", u_p_apply_code);
		
		// 프로젝트 타이틀 불러오기
		IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
		model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
		IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
		model.addAttribute("meetInsertForm_memberlist", meetDao.meetInsertForm_memberlist(u_p_apply_code));
		
		result = "WEB-INF/view/Inner-Project-home-meet-Post-InsertForm.jsp";
				
		return result;
	}
	
	
	
	
	
	@RequestMapping(value="/inner-project-home-meet-post-insert.action", method=RequestMethod.POST)
	public String meetBoardInsert(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
											, InnerProjectMeetDTO meetPostDto
											, @RequestParam("members") List<String> members) {
		
		String result = null;
		

		 model.addAttribute("u_p_apply_code", u_p_apply_code);
		 
		 IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
		 meetDao.meetInsert(meetPostDto);
		 
		 
		 meetDao.meetMemberInsert(members);
		 
		
		result = "redirect:inner-project-home-meet.action";
		
		return result;
	}
	
	
	
	
	
}
