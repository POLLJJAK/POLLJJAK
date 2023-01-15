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
	
	// 마이페이지 입장 전 비밀번호 체크폼
	@RequestMapping(value = "/umypagewarningform.action", method = RequestMethod.GET)
	public String pwCheckForm(Model model, UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		UserDTO uWarning = dao.uWarning(user);
		
		model.addAttribute("user", uWarning);
		
		result = "/WEB-INF/view/U-MyPage-Warning.jsp";
		
		return result;
	}
	
	// 비밀번호 체크
	@RequestMapping(value = "/ajaxpwUser.action", method = RequestMethod.POST)
	public String pwCheck(UserDTO user, Model model)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.pwCheck(user);
		//System.out.println("비번일치수 : " + dao.pwCheck(user));
		
		model.addAttribute("ajax", dao.pwCheck(user));
		
		result = "/WEB-INF/view/Ajax.jsp";
		
		return result;
	}
	
	// 일반 회원정보 확인(마이페이지)
	@RequestMapping(value = "/userupdateform.action", method = RequestMethod.POST)
	public String userUpdateForm(ModelMap model, UserDTO user)
	{
		String result = null;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		
		dao.search(user);
		
		model.addAttribute("user", dao.search(user));
		model.addAttribute("domainList", dao.domainList());
		model.addAttribute("positionList", dao.positionList());
		model.addAttribute("regionList", dao.regionList());
		model.addAttribute("timeList", dao.timeList());
		model.addAttribute("subjectList", dao.subjectList());
		model.addAttribute("skillList", dao.skillList());
		
		
		String skills = dao.searchSkill(user);
		String[] arrSkills = skills.split(", ");
		
		model.addAttribute("arrSkills1", arrSkills[0]);
		model.addAttribute("arrSkills2", arrSkills[1]);
		model.addAttribute("arrSkills3", arrSkills[2]);
		
		result = "/WEB-INF/view/U-MyPage-Info.jsp";
		
		return result;
	}
	
	// 일반 회원정보 수정(마이페이지 업데이트)
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
