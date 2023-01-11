/*=========================
 	UserController.java
 	- 일반
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
	
	// 일반 회원정보 확인
	@RequestMapping(value = "/userupdateform.action", method = RequestMethod.GET)
	public String userUpdateForm(ModelMap model, UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.search(user);
		model.addAttribute("user", dao.search(user));
		
		String skills = dao.searchSkill(user);
		String[] arrSkills = skills.split(", ");
		model.addAttribute("arrSkills1", arrSkills[0]);
		model.addAttribute("arrSkills2", arrSkills[1]);
		model.addAttribute("arrSkills3", arrSkills[2]);
		
		model.addAttribute("domainList", dao.domainList());
		model.addAttribute("positionList", dao.positionList());
		model.addAttribute("regionList", dao.regionList());
		model.addAttribute("timeList", dao.timeList());
		model.addAttribute("subjectList", dao.subjectList());
		model.addAttribute("skillList", dao.skillList());
		
		result = "/WEB-INF/view/U-MyPage-Info.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/userupdate.action", method = RequestMethod.POST)
	public String userUpdate(UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.update(user);
		
		result = "redirect:userupdateform.action";
		
		return result;
	}
	
}
