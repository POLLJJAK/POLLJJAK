package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.UserDTO;

@Controller
public class LoginController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 테스트용 (나중에 지울예정)
	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String main()
	{
		String result = null;
		
		result = "/WEB-INF/view/U-main.jsp";
		
		return result;
	}
	
	// 로그인폼으로
	@RequestMapping(value = "/loginform.action", method = RequestMethod.GET)
	public String userLoginForm()
	{
		String result = null;
		
		result = "/WEB-INF/view/Login.jsp";
		
		return result;
	}
	
	@RequestMapping(value="/login.action", method=RequestMethod.POST)
	public String login(HttpServletRequest request, UserDTO userDTO) throws Exception
	{
		String result = null;
		
		result = "/WEB-INF/view/U-main.jsp";
		
		//System.out.println("login 메서드 진입");
		//System.out.println("전달된 데이터 : " + userDTO);
		
		return result;
	}
//	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
//	public String userLogin(HttpServletRequest request, UserDTO userDTO, redirectAttributes)
//	{
//		ILoginDAO dao = sqlSession.getMapper(ILoginDAO.class);
//		
//		if(dao == null)
//		{
//			session.setAttribute("user", null)
//			
//		}
//	}
}
