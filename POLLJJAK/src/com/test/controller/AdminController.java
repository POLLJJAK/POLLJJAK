package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.AdminDTO;
import com.test.mybatis.IAdminLoginDAO;
import com.test.mybatis.ILoginDAO;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 관리자 로그인 페이지로
	@RequestMapping(value = "/adminloginform.action", method = RequestMethod.GET)
	public String loginForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/AdminLogin.jsp";
		
		return result;
	}
	
	// 관리자 로그인
	@RequestMapping(value="/adminlogin.action", method = RequestMethod.POST)
	public String login(AdminDTO admin, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		
		IAdminLoginDAO dao = sqlSession.getMapper(IAdminLoginDAO.class);
		
		AdminDTO loginCheck = null;
		HttpSession session = null;
		
		loginCheck = dao.adminLogin(admin);
		System.out.println(loginCheck);
		
		if(loginCheck == null)
		{
			result = "redirect:adminloginform.action";
		}
		else
		{
			session = request.getSession();
			session.setAttribute("loginCheck", loginCheck);
			result = "redirect:main.action";	// 관리자 페이지 링크로 나중에 바꿀 것
		}
//		if (session == null || !request.isRequestedSessionIdValid()) {
//			System.out.println("일반 세션이 무효화 상태입니다.");
//		}
//		else if (session != null)
//		{
//			System.out.println("세션이 있는 상태입니다.");
//			System.out.println("일반 : " + loginCheck.getA_id());
//		}
		
		return result;
	}
	
	// 세션 없애기를 이용해 로그아웃
	@RequestMapping(value = "/adminlogout.action", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
				
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		result = "redirect:main.action";
		
		return result;
	}

}
