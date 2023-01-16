/*=========================
 	UserController.java
 	- 일반
==========================*/

package com.test.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.UserDTO;
import com.test.mybatis.IUserDAO;

@Controller
public class UserController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 일반 회원가입폼으로
	@RequestMapping(value = "/userregistrationform.action", method = RequestMethod.GET)
	public String userInsertForm(Model model)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		model.addAttribute("domainList", dao.domainList());
		model.addAttribute("positionList", dao.positionList());
		model.addAttribute("regionList", dao.regionList());
		model.addAttribute("timeList", dao.timeList());
		model.addAttribute("subjectList", dao.subjectList());
		model.addAttribute("skillList", dao.skillList());
		
		result = "/WEB-INF/view/Registration-user.jsp";
		
		return result;
	}
	
	// 아이디 중복
	@RequestMapping(value = "/uidcheckajax.action", method = RequestMethod.POST)
	public String userIdCheck(Model model, String id)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);

		int idCheck = dao.idCheck(id);
		//System.out.println(idCheck);
		
		Model modal = model.addAttribute("ajax", dao.idCheck(id));
		//System.out.println(modal);
		
		result = "/WEB-INF/view/Ajax.jsp";
		
		return result;
	}
	
	// 일반 회원가입(회원 정보 추가)
	@RequestMapping(value = "/userregistration.action", method = RequestMethod.POST)
	public String userInsert(UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.add(user);
		
		result = "redirect:main.action";
		
		return result;
	}
	
}
