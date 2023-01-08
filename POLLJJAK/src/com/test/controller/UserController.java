/*=========================
 	UserController.java
==========================*/

package com.test.controller;

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
	
	// 회원가입폼으로
	@RequestMapping(value = "/registrationform.action", method = RequestMethod.GET)
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
	
	// 회원가입(회원 정보 추가)
	@RequestMapping(value = "/registration.action", method = RequestMethod.POST)
	public String userInsert(UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.add(user);
		
		// 테스트용으로 
		result = "redirect:main.action";
		
		return result;
	}
	
	@RequestMapping(value = "/userupdateform.action", method = RequestMethod.GET)
	public String userUpdateForm(ModelMap model, UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.search(user);
		model.addAttribute("user", dao.search(user));
		
		result = "/WEB-INF/view/UserUpdateForm.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/userupdate.action", method = RequestMethod.POST)
	public String userUpdate(UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.update(user);
		
		result = "redirect:userlist.action";
		
		return result;
	}
	
}
