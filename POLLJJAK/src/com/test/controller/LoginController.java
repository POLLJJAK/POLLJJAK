package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.CompanyDTO;
import com.test.dto.UserDTO;
import com.test.mybatis.ILoginDAO;
import com.test.mybatis.IUserDAO;

@Controller
public class LoginController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 메인화면으로
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String main()
	{
		String result = null;
		
		result = "/WEB-INF/view/U-main.jsp";
		
		return result;
	}
	
	// 회원 로그인폼으로
	@RequestMapping(value = "/loginform.action", method = RequestMethod.GET)
	public String loginForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/Login.jsp";
		
		return result;
	}
	
	// 세션을 이용한 로그인
	@RequestMapping(value="/login.action", method = RequestMethod.POST)
	public String login(UserDTO user, CompanyDTO company
						, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		
		
		if (userType.equals("user"))
		{
			UserDTO loginCheck = null;
			
			loginCheck = dao.userLogin(user);
			
			if(loginCheck == null)
			{
				result = "redirect:loginform.action";
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("loginCheck", loginCheck);
				session.setAttribute("userType", userType);
				result = "redirect:main.action";
			}
//			if (session == null || !request.isRequestedSessionIdValid()) {
//				System.out.println("일반 세션이 무효화 상태입니다.");
//			}
//			else if (session != null)
//			{
//				System.out.println("세션이 있는 상태입니다.");
//				System.out.println("일반 : " + loginCheck.getU_name());
//				System.out.println(loginCheck.getId());
//			}
		}
		else //if (userType.equals("company")) 
		{
			CompanyDTO loginCheck = null;
			
			loginCheck = dao.companyLogin(company);
			
			if(loginCheck == null)
			{
				result = "redirect:loginform.action";
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("loginCheck", loginCheck);
				session.setAttribute("userType", userType);
				result = "redirect:main.action";
			}
//			if (session == null || !request.isRequestedSessionIdValid()) {
//				System.out.println("기업 세션이 무효화 상태입니다.");
//			}
//			else if (session != null)
//			{
//				System.out.println("세션이 있는 상태입니다.");
//				System.out.println("기업 : " + loginCheck.getC_name());
//			}
		}
		return result;
	}

	// 세션 없애기를 이용해 로그아웃
	@RequestMapping(value = "/logout.action", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
				
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		result = "redirect:main.action";
		
		return result;
	}
	
	// 회원가입 메인폼으로
	@RequestMapping(value = "/registraionmainform.action", method = RequestMethod.GET)
	public String RegistrationMainForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/Registration-main.jsp";
		
		return result;
	}
	
	// 아이디 찾기 폼으로
	@RequestMapping(value = "/forgetidform.action", method = RequestMethod.GET)
	public String ForgetIdForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/ForgetId.jsp";
		
		return result;
	}
	
	// 아이디 찾기 폼으로
	@RequestMapping(value = "/forgetid.action", method = RequestMethod.GET)
	public String ForgetId()
	{
		String result = null;
		
		result = "/WEB-INF/view/ForgetId.jsp";
		
		return result;
	}
	
	// 비번 찾기 폼으로
	@RequestMapping(value = "/forgetpwform.action", method = RequestMethod.GET)
	public String ForgetPwForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/ForgetPw.jsp";
		
		return result;
	}
	
	
	
}
