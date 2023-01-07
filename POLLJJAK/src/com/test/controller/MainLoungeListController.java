/*==============================
	MainLoungeListController.java
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

import com.test.dto.MainLoungeListDTO;
import com.test.mybatis.IMainLoungeListDAO;

@Controller
public class MainLoungeListController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/mainlounge.action", method = RequestMethod.GET)
	public String mainLoungeList(ModelMap model)
	{
		String result = null;
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		model.addAttribute("list", dao.list());
		result = "/Main-Lounge.jsp";
		return result;
	}
	
	@RequestMapping(value = "/mainloungeinsertform.action", method = RequestMethod.GET)
	public String mainLoungeInsertForm(HttpServletRequest request, Model model)
	{
		String result = null;

		String user_code = request.getParameter("user_code");
		model.addAttribute("user_code", user_code);
		
		result = "/Main-Lounge-post-insert.jsp";
		
		
		return result;
	}
	
	@RequestMapping(value = "/mainloungeinsert.action", method = RequestMethod.POST)
	public String mainLoungeInsert(MainLoungeListDTO dto)
	{
		String result = null;
		
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.add(dto);
		
		// 리스트가 아니라 해당글상세로 보내야할거같은데..
		result = "redirect:/Main-Lounge-post.jsp";
		
		
		return result;
	}
	
	@RequestMapping(value = "/postdetail.action", method = RequestMethod.GET)
	public String postDetail(HttpServletRequest request, Model model)
	{
		String result = null;
		
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		String post_code = request.getParameter("post_code");
		
		//로그인세션만들면 수정할것!
		String user_code = "U000000003";
		
		model.addAttribute("postdetail", dao.postdetail(post_code));
		model.addAttribute("likecheck", dao.likecheck(post_code, user_code));
		result ="/Main-Lounge-post.jsp";
		
		return result;
	}
	
	// 좋아요추가
	@RequestMapping(value = "/likeinsert.action", method = RequestMethod.GET)
	public String likeInsert(HttpServletRequest request, Model model)
	{
		String result = null;
		String post_code = request.getParameter("post_code");
		String user_code = request.getParameter("user_code");
		
		MainLoungeListDTO dto = new MainLoungeListDTO();
		dto.setPost_code(post_code);
		dto.setUser_code(user_code);
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.likeadd(dto);
		
		
		// 리스트가 아니라 해당글상세로 보내야할거같은데..
		result = "redirect:/Main-Lounge-post.jsp";
		
		
		return result;
	}
}
