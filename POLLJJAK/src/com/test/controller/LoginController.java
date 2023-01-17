package com.test.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.CompanyDTO;
import com.test.dto.UserDTO;
import com.test.mybatis.ILoginDAO;

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
	
	// 아이디 및 비밀번호 체크
	@RequestMapping(value = "/ajaxLogin.action", method = RequestMethod.POST)
	public String pwCheck(UserDTO user, CompanyDTO company, Model model
					, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		System.out.println(userType);
		
		if (userType.equals("user"))
		{
			int loginCheck = dao.userIdCheck(user);
			System.out.println(loginCheck);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		else
		{
			int loginCheck = dao.companyIdCheck(company);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		
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
			
//			if(loginCheck == null)
//			{
//				result = "redirect:loginform.action";
//			}
//			else
//			{
//				HttpSession session = request.getSession();
//				session.setAttribute("loginCheck", loginCheck);
//				session.setAttribute("userType", userType);
//				result = "redirect:main.action";
//			}
			HttpSession session = request.getSession();
			session.setAttribute("loginCheck", loginCheck);
			session.setAttribute("userType", userType);
			session.setAttribute("user_code", loginCheck.getUser_code());
			
			result = "redirect:main.action";
//			if (session == null || !request.isRequestedSessionIdValid()) {
//				System.out.println("일반 세션이 무효화 상태입니다.");
//			}
//			else if (session != null)
//			{
//				System.out.println("세션이 있는 상태입니다.");
//				System.out.println("일반 : " + loginCheck.getName());
//				System.out.println(loginCheck.getId());
//			}
		}
		else // if (userType.equals("company")) 
		{
			CompanyDTO loginCheck = null;
			
			loginCheck = dao.companyLogin(company);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginCheck", loginCheck);
			session.setAttribute("userType", userType);
			result = "redirect:main.action";
//			if (session == null || !request.isRequestedSessionIdValid()) {
//				System.out.println("기업 세션이 무효화 상태입니다.");
//			}
//			else if (session != null)
//			{
//				System.out.println("세션이 있는 상태입니다.");
//				System.out.println("기업 : " + loginCheck.getName());
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
	
	// 세션을 없애고 회원 로그인폼으로
	@RequestMapping(value = "/killsessionLoginform.action", method = RequestMethod.GET)
	public String killSessionLoginForm(HttpServletRequest request)
	{
		String result = null;
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		result = "/WEB-INF/view/Login.jsp";
		
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
	public String ForgetIdForm(Model model)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		model.addAttribute("domainList", dao.domainList());
		
		result = "/WEB-INF/view/ForgetId.jsp";
		
		return result;
	}
	
	// 아이디 찾기에서 이름/이메일 값 넘기기
	@RequestMapping(value = "/ajaxFindId.action", method = RequestMethod.POST)
	public String IdCheck(UserDTO user, CompanyDTO company, Model model
					, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		//System.out.println(userType);
		
		if (userType.equals("user"))
		{
			UserDTO loginCheck = dao.uForgetId(user);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		else
		{
			CompanyDTO loginCheck = dao.cForgetId(company);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		
		return result;
	}
	
	// 아이디 띄워주는 페이지
	@RequestMapping(value = "/findid.action", method = RequestMethod.POST)
	public String ForgetId(UserDTO user, CompanyDTO company, Model model
							, HttpServletRequest request)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		
		if (userType.equals("user"))
		{
			UserDTO uForgetId = null;
			
			uForgetId = dao.uForgetId(user);

			model.addAttribute("user", uForgetId);
			result = "/WEB-INF/view/FindId.jsp";
		}
		else
		{
			CompanyDTO cForgetId = null;
			
			cForgetId = dao.cForgetId(company);
			
			model.addAttribute("user", cForgetId);
			result = "/WEB-INF/view/FindId.jsp";
		}
		
		return result;
	}
	
	// 비번 찾기 폼으로
	@RequestMapping(value = "/forgetpwform.action", method = RequestMethod.GET)
	public String ForgetPwForm(Model model)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		model.addAttribute("domainList", dao.domainList());
		
		result = "/WEB-INF/view/ForgetPw.jsp";
		
		return result;
	}
	
	// 비밀번호 찾기에서 이름/이메일/아이디 값 넘기기
	@RequestMapping(value = "/ajaxFindPw.action", method = RequestMethod.POST)
	public String FindPw(UserDTO user, CompanyDTO company, Model model
					, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		//System.out.println(userType);
		
		if (userType.equals("user"))
		{
			UserDTO loginCheck = dao.uForgetPw(user);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		else
		{
			CompanyDTO loginCheck = dao.cForgetPw(company);
			
			model.addAttribute("ajax", loginCheck);
			
			result = "/WEB-INF/view/Ajax.jsp";
		}
		
		return result;
	}
	
	// 비번 찾기
	@RequestMapping(value = "/findpw.action", method = RequestMethod.POST)
	public String ForgetPw(UserDTO user, CompanyDTO company, Model model
							, HttpServletRequest request)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		String userType = request.getParameter("userType");
		
		if (userType.equals("user"))
		{
			UserDTO uForgetPw = null;
			
			uForgetPw = dao.uForgetPw(user);
			
				model.addAttribute("user", uForgetPw);
				model.addAttribute("userType", userType);
				result = "/WEB-INF/view/uChangePw.jsp";
		}
		else
		{
			CompanyDTO cForgetPw = null;
			
			cForgetPw = dao.cForgetPw(company);
				model.addAttribute("user", cForgetPw);
				model.addAttribute("userType", userType);
				result = "/WEB-INF/view/cChangePw.jsp";
		}
		
		return result;
	}
	
	// 일반회원 비번 바꾸기
	@RequestMapping(value = "/uchangepw.action", method = RequestMethod.POST)
	public String uChangePw(UserDTO user)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		dao.uModifyPW(user);

		result = "redirect:main.action";
		
		return result;
	}
	
	// 기업회원 비번 바꾸기
	@RequestMapping(value = "/cchangepw.action", method = RequestMethod.POST)
	public String cChangePw(CompanyDTO company)
	{
		String result = null;
		
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		dao.cModifyPW(company);
		
		result = "redirect:main.action";
		
		return result;
	}
	
}
