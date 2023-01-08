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

import com.test.dto.UserDTO;
import com.test.mybatis.ILoginDAO;
import com.test.mybatis.IUserDAO;

@Controller
public class LoginController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String main()
	{
		String result = null;
		
		result = "/WEB-INF/view/U-main.jsp";
		
		return result;
	}
	
	// 테스트용 (나중에 지울예정)
//	@RequestMapping(value = "/u_p_apply_main.action", method = RequestMethod.GET)
//	public String u_p_apply_main()
//	{
//		String result = null;
//		
//		result = "/WEB-INF/view/U-P-Apply-Main.jsp";
//		
//		return result;
//	}
	
	
	// 로그인폼으로
	@RequestMapping(value = "/loginform.action", method = RequestMethod.GET)
	public String userLoginForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/Login.jsp";
		
		return result;
	}
	
	// 세션을 이용한 로그인
	@RequestMapping(value="/login.action", method = RequestMethod.POST)
	public String login(UserDTO user, HttpServletRequest request, HttpServletResponse response)
	{
		String result = null;
		UserDTO loginCheck = null;
		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
		
		loginCheck = dao.login(user);
		
		if(loginCheck == null)
		{
			result = "redirect:loginform.action";
		}
		else
		{
			HttpSession session = request.getSession();
			session.setAttribute("loginCheck", loginCheck);
			result = "redirect:main.action";
		}
		
		return result;
	}
	
	// 세션 없애기를 이용해 로그아웃
	@RequestMapping(value = "/logout.action", method = RequestMethod.GET)
	public String logout(HttpServletRequest request)
	{
		String result = null;
				
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		result = "redirect:main.action";
		
		return result;
	}
	
	
	
}
