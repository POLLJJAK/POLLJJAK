package com.test.controller;

import org.springframework.stereotype.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.ArticlePage;
import com.test.dto.InnerProjectMeetDTO;
import com.test.mybatis.IInnerProjectMeetDAO;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class IInnerProjectMeetController
{
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/inner-project-home-meet.action", method=RequestMethod.GET)
	public String meetBoardList(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
			    ,ArticlePage vo
				,@RequestParam(value="nowPage" , required=false) String nowPage
				,@RequestParam(value="cntPerPage", required=false) String cntPerPage
				, HttpServletRequest request) 
	{
		
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			model.addAttribute("u_p_apply_code", u_p_apply_code);
			
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
			
			
			IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			
			int total = meetDao.meetListCount(u_p_apply_code);
			
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "5";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) { 
				cntPerPage = "5";
			}
			
			vo = new ArticlePage(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			InnerProjectMeetDTO dto = new InnerProjectMeetDTO();
			dto.setU_p_apply_code(u_p_apply_code);
			dto.setStart(Integer.toString(vo.getStart()));
			dto.setEnd(Integer.toString(vo.getEnd()));
			
			model.addAttribute("paging", vo);
			
			IInnerProjectMeetDAO dao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			model.addAttribute("meetBoardList", dao.meetBoardList(dto));
			
			result = "WEB-INF/view/Inner-Project-home-meet.jsp";
		}
		return result;
	}
	
	@RequestMapping(value="/inner-project-home-meet-post-insertform.action", method=RequestMethod.GET)
	public String meetBoardInsertForm(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
										, HttpServletRequest request) {
		
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			model.addAttribute("u_p_apply_code", u_p_apply_code);
			
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
			
			IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			model.addAttribute("meetInsertForm_memberlist", meetDao.meetInsertForm_memberlist(u_p_apply_code));
			
			result = "WEB-INF/view/Inner-Project-home-meet-Post-InsertForm.jsp";
		}
		
		return result;
	}
	
	@RequestMapping(value="/inner-project-home-meet-post-insert.action", method=RequestMethod.POST)
	public String meetBoardInsert(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code, InnerProjectMeetDTO meetDto
											 , @RequestParam("members") List<String> members
											 , HttpServletRequest request) {
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			 model.addAttribute("u_p_apply_code", u_p_apply_code);
			 
			 IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			 
			 meetDao.meetInsert(meetDto);
			 meetDao.meetMemberInsert(members);
			
			result = "redirect:inner-project-home-meet.action";
		}
		
		return result;
	}
	
	
	
	@RequestMapping(value = "/inner-project-home-meet-post.action", method = RequestMethod.GET)
	public String meetBoardPost(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code, @RequestParam("ph_meet_code") String ph_meet_code
								, HttpServletRequest request)
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			model.addAttribute("u_p_apply_code", u_p_apply_code);
			model.addAttribute("ph_meet_code", ph_meet_code);
			
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
			
			IInnerProjectMeetDAO dao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			model.addAttribute("meetBoardPost", dao.meetBoardPost(ph_meet_code));
			model.addAttribute("meetMemberList", dao.meetMemberList(ph_meet_code));
			
			
			result ="WEB-INF/view/Inner-Project-home-meet-Post.jsp";
		}
		
		return result;
	}
	
	
	@RequestMapping(value="/inner-project-home-meet-post-delete.action", method=RequestMethod.GET)
	public String meetBoardDelete(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code, @RequestParam("ph_meet_code") String ph_meet_code
									, HttpServletRequest request)
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리


			model.addAttribute("u_p_apply_code", u_p_apply_code);
			model.addAttribute("ph_meet_code", ph_meet_code);
			
			// 일단 ph_meet 테이블 데이터 지우고
			// 연관된 참석자 ph_meet_member 테이블에서도 싹 지워야 된다.
			// 자식 레코드를 먼저 삭제한 후 부모레코드를 삭제하도록하자.
			IInnerProjectMeetDAO dao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			
			
			dao.meetMemberRemove(ph_meet_code);
			dao.meetRemove(ph_meet_code);
			
			result = "redirect:inner-project-home-meet.action";
		}
		
		return result;
	}
	
	
	
	@RequestMapping(value="/inner-project-home-meet-post-updateform.action", method=RequestMethod.GET)
	public String meetBoardUpdateForm(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code, @RequestParam("ph_meet_code") String ph_meet_code
										, HttpServletRequest request) 
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

		
			model.addAttribute("u_p_apply_code", u_p_apply_code);
			model.addAttribute("ph_meet_code", ph_meet_code);
			
			// 프로젝트 타이틀 불러오기
			IInnerProjectTeamManageDAO pj_title_dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			model.addAttribute("pj_title_info", pj_title_dao.pj_title_info(u_p_apply_code));
		
			
			IInnerProjectMeetDAO dao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
			
			model.addAttribute("meetBoardPost", dao.meetBoardPost(ph_meet_code));
			
			
			result = "WEB-INF/view/Inner-Project-home-meet-Post-UpdateForm.jsp";
		}
		
		return result;
	}
	
	
	@RequestMapping(value="/inner-project-home-meet-post-update.action", method=RequestMethod.POST)
	public String meetBoardUpdate(Model model
			, @RequestParam("u_p_apply_code") String u_p_apply_code
			, @RequestParam("ph_meet_code") String ph_meet_code
			, InnerProjectMeetDTO meetDto, HttpServletRequest request) {
		
		String result = null;
		
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			try
			{
				model.addAttribute("u_p_apply_code", u_p_apply_code);
				model.addAttribute("ph_meet_code", ph_meet_code);
				
				IInnerProjectMeetDAO meetDao = sqlSession.getMapper(IInnerProjectMeetDAO.class);
				meetDao.meetUpdate(meetDto);
				
			} catch (Exception e)
			{
				System.out.println(e.toString());
				System.out.println(meetDto.getPh_meet_subtitle());
				System.out.println(meetDto.getU_p_apply_code());
			}
	
			
			result = "redirect:inner-project-home-meet.action";
		}
		
		return result;
	}
	
	
	
	
}
