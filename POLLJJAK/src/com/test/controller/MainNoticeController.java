/*==============================
	MainNoticeController.java
 ===============================*/

package com.test.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.dto.ArticlePage;
import com.test.dto.MainNoticeDTO;
import com.test.mybatis.IMainNoticeDAO;

@Controller
public class MainNoticeController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/mainnotice.action", method = RequestMethod.GET)
	public String mainNoticeList(ModelMap model, ArticlePage vo
			,@RequestParam(value="nowPage" , required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage)
	{
		String result = null;
		
		try
		{
			IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
			
			int total = dao.listCount();
			
			if (nowPage == null && cntPerPage == null) 
			{
				nowPage = "1";
				cntPerPage = "10";
			} else if (nowPage == null) 
			{
				nowPage = "1";
			} else if (cntPerPage == null) 
			{ 
				cntPerPage = "10";
			}
			
			vo = new ArticlePage(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			MainNoticeDTO dto = new MainNoticeDTO();
			dto.setStart(Integer.toString(vo.getStart()));
			dto.setEnd(Integer.toString(vo.getEnd()));
			model.addAttribute("list", dao.list(dto));
			model.addAttribute("paging", vo);
			
			result = "/Main-Notice.jsp";
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return result;
	}
	
	@RequestMapping(value = "/mainnoticeinsertform.action", method = RequestMethod.GET)
	public String mainNoticeInsertForm(HttpServletRequest request, Model model)
	{
		String result = null;

		String a_code = request.getParameter("a_code");
		model.addAttribute("a_code", a_code);
		
		result = "/Main-Notice-post-insertform.jsp";
		
		
		return result;
	}
	
	@RequestMapping(value = "/mainnoticeinsert.action", method = RequestMethod.POST)
	public String mainNoticeInsert(MainNoticeDTO dto)
	{
		String result = null;
		IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
		dao.add(dto);
		
		// 리스트가 아니라 해당글상세로 보내야할거같은데..
		result = "redirect:mainnotice.action";
		
		
		return result;
	}
	
	@RequestMapping(value = "/mainnoticedtail.action", method = RequestMethod.GET)
	public String noticeDetail(HttpServletRequest request, Model model)
	{
		String result = null;
		
		IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
		String notice_code = request.getParameter("notice_code");
		
		model.addAttribute("noticedetail", dao.noticedetail(notice_code));
		
		result ="/Main-Notice-post.jsp";
		
		return result;
	}
	
	@RequestMapping(value="/mainnoticeupdateform.action", method=RequestMethod.GET)
	public String mainNoticeUpdateForm(HttpServletRequest request, Model model)
	{
		String result = null;
		IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
		
		String notice_code = request.getParameter("notice_code");
		
		model.addAttribute("notice", dao.noticedetail(notice_code));
		
		
		result = "/Main-Notice-post-updateform.jsp";
		
		return result;
	}
	
	@RequestMapping(value="/mainnoticeupdate.action", method=RequestMethod.POST)
	public String mainNoticeUpdate(MainNoticeDTO dto)
	{
		String result = null;
		IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
		dao.update(dto);
		
		result = "redirect:mainnotice.action";
		
		return result;
	}
	
	
	@RequestMapping(value="/mainnoticedelete.action", method=RequestMethod.GET)
	public String mainNoticeRemove(String notice_code)
	{
		String result = null;
		
		IMainNoticeDAO dao = sqlSession.getMapper(IMainNoticeDAO.class);
		dao.remove(notice_code);
		
		
		result = "redirect:mainnotice.action";
		
		return result;
	}
}
