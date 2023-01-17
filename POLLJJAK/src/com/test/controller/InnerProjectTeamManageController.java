package com.test.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.InnerProjectTeamManageDTO;
import com.test.mybatis.IInnerProjectTeamManageDAO;

@Controller
public class InnerProjectTeamManageController
{
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/inner-project-home-teammanage.action", method=RequestMethod.GET)
	public String innerProjectHomeTitleView(ModelMap model, @RequestParam("u_p_apply_code") String u_p_apply_code
											, HttpServletRequest request) {
		
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
			
			IInnerProjectTeamManageDAO dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			// 내 프로젝트 홈 타이틀
			model.addAttribute("pj_title_info", dao.pj_title_info(u_p_apply_code));
			
			// 프로젝트 팀 정보
			model.addAttribute("pj_team_info", dao.pj_team_info(u_p_apply_code));
			
			// 현재 팀원 수
			model.addAttribute("pj_team_count", dao.pj_team_count(u_p_apply_code));
			
			// 팀원 자리 수 (현재 팀원 수 / 전체 프로젝트 자리 수) 표시하기 위함 
			model.addAttribute("pj_team_now_count", dao.pj_team_now_count(u_p_apply_code));
			
			// 해당 유저의 직무지원 코드를 통해 프로젝트 코드를 도출해서
			// 해당 프로젝트가 종료 테이블에 있는 지 확인해서 종료된 프로젝트임을 확인하면
			// 버튼들을 뷰단에서 미표시하기 위함
			model.addAttribute("upa_p_code", dao.upa_p_code(u_p_apply_code));
			
			// 해당 직무지원코드를 가지고 해당 프로젝트의 팀 리더를 가져오는 과정
			// 리더의 직무 지원 코드를 가져와서 현재 접속중인 유저의 직무지원코드와 비교해서 
			// 팀 리더이면 중단하기, 팀원평가, 마감처리 버튼으로 표시
			// 팀원이면 중단요청, 동료 평가로 표시한다.
			model.addAttribute("pj_team_leader", dao.pj_team_leader(u_p_apply_code));
			
			
			
			//중단 요청을 하면 팀 관리 페이지에서 중단 요청 버튼 활성화 시키려면
			// 해당 팀원의 직무지원코드가 중단요청 테이블에 존재해서 카운트 수가 1이상이면 활성화
			List<Map<String, String>> p_stop_teamMember_check = dao.p_stop_teamMember_check(u_p_apply_code);
			model.addAttribute("p_stop_teamMember_check", p_stop_teamMember_check);
			
			//중단 테이블에서 해당 유저 있으면 가져오기 없어도 널
			model.addAttribute("p_stop_upa_check", dao.p_stop_upa_check(u_p_apply_code));
			
			//팀 내 중단 요청 횟수 카운트
			model.addAttribute("p_stop_teamMember_count", dao.p_stop_teamMember_count(u_p_apply_code));
			
			// 팀 확정 코드
			model.addAttribute("p_team_confirm_code", dao.p_team_confirm_code(u_p_apply_code));
			
			// 팀장 권한 모달 창 팀원 (자신제외)출력용 
			model.addAttribute("pj_team_leader_modal_list", dao.pj_team_leader_modal_list(u_p_apply_code));
			
			
			result = "WEB-INF/view/Inner-Project-home-teamManage.jsp";
		}
		
		return result;
	}
	

	@RequestMapping(value="/p_stop_member.action", method=RequestMethod.GET)
	public String pStopMember(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
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
			
			IInnerProjectTeamManageDAO dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			dao.p_stop_teamMember(u_p_apply_code);
			
			result = "redirect:inner-project-home-teammanage.action";
		}
		
		return result;
	}
	
	
	@RequestMapping(value="/p_stop_project.action", method=RequestMethod.POST)
	public String pStopProject(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
										  , @RequestParam("p_team_confirm_code") String p_team_confirm_code
										  , InnerProjectTeamManageDTO dto, HttpServletRequest request) 
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
			
			IInnerProjectTeamManageDAO dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			
			dao.p_stop_project_insert(dto);
			
			dao.p_stop_teamMember(u_p_apply_code);
	
			
			result = "redirect:projecthomelist.action";
		}
		
		return result;
	}
	
	
	//팀장 권한 이양
	@RequestMapping(value="/pj_team_leader_move.action", method=RequestMethod.POST)
	public String teamLeaderMove(Model model, InnerProjectTeamManageDTO dto, HttpServletRequest request) 
	{
		String result = null;
		String u_p_apply_code = request.getParameter("u_p_apply_code");
		String team_member = request.getParameter("team_member");
		String p_leader_reason = request.getParameter("p_leader_reason");
		
		
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
			
			IInnerProjectTeamManageDAO dao = sqlSession.getMapper(IInnerProjectTeamManageDAO.class);
			
			
			dto.setP_leader_reason(p_leader_reason);
			dto.setTeam_member(team_member);
			
			dao.pj_team_leader_move(dto);
			
			result = "redirect:inner-project-home-teammanage.action";
		}
		
		return result;
	}
	
	
	


	
}
