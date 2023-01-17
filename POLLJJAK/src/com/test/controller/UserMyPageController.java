package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.SessionScope;

import com.test.dto.UserDTO;
import com.test.mybatis.IUserDAO;

@Controller
public class UserMyPageController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 마이페이지 입장 전 비밀번호 체크폼
	@RequestMapping(value = "/umypagewarningform.action", method = RequestMethod.GET)
	public String pwCheckForm(Model model, UserDTO user, HttpServletRequest request)
	{
		String result = null;
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String user_code = null; 

		user_code = (String) session.getAttribute("user_code");
		System.out.println(user_code);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			UserDTO uWarning = dao.uWarning(user);
			
			model.addAttribute("user", uWarning);
			
			result = "/WEB-INF/view/U-MyPage-Warning.jsp";
		}
		
		return result;
	}
	
	// 비밀번호 체크
	@RequestMapping(value = "/ajaxpwUser.action", method = RequestMethod.POST)
	public String pwCheck(UserDTO user, Model model, HttpServletRequest request)
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String user_code = null; 
		
		user_code = (String) session.getAttribute("user_code");
		System.out.println(user_code);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			dao.pwCheck(user);
			System.out.println("비번일치수 : " + dao.pwCheck(user));
			
			model.addAttribute("ajax", dao.pwCheck(user));
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		
		return result;
	}
	
	// 일반 회원정보 확인(마이페이지)
	@RequestMapping(value = "/userupdateform.action", method = RequestMethod.POST)
	public String userUpdateForm(ModelMap model, UserDTO user, HttpServletRequest request)
	{
		String result = null;
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String user_code = null; 
		
		user_code = (String) session.getAttribute("user_code");
		System.out.println(user_code);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
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
			System.out.println(arrSkills);
			
			model.addAttribute("arrSkills1", arrSkills[0]);
			model.addAttribute("arrSkills2", arrSkills[1]);
			model.addAttribute("arrSkills3", arrSkills[2]);
			
			result = "/WEB-INF/view/U-MyPage-Info.jsp";
		}
		
		return result;
	}
	
	// 일반 회원정보 수정(마이페이지 업데이트)
	@RequestMapping(value = "/userupdate.action", method = RequestMethod.POST)
	public String userUpdate(UserDTO user, HttpServletRequest request)
	{
		String result = null;
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String user_code = null; 
		
		user_code = (String) session.getAttribute("user_code");
		System.out.println(user_code);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
			
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			dao.update(user);
			
			result = "redirect:userupdateform.action";
		}
		
		return result;
	}
	
	// 일반 회원정보 프로젝트
	@RequestMapping(value = "/umypageproject.action", method = RequestMethod.GET)
	public String userMyPageProject(Model model, HttpServletRequest request)
	{
		String result = null;
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String user_code = null; 
		
		user_code = (String) session.getAttribute("user_code");
		System.out.println(user_code);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
			
			model.addAttribute("myPageRunPJ", dao.myPageRunPJ(user_code));
			model.addAttribute("myPageSupportPJ", dao.myPageSupportPJ(user_code));
			model.addAttribute("myPageCompletePJ", dao.myPageCompletePJ(user_code));
			model.addAttribute("myPageOpenPJ", dao.myPageOpenPJ(user_code));
			
			
			result = "/WEB-INF/view/U-MyPage-project.jsp";
		}
		
		return result;
	}
	
	// 일반회원 알림
	
	
}
