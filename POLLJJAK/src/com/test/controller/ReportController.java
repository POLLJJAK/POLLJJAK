/*===========================
 ReportController.java
============================= */

package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.dto.ReportDTO;
import com.test.mybatis.IProjectHomeListDAO;
import com.test.mybatis.IReportDAO;

@Controller
public class ReportController
{
	@Autowired
	private SqlSession sqlSession;
	
	private HttpSession session;
	
	// 게시글 신고 
	@RequestMapping(value="/reportpost.action", method=RequestMethod.POST)
	public String reportList(Model model, HttpServletRequest request)
	{
		
		String result = null;
		
		String post_code = request.getParameter("post_code");
		String user_code = request.getParameter("user_code");
		String report_reason_code = request.getParameter("reportsel");
		
		IReportDAO dao = sqlSession.getMapper(IReportDAO.class);
		ReportDTO dto = new ReportDTO();
		dto.setPost_code(post_code);
		dto.setUser_code(user_code);
		dto.setReport_reason_code(report_reason_code);
		dao.reportPostAdd(dto);
		
		result = "redirect:mainlounge.action";
		return result;
	};
	
}

