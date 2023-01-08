/*=========================
 	GradeController.java
==========================*/

package com.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.ProjectOpenDTO;
import com.test.mybatis.IProjectOpenDAO;

@Controller
public class ProjectOpenController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 완료 팀장 프로젝트 개수 조회
	@RequestMapping(value="/projectopen.action", method = RequestMethod.GET)
	public String searchLevel(Model model) 
	{
		String user_code = "U000000001";
		String result = null;
		
		IProjectOpenDAO dao = sqlSession.getMapper(IProjectOpenDAO.class);
		
		model.addAttribute("levelInfo", dao.searchLevel(user_code));
		
		result ="/ProjectOpen.jsp";
		
		return result;
	};
	
	// 프로젝트 등록
	@RequestMapping(value="/createproject.action", method=RequestMethod.POST)
	public String createProject(ProjectOpenDTO dto, HttpServletRequest request) 
	{
		String projectId = request.getParameter("projectId");
		
		System.out.println("sds" + projectId);
		/*
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		request.getParameter(name);
		*/
		
		String result = null;
		
		///IProjectOpenDAO dao = sqlSession.getMapper(IProjectOpenDAO.class);
		
		//dao.openProject(dto);
		
		//result ="/ProjectOpen.jsp?";
		
		return result;
	};
	
	

}


