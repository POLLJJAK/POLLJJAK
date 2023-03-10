
package com.test.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.mybatis.IProjectOpenMainDAO;


@Controller
public class ProjectOpenMainController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	// 프로젝트 정보 조회
	@RequestMapping(value = "/projectopenmain.action", method = RequestMethod.GET)
	public String getProject(Model model, HttpServletRequest request) 
	{
		String result = null;

		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		session.getAttribute("loginCheck");
		//System.out.println(temp);
		
		if (session.getAttribute("loginCheck") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
			
			String user_code = request.getParameter("user_code");
		
			IProjectOpenMainDAO dao = sqlSession.getMapper(IProjectOpenMainDAO.class);
		
			model.addAttribute("uProjectInfo", dao.getProject(user_code));
			
			model.addAttribute("uProjectFailedInfo", dao.getfailedProject(user_code));
			
			model.addAttribute("user_code", user_code);
			
			result = "/ProjectOpenMain.jsp";
		}
		return result;
	}
	
	// 실패 프로젝트 리스트에서 삭제
	@ResponseBody
	@RequestMapping(value = "/delfailedproject.action", method = {RequestMethod.GET, RequestMethod.POST})
	public void delFailedProject(HttpServletRequest request, HttpServletResponse response) throws IOException 
	{
		String result ="";
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null;
		
		temp = (String) session.getAttribute("user_code");
		session.getAttribute("loginCheck");
		//System.out.println(temp);
		
		if (session.getAttribute("loginCheck") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

			String p_code = request.getParameter("p_code");
			System.out.println(p_code);
			
			IProjectOpenMainDAO dao = sqlSession.getMapper(IProjectOpenMainDAO.class);
			
			int transactionResult = dao.delfailedproject(p_code);
			
			if(transactionResult > 0) 
			{
				result = "SUCCESS";
			}
			else 
			{
				result = "FAIL";
			}
			
			response.setContentType("text/html");
		 	response.setCharacterEncoding("utf-8");
	        response.getWriter().write(result);
		}
		
	}

}


