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

@Controller
public class ProjectDetailController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 프로젝트 정보 조회
	@RequestMapping(value = "/projectDetail.action", method = RequestMethod.GET)
	public String getProjectDetail(Model model, HttpServletRequest request) 
	{
		String p_code = request.getParameter("p_code");
		
		String result = null;
	
		IProjectDetailDAO dao = sqlSession.getMapper(IProjectDetailDAO.class);
	
		model.addAttribute("pInfo", dao.getProjectDetail(p_code));
		model.addAttribute("pPositionInfo", dao.getProjectPosition(p_code));
		model.addAttribute("pLeaderInfo", dao.getProjectLeader(p_code));
		model.addAttribute("pApplicantInfo", dao.getProjectApplicant(p_code));
		
		
		System.out.println();
		result = "/ProjectDetail.jsp";
	
		return result;
	}
	
	
	
	 
	
	

}


