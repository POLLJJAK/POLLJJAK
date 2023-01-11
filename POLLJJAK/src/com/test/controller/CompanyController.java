/*=========================
 	CompanyController.java
 	- 기업
==========================*/

package com.test.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.CompanyDTO;
import com.test.mybatis.ICompanyDAO;

@Controller
public class CompanyController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 기업 회원가입폼으로
	@RequestMapping(value = "/companyregistrationform.action", method = RequestMethod.GET)
	public String companyInsertForm(Model model)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		model.addAttribute("domainList", dao.domainList());
		
		result = "/WEB-INF/view/Registration-company.jsp";
		
		return result;
	}
	
	// 기업 회원가입(회원 정보 추가)
	@RequestMapping(value = "/companyregistration.action", method = RequestMethod.POST)
	public String companyInsert(CompanyDTO company)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		dao.add(company);
		
		result = "redirect:main.action";
		
		return result;
	}
	
	@RequestMapping(value = "/companyupdateform.action", method = RequestMethod.GET)
	public String companyUpdateForm(ModelMap model, CompanyDTO company)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		dao.search(company);
		model.addAttribute("company", dao.search(company));
		
		result = "/WEB-INF/view/UserUpdateForm.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/companyupdate.action", method = RequestMethod.POST)
	public String companyUpdate(CompanyDTO company)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		dao.update(company);
		
		result = "redirect:companylist.action";
		
		return result;
	}
	
}
