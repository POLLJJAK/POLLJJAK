package com.test.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.mybatis.IProjectDetailBlacklistDAO;

@Controller
public class ProjectDetailBlacklistController
{
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/addblacklist.action", method = RequestMethod.POST)
	public String addBlacklist(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
										  , @RequestParam("p_code") String p_code
										  , HttpServletRequest request) 
	{
		String result = "";
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리
		
			System.out.println("지원 목록 → 차단 목록 : " + u_p_apply_code);
			
			IProjectDetailBlacklistDAO dao = sqlSession.getMapper(IProjectDetailBlacklistDAO.class);
			dao.addblacklist(u_p_apply_code);
			
			result = "redirect:projectDetail.action?p_code=" + p_code;
		}
		
		return result;
	}
	
	@RequestMapping(value="/deleteblacklist.action", method = RequestMethod.POST)
	public String deleteBlacklist(Model model, @RequestParam("u_p_apply_code") String u_p_apply_code
											 , @RequestParam("p_code") String p_code
											 , HttpServletRequest request) 
	{
		
		String result = "";
		
		// 세션처리 -----------------------------------------
		HttpSession session = request.getSession();

		String temp = null; 
		
		temp = (String) session.getAttribute("user_code");
		System.out.println(temp);
		
		if (session.getAttribute("user_code") == null)
		{
			result = "redirect:killsessionLoginform.action";
		}
		else
		{
		// ----------------------------------------- 세션처리

		
			System.out.println("차단 목록 → 지원 목록 : " + u_p_apply_code);
			
			IProjectDetailBlacklistDAO dao = sqlSession.getMapper(IProjectDetailBlacklistDAO.class);
			dao.deleteblacklist(u_p_apply_code);
			
			result = "redirect:projectDetail.action?p_code=" + p_code;
		}
		
		return result;
	}
	
	
}
