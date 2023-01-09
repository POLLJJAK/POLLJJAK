/*==============================
	MainLoungeListController.java
 ===============================*/

package com.test.controller;

import java.util.Map;

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
import com.test.dto.MainLoungeListDTO;
import com.test.mybatis.IMainLoungeListDAO;

@Controller
public class MainLoungeListController
{
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value = "/mainlounge.action", method = RequestMethod.GET)
	public String mainLoungeList(ModelMap model, ArticlePage vo
			,@RequestParam(value="nowPage" , required=false) String nowPage
			,@RequestParam(value="cntPerPage", required=false) String cntPerPage)
	{
		String result = null;
		
		try
		{
			IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
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
			
			MainLoungeListDTO dto = new MainLoungeListDTO();
			dto.setStart(Integer.toString(vo.getStart()));
			dto.setEnd(Integer.toString(vo.getEnd()));
			model.addAttribute("list", dao.list(dto));
			model.addAttribute("paging", vo);
			
			result = "/Main-Lounge.jsp";
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return result;
	}
	
	@RequestMapping(value = "/mainloungeinsertform.action", method = RequestMethod.GET)
	public String mainLoungeInsertForm(HttpServletRequest request, Model model)
	{
		String result = null;

		String user_code = request.getParameter("user_code");
		model.addAttribute("user_code", user_code);
		
		result = "/Main-Lounge-post-insertform.jsp";
		
		
		return result;
	}
	
	@RequestMapping(value = "/mainloungeinsert.action", method = RequestMethod.POST)
	public String mainLoungeInsert(MainLoungeListDTO dto)
	{
		String result = null;
		
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.add(dto);
		
		// 리스트가 아니라 해당글상세로 보내야할거같은데..
		result = "redirect:mainlounge.action";
		
		
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
	
	
	@RequestMapping(value = "/mainloungeupdateform.action", method=RequestMethod.GET)
	public String mainLoungeUpdateForm(HttpServletRequest request, Model model)
	{
		String result = "";
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		
		String post_code = request.getParameter("post_code");
		
		model.addAttribute("post", dao.postdetail(post_code));
		
		result = "/Main-Lounge-post-updateform.jsp";
		
		
		return result;
				
	}
	
	@RequestMapping(value = "/mainloungeupdate.action", method = RequestMethod.POST)
	public String mainLoungeUpdate(MainLoungeListDTO dto)
	{
		String result = null;
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.update(dto);
		
		result = "redirect:mainlounge.action";
		
		return result;
	}
	
	@RequestMapping(value = "/mainloungedelete.action", method = RequestMethod.GET)
	public String mainLoungeRemove(String post_code)
	{
		String result = null;
		
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.remove(post_code);
		result = "redirect:mainlounge.action";
		
		return result;
	}
	
	
	
	
	
	
	// 좋아요추가
	@RequestMapping(value = "/likeinsert.action", method = RequestMethod.GET)
	public String likeInsert(HttpServletRequest request, @RequestParam Map<String, Object> param)
	{
		String result = null;
		//String post_code = request.getParameter("post_code");
		//String user_code = request.getParameter("user_code");
		
		String user_code = (String) param.get("user_code");
		String post_code = (String) param.get("post_code");
		
		//MainLoungeListDTO dto = new MainLoungeListDTO();
		//dto.setPost_code(post_code);
		//dto.setUser_code(user_code);
		IMainLoungeListDAO dao = sqlSession.getMapper(IMainLoungeListDAO.class);
		dao.likeadd(post_code, user_code);
		
		
		// 리스트가 아니라 해당글상세로 보내야할거같은데..
		result = "redirect:/Main-Lounge-post.jsp";
		
		
		return result;
	}
}
