
package com.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.mybatis.IProjectOpenMainDAO;


@Controller
public class ProjectOpenMainController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 프로젝트 정보 조회
	@RequestMapping(value = "/projectopenmain.action", method = RequestMethod.GET)
	public String getProject(Model model, HttpServletRequest request) 
	{
		String user_code = request.getParameter("user_code");
		
		String result = null;
	
		IProjectOpenMainDAO dao = sqlSession.getMapper(IProjectOpenMainDAO.class);
	
		model.addAttribute("uProjectInfo", dao.getProject(user_code));
		
		model.addAttribute("uProjectFailedInfo", dao.getfailedProject(user_code));
		
		model.addAttribute("user_code", user_code);
		
		
		
		result = "/ProjectOpenMain.jsp";
	
		return result;
	}
	
	
	
	
	
	 
	
	

}


