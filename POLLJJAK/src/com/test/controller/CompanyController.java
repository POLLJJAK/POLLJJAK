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
import com.test.dto.UserDTO;
import com.test.mybatis.ICompanyDAO;
import com.test.mybatis.IUserDAO;

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
	
	// 아이디 중복
	@RequestMapping(value = "/cidcheckajax.action", method = RequestMethod.POST)
	public String companyIdCheck(Model model, String id)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);

		int idCheck = dao.idCheck(id);
		//System.out.println(idCheck);
		
		Model modal = model.addAttribute("ajax", dao.idCheck(id));
		//System.out.println(modal);
		
		result = "/WEB-INF/view/Ajax.jsp";
		
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
	
	// 마이페이지 입장 전 비밀번호 체크폼
	@RequestMapping(value = "/cmypagewarningform.action", method = RequestMethod.GET)
	public String pwCheckForm(Model model, CompanyDTO company)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		CompanyDTO cWarning = dao.cWarning(company);
		
		model.addAttribute("company", cWarning);
		
		result = "/WEB-INF/view/C-MyPage-Warning.jsp";
		
		return result;
	}
	
	// 비밀번호 체크
	@RequestMapping(value = "/ajaxpwCompany.action", method = RequestMethod.POST)
	public String pwCheck(CompanyDTO company, Model model)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		dao.pwCheck(company);
		//System.out.println("비번일치수 : " + dao.pwCheck(company));
		
		model.addAttribute("ajax", dao.pwCheck(company));
		
		result = "/WEB-INF/view/Ajax.jsp";
		
		return result;
	}
	
	// 기업 회원정보 확인(마이페이지)
	@RequestMapping(value = "/companyupdateform.action", method = RequestMethod.POST)
	public String companyUpdateForm(ModelMap model, CompanyDTO company)
	{
		String result = null;
		
		ICompanyDAO dao = sqlSession.getMapper(ICompanyDAO.class);
		
		dao.search(company);
		model.addAttribute("company", dao.search(company));
		model.addAttribute("domainList", dao.domainList());
		
		result = "/WEB-INF/view/C-MyPage-Info.jsp";
		
		return result;
	}
	
	// 기업회원 정보 수정
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
