/*=========================
 	GradeController.java
==========================*/

package com.test.controller;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.ProjectDetailDTO;
import com.test.mybatis.IProjectDetailDAO;
import com.test.mybatis.IProjectDetailNewsDAO;

@Controller
public class ProjectDetailController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 프로젝트 정보 조회 및 지원자격 검증
	@RequestMapping(value = "/projectDetail.action", method = RequestMethod.GET)
	public String getProjectDetail(Model model, HttpServletRequest request) 
	{
		ProjectDetailDTO dto = new ProjectDetailDTO();
		
		String p_code = request.getParameter("p_code");
		dto.setP_code(p_code);
		
		//세션처리 되었을시 user_code 호출시 받아올거임
		String user_code = "U000000129";
		dto.setUser_code(user_code);
		
		String result = null;
	
		IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
		
		String message = null;
		
		// 지원 전 사전 검증
		int in_blackList = dao.getBlackList(dto);
		int in_progress_project = dao.getProgressProject(dto);
		int in_progress_apply = dao.getProgressApply(dto);
		
		if(in_blackList > 0)
		{
			message = "회원님은 블랙리스트에 등록되어 해당 프로젝트에 지원할 수 없습니다.";
		}
		
		if(in_progress_project > 0)
		{
			message = "회원님은 진행중인 프로젝트가 존재하여 새로운 프로젝트에 지원할 수 없습니다.";
		}
		if(in_progress_apply > 0)
		{
			message = "회원님은 개설 진행 중인 프로젝트에 지원중이므로 새로운 프로젝트에 지원할 수 없습니다";
		}
		
		IProjectDetailNewsDAO newsListDao = sqlSession.getMapper(IProjectDetailNewsDAO.class);
		
		model.addAttribute("pInfo", dao.getProjectDetail(p_code));
		model.addAttribute("pPositionInfo", dao.getProjectPosition(p_code));
		model.addAttribute("pLeaderInfo", dao.getProjectLeader(p_code));
		model.addAttribute("pApplicantInfo", dao.getProjectApplicant(p_code));
		model.addAttribute("message", message);
		model.addAttribute("p_code", p_code);
		model.addAttribute("user_code", user_code);
		
		model.addAttribute("p_news_list", newsListDao.p_news_list(p_code));
		
		result = "/ProjectDetail.jsp";
	
		return result;
	}
	
	
	// 프로젝트 지원
	@RequestMapping(value = "/projectapply.action", method = RequestMethod.POST)
	public String applyProject(Model model, HttpServletRequest request) 
	{
		ProjectDetailDTO dto = new ProjectDetailDTO();
		
		dto.setP_code(request.getParameter("p_code"));
		dto.setUser_code(request.getParameter("user_code"));
		dto.setPosition_part(request.getParameter("position_part"));
		dto.setU_p_apply_reason(request.getParameter("apply_reason"));
		
		IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
		
		String p_position_code = dao.getPositionCode(dto);
		dto.setP_position_code(p_position_code);
		
		System.out.println(dto.getP_position_code());
		dao.applyProject(dto);
		
		String result = "redirect:projectDetail.action?p_code="+dto.getP_code();
	
		return result;
	}

	
	
	
	
	
	 
	
	

}


